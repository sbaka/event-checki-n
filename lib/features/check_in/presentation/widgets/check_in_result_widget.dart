import 'package:flutter/material.dart';
import 'package:event_check_in/features/event_management/domain/entities/attendee.dart';
import 'package:event_check_in/features/event_management/domain/entities/check_in.dart';

class CheckInResultWidget extends StatelessWidget {
  final Attendee attendee;
  final CheckIn? checkIn;
  final bool isSuccess;
  final String? errorMessage;
  final VoidCallback? onDismiss;

  const CheckInResultWidget({
    super.key,
    required this.attendee,
    this.checkIn,
    required this.isSuccess,
    this.errorMessage,
    this.onDismiss,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            offset: const Offset(0, 4),
            blurRadius: 12,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Status Icon
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: isSuccess 
                    ? Colors.green.withValues(alpha: 0.1) 
                    : Colors.red.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                isSuccess ? Icons.check_circle : Icons.error,
                size: 48,
                color: isSuccess ? Colors.green : Colors.red,
              ),
            ),
            
            const SizedBox(height: 16),
            
            // Attendee Name
            Text(
              '${attendee.firstName} ${attendee.lastName}',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            
            const SizedBox(height: 8),
            
            // Email
            Text(
              attendee.email,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
              textAlign: TextAlign.center,
            ),
            
            const SizedBox(height: 16),
            
            // Status Message
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                color: isSuccess 
                    ? Colors.green.withValues(alpha: 0.1)
                    : Colors.red.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                isSuccess 
                    ? 'Successfully Checked In!' 
                    : errorMessage ?? 'Check-in Failed',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: isSuccess ? Colors.green[700] : Colors.red[700],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            
            if (isSuccess && checkIn != null) ...[
              const SizedBox(height: 16),
              
              // Check-in Details
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildDetailRow(
                      'Check-in Time',
                      _formatDateTime(checkIn!.checkInTime),
                    ),
                    const SizedBox(height: 8),
                    _buildDetailRow(
                      'Method',
                      checkIn!.method.when(
                        qrCode: () => 'QR Code',
                        manual: () => 'Manual',
                        bulk: () => 'Bulk',
                      ),
                    ),
                    const SizedBox(height: 8),
                    _buildDetailRow(
                      'Ticket Type',
                      attendee.ticketType,
                    ),
                    if (attendee.isVip) ...[
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 16,
                            color: Colors.amber[600],
                          ),
                          const SizedBox(width: 4),
                          Text(
                            'VIP Guest',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.amber[600],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
            ],
            
            if (onDismiss != null) ...[
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onDismiss,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    backgroundColor: isSuccess ? Colors.green : Colors.red,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text('Continue'),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 100,
          child: Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.grey[600],
            ),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  String _formatDateTime(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year} '
           '${dateTime.hour.toString().padLeft(2, '0')}:'
           '${dateTime.minute.toString().padLeft(2, '0')}';
  }
}