import 'package:flutter/material.dart';
import 'package:event_check_in/features/event_management/domain/entities/attendee.dart';

class AttendeeCard extends StatelessWidget {
  final Attendee attendee;
  final bool isCheckedIn;
  final VoidCallback? onCheckIn;
  final VoidCallback? onTap;
  final bool showCheckInButton;

  const AttendeeCard({
    super.key,
    required this.attendee,
    required this.isCheckedIn,
    this.onCheckIn,
    this.onTap,
    this.showCheckInButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              // Avatar
              CircleAvatar(
                radius: 24,
                backgroundColor: _getStatusColor(),
                child: Icon(
                  _getStatusIcon(),
                  color: Colors.white,
                ),
              ),
              
              const SizedBox(width: 16),
              
              // Attendee Info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Name
                    Text(
                      '${attendee.firstName} ${attendee.lastName}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
                    const SizedBox(height: 4),
                    
                    // Email
                    Text(
                      attendee.email,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                    
                    const SizedBox(height: 8),
                    
                    // Tags Row
                    Wrap(
                      spacing: 8,
                      runSpacing: 4,
                      children: [
                        _buildTag(
                          attendee.ticketType,
                          Colors.blue,
                        ),
                        if (attendee.isVip)
                          _buildTag(
                            'VIP',
                            Colors.amber,
                            icon: Icons.star,
                          ),
                        _buildTag(
                          _getStatusText(),
                          _getStatusColor(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              
              // Action Button
              if (showCheckInButton) ...[
                const SizedBox(width: 12),
                if (isCheckedIn)
                  const Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 32,
                  )
                else
                  ElevatedButton(
                    onPressed: onCheckIn,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('Check In'),
                  ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTag(String text, Color color, {IconData? icon}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: color.withValues(alpha: 0.3),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 14, color: color),
            const SizedBox(width: 4),
          ],
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: color,
            ),
          ),
        ],
      ),
    );
  }

  Color _getStatusColor() {
    return attendee.status.when(
      registered: () => Colors.orange,
      confirmed: () => Colors.blue,
      checkedIn: () => Colors.green,
      cancelled: () => Colors.red,
      noShow: () => Colors.grey,
    );
  }

  IconData _getStatusIcon() {
    return attendee.status.when(
      registered: () => Icons.person_add,
      confirmed: () => Icons.person,
      checkedIn: () => Icons.check,
      cancelled: () => Icons.cancel,
      noShow: () => Icons.person_off,
    );
  }

  String _getStatusText() {
    return attendee.status.when(
      registered: () => 'Registered',
      confirmed: () => 'Confirmed',
      checkedIn: () => 'Checked In',
      cancelled: () => 'Cancelled',
      noShow: () => 'No Show',
    );
  }
}