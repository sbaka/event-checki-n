import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:event_check_in/core/di/injection.dart';
import 'package:event_check_in/features/check_in/presentation/bloc/check_in_bloc.dart';
import 'package:event_check_in/features/check_in/presentation/bloc/check_in_event.dart';
import 'package:event_check_in/features/check_in/presentation/bloc/check_in_state.dart';
import 'package:event_check_in/features/event_management/domain/entities/check_in.dart';
import 'package:event_check_in/features/event_management/domain/entities/attendee.dart';

@RoutePage()
class ManualCheckInPage extends StatefulWidget {
  const ManualCheckInPage({
    super.key,
    @PathParam('eventId') required this.eventId,
  });
  final String eventId;

  @override
  State<ManualCheckInPage> createState() => _ManualCheckInPageState();
}

class _ManualCheckInPageState extends State<ManualCheckInPage> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CheckInBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Manual Check-In: Event ${widget.eventId}'),
          elevation: 0,
        ),
        body: BlocConsumer<CheckInBloc, CheckInState>(
          listener: (context, state) {
            state.maybeWhen(
              checkInSuccess: (checkIn, attendee) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      '${attendee.firstName} ${attendee.lastName} '
                      'checked in successfully!',
                    ),
                    backgroundColor: Colors.green,
                    duration: const Duration(seconds: 3),
                  ),
                );

                // Clear search and refocus
                _searchController.clear();
                _searchFocusNode.requestFocus();

                // Reset state after showing success
                context.read<CheckInBloc>().add(
                      const CheckInEvent.resetState(),
                    );
              },
              checkInFailure: (failure, attendee) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(failure.message),
                    backgroundColor: Colors.red,
                    duration: const Duration(seconds: 3),
                  ),
                );
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            return Column(
              children: [
                // Search section
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(0, 2),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Search Attendee',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      TextField(
                        controller: _searchController,
                        focusNode: _searchFocusNode,
                        autofocus: true,
                        decoration: InputDecoration(
                          hintText: 'Search by name or email...',
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          fillColor: Theme.of(context).scaffoldBackgroundColor,
                        ),
                        onChanged: (query) {
                          if (query.isNotEmpty) {
                            context.read<CheckInBloc>().add(
                                  CheckInEvent.searchAttendee(
                                      query, widget.eventId),
                                );
                          } else {
                            context.read<CheckInBloc>().add(
                                  const CheckInEvent.resetState(),
                                );
                          }
                        },
                      ),
                    ],
                  ),
                ),

                // Results section
                Expanded(
                  child: state.when(
                    initial: () => const _EmptySearchState(),
                    processing: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    attendeesLoaded: (attendees) => _AttendeesList(
                      attendees: attendees,
                      eventId: widget.eventId,
                    ),
                    error: (failure) => _ErrorState(message: failure.message),
                    scanning: () => const SizedBox.shrink(),
                    qrValidated: (_) => const SizedBox.shrink(),
                    checkInSuccess: (_, __) => const SizedBox.shrink(),
                    checkInFailure: (_, __) => const SizedBox.shrink(),
                    checkInsLoaded: (_) => const SizedBox.shrink(),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _EmptySearchState extends StatelessWidget {
  const _EmptySearchState();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.search,
            size: 64,
            color: Colors.grey[400],
          ),
          const SizedBox(height: 16),
          Text(
            'Search for attendees',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Enter a name or email to find attendees',
            style: TextStyle(
              color: Colors.grey[500],
            ),
          ),
        ],
      ),
    );
  }
}

class _AttendeesList extends StatelessWidget {
  const _AttendeesList({
    required this.attendees,
    required this.eventId,
  });
  final List<Attendee> attendees;
  final String eventId;

  @override
  Widget build(BuildContext context) {
    if (attendees.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.person_off,
              size: 64,
              color: Colors.grey[400],
            ),
            const SizedBox(height: 16),
            Text(
              'No attendees found',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Try a different search term',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: attendees.length,
      itemBuilder: (context, index) {
        final attendee = attendees[index];
        final isCheckedIn = attendee.status.when(
          registered: () => false,
          confirmed: () => false,
          checkedIn: () => true,
          cancelled: () => false,
          noShow: () => false,
        );

        return Card(
          margin: const EdgeInsets.only(bottom: 8),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: isCheckedIn ? Colors.green : Colors.blue,
              child: Icon(
                isCheckedIn ? Icons.check : Icons.person,
                color: Colors.white,
              ),
            ),
            title: Text(
              '${attendee.firstName} ${attendee.lastName}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(attendee.email),
                const SizedBox(height: 4),
                Text(
                  'Type: ${attendee.ticketType}',
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
            trailing: isCheckedIn
                ? const Chip(
                    label: Text(
                      'Checked In',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    backgroundColor: Colors.green,
                  )
                : ElevatedButton(
                    onPressed: () {
                      context.read<CheckInBloc>().add(
                            CheckInEvent.checkInAttendee(
                              attendee.id,
                              eventId,
                              const CheckInMethod.manual(),
                            ),
                          );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                    ),
                    child: const Text('Check In'),
                  ),
            isThreeLine: true,
          ),
        );
      },
    );
  }
}

class _ErrorState extends StatelessWidget {
  const _ErrorState({required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            size: 64,
            color: Colors.red[400],
          ),
          const SizedBox(height: 16),
          Text(
            'Error',
            style: TextStyle(
              fontSize: 18,
              color: Colors.red[600],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            message,
            style: TextStyle(
              color: Colors.grey[600],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
