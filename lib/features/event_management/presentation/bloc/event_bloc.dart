import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:event_check_in/features/event_management/domain/entities/event.dart';
import 'package:event_check_in/features/event_management/domain/usecases/create_event_usecase.dart';
import 'package:event_check_in/features/event_management/domain/usecases/get_events_usecase.dart';
import 'package:event_check_in/features/event_management/domain/usecases/update_event_usecase.dart';
import 'package:event_check_in/features/event_management/domain/usecases/delete_event_usecase.dart';
import 'package:event_check_in/features/event_management/presentation/bloc/event_event.dart';
import 'package:event_check_in/features/event_management/presentation/bloc/event_state.dart';

@injectable
class EventBloc extends Bloc<EventEvent, EventState> {

  EventBloc(
    this._createEventUseCase,
    this._getEventsUseCase,
    this._updateEventUseCase,
    this._deleteEventUseCase,
  ) : super(const EventState.initial()) {
    on<EventEvent>((event, emit) async {
      await event.when(
        loadEvents: () => _onLoadEvents(emit),
        createEvent: (event) => _onCreateEvent(event, emit),
        updateEvent: (event) => _onUpdateEvent(event, emit),
        deleteEvent: (eventId) => _onDeleteEvent(eventId, emit),
        filterEvents: (status) => _onFilterEvents(status, emit),
      );
    });
  }
  final CreateEventUseCase _createEventUseCase;
  final GetEventsUseCase _getEventsUseCase;
  final UpdateEventUseCase _updateEventUseCase;
  final DeleteEventUseCase _deleteEventUseCase;

  Future<void> _onLoadEvents(Emitter<EventState> emit) async {
    emit(const EventState.loading());
    
    final result = await _getEventsUseCase();
    
    result.fold(
      (failure) => emit(EventState.error(failure.message)),
      (events) => emit(EventState.loaded(events)),
    );
  }

  Future<void> _onCreateEvent(Event event, Emitter<EventState> emit) async {
    emit(const EventState.loading());
    
    final result = await _createEventUseCase(event);
    
    result.fold(
      (failure) => emit(EventState.error(failure.message)),
      (createdEvent) {
        add(const EventEvent.loadEvents());
      },
    );
  }

  Future<void> _onUpdateEvent(Event event, Emitter<EventState> emit) async {
    emit(const EventState.loading());
    
    final result = await _updateEventUseCase(event);
    
    result.fold(
      (failure) => emit(EventState.error(failure.message)),
      (updatedEvent) {
        add(const EventEvent.loadEvents());
      },
    );
  }

  Future<void> _onDeleteEvent(String eventId, Emitter<EventState> emit) async {
    emit(const EventState.loading());
    
    final result = await _deleteEventUseCase(eventId);
    
    result.fold(
      (failure) => emit(EventState.error(failure.message)),
      (_) {
        add(const EventEvent.loadEvents());
      },
    );
  }

  Future<void> _onFilterEvents(
    EventStatus? status, 
    Emitter<EventState> emit,
  ) async {
    final currentState = state;
    
    if (currentState is EventLoaded) {
      if (status == null) {
        emit(EventState.loaded(currentState.allEvents));
      } else {
        final filteredEvents = currentState.allEvents
            .where((event) => event.status == status)
            .toList();
        emit(EventState.loaded(filteredEvents, selectedStatus: status));
      }
    }
  }
}