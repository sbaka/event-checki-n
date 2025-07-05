import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

@RoutePage()
class CheckInPage extends StatefulWidget {
  final String eventId;

  const CheckInPage({
    super.key,
    @PathParam('eventId') required this.eventId,
  });

  @override
  State<CheckInPage> createState() => _CheckInPageState();
}

class _CheckInPageState extends State<CheckInPage> {
  final MobileScannerController _scannerController = MobileScannerController();
  bool _isFlashOn = false;
  bool _isFrontCamera = false;
  bool _isProcessing = false;

  // This would normally come from a bloc
  String? _lastScannedCode;
  String? _attendeeName;
  bool _isSuccess = false;

  @override
  void dispose() {
    _scannerController.dispose();
    super.dispose();
  }

  void _onDetect(BarcodeCapture capture) {
    if (_isProcessing) return;

    final List<Barcode> barcodes = capture.barcodes;
    if (barcodes.isNotEmpty) {
      final Barcode barcode = barcodes.first;
      final String? code = barcode.rawValue;

      if (code != null && code != _lastScannedCode) {
        setState(() {
          _isProcessing = true;
          _lastScannedCode = code;
        });

        // Process the QR code
        _processQrCode(code);
      }
    }
  }

  Future<void> _processQrCode(String code) async {
    // This would normally call a bloc/usecase
    // For demo, we'll simulate a network request
    await Future.delayed(const Duration(seconds: 1));

    // Parse the code and get attendee info
    // For demo, we'll just use a mock response
    setState(() {
      _attendeeName = 'John Doe';
      _isSuccess = true;
    });

    // Show result for a few seconds, then reset
    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      _isProcessing = false;
      _attendeeName = null;
      _isSuccess = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check-In: Event ${widget.eventId}'),
        actions: [
          IconButton(
            icon: Icon(_isFlashOn ? Icons.flash_on : Icons.flash_off),
            onPressed: () {
              setState(() {
                _isFlashOn = !_isFlashOn;
                _scannerController.toggleTorch();
              });
            },
          ),
          IconButton(
            icon: Icon(_isFrontCamera ? Icons.camera_front : Icons.camera_rear),
            onPressed: () {
              setState(() {
                _isFrontCamera = !_isFrontCamera;
                _scannerController.switchCamera();
              });
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // QR Scanner
                MobileScanner(
                  controller: _scannerController,
                  onDetect: _onDetect,
                ),

                // Scanning overlay
                _buildScannerOverlay(),

                // Processing indicator
                if (_isProcessing)
                  Container(
                    color: Colors.black54,
                    child: Center(
                      child: Card(
                        margin: const EdgeInsets.all(24),
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (_attendeeName != null)
                                Column(
                                  children: [
                                    Icon(
                                      _isSuccess
                                          ? Icons.check_circle
                                          : Icons.error,
                                      color: _isSuccess
                                          ? Colors.green
                                          : Colors.red,
                                      size: 48,
                                    ),
                                    const SizedBox(height: 16),
                                    Text(
                                      _attendeeName!,
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      _isSuccess
                                          ? 'Successfully checked in!'
                                          : 'Failed to check in',
                                      style: TextStyle(
                                        color: _isSuccess
                                            ? Colors.green
                                            : Colors.red,
                                      ),
                                    ),
                                  ],
                                )
                              else
                                Column(
                                  children: const [
                                    CircularProgressIndicator(),
                                    SizedBox(height: 16),
                                    Text('Processing...'),
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),

          // Bottom section with manual entry and batch options
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Text(
                  'Scan attendee QR code',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        // Navigate to manual check-in
                        // context.router.push(ManualCheckInRoute(eventId: widget.eventId));
                      },
                      icon: const Icon(Icons.search),
                      label: const Text('Manual Entry'),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        // Navigate to batch check-in
                        // context.router.push(BatchCheckInRoute(eventId: widget.eventId));
                      },
                      icon: const Icon(Icons.group_add),
                      label: const Text('Batch Mode'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildScannerOverlay() {
    return CustomPaint(
      painter: ScannerOverlayPainter(),
      child: Container(),
    );
  }
}

class ScannerOverlayPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double scanAreaSize = size.width * 0.7;
    final double left = (size.width - scanAreaSize) / 2;
    final double top = (size.height - scanAreaSize) / 2;
    final double right = left + scanAreaSize;
    final double bottom = top + scanAreaSize;

    final Paint backgroundPaint = Paint()
      ..color = Colors.black.withOpacity(0.5);

    // Draw background overlay
    canvas.drawRect(
      Rect.fromLTWH(0, 0, size.width, size.height),
      backgroundPaint,
    );

    // Draw transparent scanning area
    canvas.drawRect(
      Rect.fromLTRB(left, top, right, bottom),
      Paint()..blendMode = BlendMode.clear,
    );

    // Draw scanning area border
    final Paint borderPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    canvas.drawRect(
      Rect.fromLTRB(left, top, right, bottom),
      borderPaint,
    );

    // Draw corner markers
    final double cornerSize = 20.0;
    final Paint cornerPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5.0;

    // Top left corner
    canvas.drawPath(
      Path()
        ..moveTo(left, top + cornerSize)
        ..lineTo(left, top)
        ..lineTo(left + cornerSize, top),
      cornerPaint,
    );

    // Top right corner
    canvas.drawPath(
      Path()
        ..moveTo(right - cornerSize, top)
        ..lineTo(right, top)
        ..lineTo(right, top + cornerSize),
      cornerPaint,
    );

    // Bottom left corner
    canvas.drawPath(
      Path()
        ..moveTo(left, bottom - cornerSize)
        ..lineTo(left, bottom)
        ..lineTo(left + cornerSize, bottom),
      cornerPaint,
    );

    // Bottom right corner
    canvas.drawPath(
      Path()
        ..moveTo(right - cornerSize, bottom)
        ..lineTo(right, bottom)
        ..lineTo(right, bottom - cornerSize),
      cornerPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
