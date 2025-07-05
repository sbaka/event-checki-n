import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:event_check_in/features/event_management/domain/entities/event.dart';
import 'package:event_check_in/core/routes/app_router.gr.dart';

class EventCard extends StatelessWidget {
  final Event event;
  final int attendeesCount;
  final int checkedInCount;

  const EventCard({
    super.key,
    required this.event,
    required this.attendeesCount,
    required this.checkedInCount,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.only(bottom: 12.0),
      child: InkWell(
        onTap: () {
          // Navigate to event details
        },
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Event name and status
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      event.name,
                      style: theme.textTheme.titleLarge,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  _buildStatusChip(context),
                ],
              ),
              const SizedBox(height: 8),

              // Date and location
              Row(
                children: [
                  const Icon(Icons.calendar_today, size: 16),
                  const SizedBox(width: 8),
                  Text(
                    _formatDate(event.startDate),
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  const Icon(Icons.location_on, size: 16),
                  const SizedBox(width: 8),
                  Text(
                    event.location,
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Attendees progress
              Row(
                children: [
                  const Icon(Icons.people, size: 16),
                  const SizedBox(width: 8),
                  Text(
                    '$checkedInCount/$attendeesCount checked in',
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: LinearProgressIndicator(
                  value: attendeesCount > 0 ? checkedInCount / attendeesCount : 0,
                  minHeight: 8,
                  backgroundColor: theme.colorScheme.primaryContainer,
                ),
              ),
              const SizedBox(height: 16),

              // Action buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (event.status == const EventStatus.active() ||
                      event.status == const EventStatus.published())
                    TextButton.icon(
                      onPressed: () {
                        context.router.push(CheckInRoute(eventId: event.id));
                      },
                      icon: const Icon(Icons.qr_code_scanner),
                      label: const Text('Check In'),
                    ),
                  const SizedBox(width: 8),
                  TextButton.icon(
                    onPressed: () {
                      context.router.push(EventAnalyticsRoute(eventId: event.id));
                    },
                    icon: const Icon(Icons.analytics),
                    label: const Text('Analytics'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatusChip(BuildContext context) {
    Color color;
    String label;

    return event.status.when(
      draft: () {
        color = Colors.grey;
        label = 'Draft';
        return _buildChip(context, color, label);
      },
      published: () {
        color = Colors.blue;
        label = 'Published';
        return _buildChip(context, color, label);
      },
      active: () {
        color = Colors.green;
        label = 'Active';
        return _buildChip(context, color, label);
      },
      completed: () {
        color = Colors.grey;
        label = 'Completed';
        return _buildChip(context, color, label);
      },
      cancelled: () {
        color = Colors.red;
        label = 'Cancelled';
        return _buildChip(context, color, label);
      },
    );
  }

  Widget _buildChip(BuildContext context, Color color, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: color,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}