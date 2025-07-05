import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:event_check_in/core/di/injection.dart';
import 'package:event_check_in/features/check_in/presentation/bloc/check_in_bloc.dart';
import 'package:event_check_in/features/check_in/presentation/bloc/check_in_event.dart';
import 'package:event_check_in/features/check_in/presentation/bloc/check_in_state.dart';
import 'package:event_check_in/features/check_in/presentation/widgets/check_in_result_widget.dart';
import 'package:event_check_in/features/event_management/domain/entities/attendee.dart';

@RoutePage()
class CheckInPage extends StatefulWidget {
  const CheckInPage({
    @PathParam('eventId') required this.eventId,
    super.key,
  });
  final String eventId;

  @override
  State<CheckInPage> createState() => _CheckInPageState();
}

class _CheckInPageState extends State<CheckInPage> {
  final MobileScannerController _scannerController = MobileScannerController();
  bool _isFlashOn = false;
  bool _isFrontCamera = false;
  String? _lastScannedCode;

  @override
  void dispose() {
    _scannerController.dispose();
    super.dispose();
  }

  void _onDetect(BarcodeCapture capture) {
    final barcodes = capture.barcodes;
    if (barcodes.isNotEmpty) {
      final barcode = barcodes.first;
      final code = barcode.rawValue;

      if (code != null && code != _lastScannedCode) {
        setState(() {
          _lastScannedCode = code;
        });

        // Process the QR code using BLoC
        context.read<CheckInBloc>().add(
              CheckInEvent.scanQrCode(code, widget.eventId),
            );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<CheckInBloc>()..add(const CheckInEvent.startScanning()),
      child: BlocConsumer<CheckInBloc, CheckInState>(
        listener: (context, state) {
          state.maybeWhen(
            checkInSuccess: (checkIn, attendee) {
              // Reset scanning after a delay
              Future.delayed(const Duration(seconds: 3), () {
                if (mounted) {
                  context.read<CheckInBloc>().add(
                        const CheckInEvent.resetState(),
                      );
                  setState(() {
                    _lastScannedCode = null;
                  });
                }
              });
            },
            checkInFailure: (failure, attendee) {
              // Reset scanning after a delay
              Future.delayed(const Duration(seconds: 3), () {
                if (mounted) {
                  context.read<CheckInBloc>().add(
                        const CheckInEvent.resetState(),
                      );
                  setState(() {
                    _lastScannedCode = null;
                  });
                }
              });
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
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
                  icon: Icon(
                    _isFrontCamera ? Icons.camera_front : Icons.camera_rear,
                  ),
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

                      // State-based overlay
                      state.when(
                        initial: () => const SizedBox.shrink(),
                        scanning: () => const SizedBox.shrink(),
                        processing: () => const ColoredBox(
                          color: Colors.black54,
                          child: Center(
                            child: Card(
                              margin: EdgeInsets.all(24),
                              child: Padding(
                                padding: EdgeInsets.all(24),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CircularProgressIndicator(),
                                    SizedBox(height: 16),
                                    Text('Processing QR Code...'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        qrValidated: (attendee) => ColoredBox(
                          color: Colors.black54,
                          child: Center(
                            child: CheckInResultWidget(
                              attendee: attendee,
                              isSuccess: false,
                              errorMessage: 'Validating...',
                            ),
                          ),
                        ),
                        checkInSuccess: (checkIn, attendee) => ColoredBox(
                          color: Colors.black54,
                          child: Center(
                            child: CheckInResultWidget(
                              attendee: attendee,
                              checkIn: checkIn,
                              isSuccess: true,
                            ),
                          ),
                        ),
                        checkInFailure: (failure, attendee) => ColoredBox(
                          color: Colors.black54,
                          child: Center(
                            child: CheckInResultWidget(
                              attendee: attendee ??
                                  Attendee(
                                    id: '',
                                    eventId: '',
                                    firstName: 'Unknown',
                                    lastName: 'User',
                                    email: '',
                                    status: const AttendeeStatus.registered(),
                                    registrationDate: DateTime.now(),
                                    ticketType: '',
                                    qrCode: '',
                                    isVip: false,
                                    createdAt: DateTime.now(),
                                    updatedAt: DateTime.now(),
                                  ),
                              isSuccess: false,
                              errorMessage: failure.message,
                            ),
                          ),
                        ),
                        attendeesLoaded: (_) => const SizedBox.shrink(),
                        checkInsLoaded: (_) => const SizedBox.shrink(),
                        error: (failure) => ColoredBox(
                          color: Colors.black54,
                          child: Center(
                            child: Card(
                              margin: const EdgeInsets.all(24),
                              child: Padding(
                                padding: const EdgeInsets.all(24),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Icon(
                                      Icons.error,
                                      color: Colors.red,
                                      size: 48,
                                    ),
                                    const SizedBox(height: 16),
                                    Text(
                                      'Error: ${failure.message}',
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: Colors.red,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
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
                              context.router.pushNamed(
                                '/events/${widget.eventId}/check-in/manual',
                              );
                            },
                            icon: const Icon(Icons.search),
                            label: const Text('Manual Entry'),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {
                              context.router.pushNamed(
                                '/events/${widget.eventId}/check-in/batch',
                              );
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
        },
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
    final scanAreaSize = size.width * 0.7;
    final left = (size.width - scanAreaSize) / 2;
    final top = (size.height - scanAreaSize) / 2;
    final right = left + scanAreaSize;
    final bottom = top + scanAreaSize;

    final backgroundPaint = Paint()..color = Colors.black.withAlpha(128);

    // Draw background overlay
    canvas
      ..drawRect(
        Rect.fromLTWH(0, 0, size.width, size.height),
        backgroundPaint,
      )

      // Draw transparent scanning area
      ..drawRect(
        Rect.fromLTRB(left, top, right, bottom),
        Paint()..blendMode = BlendMode.clear,
      );

    // Draw scanning area border
    final borderPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    canvas.drawRect(
      Rect.fromLTRB(left, top, right, bottom),
      borderPaint,
    );

    // Draw corner markers
    const cornerSize = 20.0;
    final cornerPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5.0;

    // Top left corner
    canvas
      ..drawPath(
        Path()
          ..moveTo(left, top + cornerSize)
          ..lineTo(left, top)
          ..lineTo(left + cornerSize, top),
        cornerPaint,
      )

      // Top right corner
      ..drawPath(
        Path()
          ..moveTo(right - cornerSize, top)
          ..lineTo(right, top)
          ..lineTo(right, top + cornerSize),
        cornerPaint,
      )

      // Bottom left corner
      ..drawPath(
        Path()
          ..moveTo(left, bottom - cornerSize)
          ..lineTo(left, bottom)
          ..lineTo(left + cornerSize, bottom),
        cornerPaint,
      )

      // Bottom right corner
      ..drawPath(
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
