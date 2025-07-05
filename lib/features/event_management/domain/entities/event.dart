import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
class Event with _$Event {
  const factory Event({
    required String id,
    required String name,
    required String description,
    required DateTime startDate,
    required DateTime endDate,
    required String location,
    required String organizerId,
    required EventStatus status,
    required bool isActive,
    required int maxAttendees,
    required bool allowCheckIn,
    required bool requiresApproval,
    required DateTime createdAt,
    required DateTime updatedAt,
    String? imageUrl,
    String? contactEmail,
    String? contactPhone,
    Map<String, dynamic>? metadata,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}

@freezed
class EventStatus with _$EventStatus {
  const factory EventStatus.draft() = _Draft;
  const factory EventStatus.published() = _Published;
  const factory EventStatus.active() = _Active;
  const factory EventStatus.completed() = _Completed;
  const factory EventStatus.cancelled() = _Cancelled;

  factory EventStatus.fromJson(Map<String, dynamic> json) => _$EventStatusFromJson(json);
}