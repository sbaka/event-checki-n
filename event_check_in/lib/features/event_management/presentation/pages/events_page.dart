import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // This would normally come from a bloc
    final events = [
      _EventItem(
        id: '1',
        name: 'Tech Conference 2023',
        date: DateTime.now().add(const Duration(days: 5)),
        location: 'Convention Center',
        attendeesCount: 500,
        checkedInCount: 0,
        status: EventStatus.upcoming,
      ),
      _EventItem(
        id: '2',
        name: 'Product Launch',
        date: DateTime.now().add(const Duration(days: 10)),
        location: 'Downtown Hotel',
        attendeesCount: 250,
        checkedInCount: 0,
        status: EventStatus.upcoming,
      ),
      _EventItem(
        id: '3',
        name: 'Team Building',
        date: DateTime.now(),
        location: 'City Park',
        attendeesCount: 50,
        checkedInCount: 32,
        status: EventStatus.active,
      ),
      _EventItem(
        id: '4',
        name: 'Marketing Workshop',
        date: DateTime.now().subtract(const Duration(days: 5)),
        location: 'Office Building',
        attendeesCount: 100,
        checkedInCount: 87,
        status: EventStatus.completed,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Events'),
        actions: [
          IconButton(
            icon: const Icon(Icons.sync),
            onPressed: () {
              // Sync events
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Status filter tabs
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _FilterChip(
                    label: 'All',
                    isSelected: true,
                    onTap: () {},
                  ),
                  _FilterChip(
                    label: 'Active',
                    isSelected: false,
                    onTap: () {},
                  ),
                  _FilterChip(
                    label: 'Upcoming',
                    isSelected: false,
                    onTap: () {},
                  ),
                  _FilterChip(
                    label: 'Completed',
                    isSelected: false,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),

          // Events list
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: events.length,
              itemBuilder: (context, index) {
                final event = events[index];
                return _EventCard(event: event);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to create event
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _FilterChip({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          decoration: BoxDecoration(
            color: isSelected
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                color: isSelected
                    ? Theme.of(context).colorScheme.onPrimary
                    : Theme.of(context).colorScheme.onPrimaryContainer,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _EventCard extends StatelessWidget {
  final _EventItem event;

  const _EventCard({required this.event});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.only(bottom: 12.0),
      child: InkWell(
        onTap: () {
          // Navigate to event details
          // context.router.push(EventDetailsRoute(eventId: event.id));
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
                    _formatDate(event.date),
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
                    '${event.checkedInCount}/${event.attendeesCount} checked in',
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              ClipRoundedRectangle(
                child: LinearProgressIndicator(
                  value: event.attendeesCount > 0
                      ? event.checkedInCount / event.attendeesCount
                      : 0,
                  minHeight: 8,
                  backgroundColor: theme.colorScheme.primaryContainer,
                ),
              ),
              const SizedBox(height: 16),

              // Action buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (event.status == EventStatus.active ||
                      event.status == EventStatus.upcoming)
                    TextButton.icon(
                      onPressed: () {
                        // Navigate to check-in
                        // context.router.push(CheckInRoute(eventId: event.id));
                      },
                      icon: const Icon(Icons.qr_code_scanner),
                      label: const Text('Check In'),
                    ),
                  const SizedBox(width: 8),
                  TextButton.icon(
                    onPressed: () {
                      // Navigate to analytics
                      // context.router.push(EventAnalyticsRoute(eventId: event.id));
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

    switch (event.status) {
      case EventStatus.upcoming:
        color = Colors.blue;
        label = 'Upcoming';
        break;
      case EventStatus.active:
        color = Colors.green;
        label = 'Active';
        break;
      case EventStatus.completed:
        color = Colors.grey;
        label = 'Completed';
        break;
    }

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
    // This would normally use intl package
    return '${date.day}/${date.month}/${date.year}';
  }
}

class ClipRoundedRectangle extends StatelessWidget {
  final Widget child;

  const ClipRoundedRectangle({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: child,
    );
  }
}

class _EventItem {
  final String id;
  final String name;
  final DateTime date;
  final String location;
  final int attendeesCount;
  final int checkedInCount;
  final EventStatus status;

  _EventItem({
    required this.id,
    required this.name,
    required this.date,
    required this.location,
    required this.attendeesCount,
    required this.checkedInCount,
    required this.status,
  });
}

enum EventStatus {
  upcoming,
  active,
  completed,
}
