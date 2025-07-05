import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:event_check_in/features/event_management/domain/entities/event.dart';

part 'event_event.freezed.dart';

@freezed
class EventEvent with _$EventEvent {
  const factory EventEvent.loadEvents() = LoadEvents;
  const factory EventEvent.createEvent(Event event) = CreateEvent;
  const factory EventEvent.updateEvent(Event event) = UpdateEvent;
  const factory EventEvent.deleteEvent(String eventId) = DeleteEvent;
  const factory EventEvent.filterEvents(EventStatus? status) = FilterEvents;
}