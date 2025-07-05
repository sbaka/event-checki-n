import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:event_check_in/core/di/injection.dart';
import 'package:event_check_in/features/event_management/domain/entities/event.dart';
import 'package:event_check_in/features/event_management/presentation/bloc/event_bloc.dart';
import 'package:event_check_in/features/event_management/presentation/bloc/event_event.dart';
import 'package:event_check_in/features/event_management/presentation/bloc/event_state.dart';
import 'package:event_check_in/features/event_management/presentation/widgets/event_card.dart';
import 'package:event_check_in/features/event_management/presentation/widgets/event_filter_chip.dart';
import 'package:event_check_in/core/routes/app_router.gr.dart';

@RoutePage()
class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  EventStatus? _selectedStatus;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<EventBloc>()..add(const EventEvent.loadEvents()),
      child: _buildContent(),
    );
  }

  Widget _buildContent() {
    return BlocBuilder<EventBloc, EventState>(
      builder: (context, state) {
        return state.when(
          initial: _buildLoadingScaffold,
          loading: _buildLoadingScaffold,
          loaded: (events, selectedStatus, allEvents) =>
              _buildLoadedScaffold(events),
          error: _buildErrorScaffold,
        );
      },
    );
  }

  Widget _buildLoadingScaffold() {
    return Scaffold(
      appBar: AppBar(title: const Text('My Events')),
      body: const Center(child: CircularProgressIndicator()),
    );
  }

  Widget _buildErrorScaffold(String message) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Events')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Error: $message'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                context.read<EventBloc>().add(const EventEvent.loadEvents());
              },
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoadedScaffold(List<Event> events) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Events'),
        actions: [
          IconButton(
            icon: const Icon(Icons.sync),
            onPressed: () {
              context.read<EventBloc>().add(const EventEvent.loadEvents());
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Status filter chips
          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  EventFilterChip(
                    label: 'All',
                    isSelected: _selectedStatus == null,
                    onTap: () {
                      setState(() {
                        _selectedStatus = null;
                      });
                      context
                          .read<EventBloc>()
                          .add(const EventEvent.filterEvents(null));
                    },
                  ),
                  EventFilterChip(
                    label: 'Draft',
                    isSelected: _selectedStatus == const EventStatus.draft(),
                    onTap: () {
                      setState(() {
                        _selectedStatus = const EventStatus.draft();
                      });
                      context.read<EventBloc>().add(
                            const EventEvent.filterEvents(EventStatus.draft()),
                          );
                    },
                  ),
                  EventFilterChip(
                    label: 'Published',
                    isSelected:
                        _selectedStatus == const EventStatus.published(),
                    onTap: () {
                      setState(() {
                        _selectedStatus = const EventStatus.published();
                      });
                      context.read<EventBloc>().add(
                            const EventEvent.filterEvents(
                              EventStatus.published(),
                            ),
                          );
                    },
                  ),
                  EventFilterChip(
                    label: 'Active',
                    isSelected: _selectedStatus == const EventStatus.active(),
                    onTap: () {
                      setState(() {
                        _selectedStatus = const EventStatus.active();
                      });
                      context.read<EventBloc>().add(
                            const EventEvent.filterEvents(EventStatus.active()),
                          );
                    },
                  ),
                  EventFilterChip(
                    label: 'Completed',
                    isSelected:
                        _selectedStatus == const EventStatus.completed(),
                    onTap: () {
                      setState(() {
                        _selectedStatus = const EventStatus.completed();
                      });
                      context.read<EventBloc>().add(
                            const EventEvent.filterEvents(
                              EventStatus.completed(),
                            ),
                          );
                    },
                  ),
                ],
              ),
            ),
          ),

          // Events list
          Expanded(
            child: events.isEmpty
                ? const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.event, size: 64, color: Colors.grey),
                        SizedBox(height: 16),
                        Text(
                          'No events found',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Create your first event to get started',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: events.length,
                    itemBuilder: (context, index) {
                      final event = events[index];
                      // Mock data for attendees - in real app this would come from repository
                      return EventCard(
                        event: event,
                        attendeesCount: 100, // Mock data
                        checkedInCount: 45, // Mock data
                      );
                    },
                  ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.push(EventFormRoute());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
