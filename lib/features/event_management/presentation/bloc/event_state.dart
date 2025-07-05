import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:event_check_in/features/event_management/domain/entities/event.dart';

part 'event_state.freezed.dart';

@freezed
class EventState with _$EventState {
  const factory EventState.initial() = EventInitial;
  const factory EventState.loading() = EventLoading;
  const factory EventState.loaded(
    List<Event> events, {
    EventStatus? selectedStatus,
    @Default([]) List<Event> allEvents,
  }) = EventLoaded;
  const factory EventState.error(String message) = EventError;
}