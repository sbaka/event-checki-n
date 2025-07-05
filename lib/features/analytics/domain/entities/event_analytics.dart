import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_analytics.freezed.dart';
part 'event_analytics.g.dart';

@freezed
class EventAnalytics with _$EventAnalytics {
  const factory EventAnalytics({
    required String eventId,
    required String eventName,
    required int totalAttendees,
    required int checkedInCount,
    required double checkInRate,
    required int noShowCount,
    required Map<String, int> checkInsByHour,
    required Map<String, int> checkInsByTicketType,
    required DateTime lastUpdated,
  }) = _EventAnalytics;

  factory EventAnalytics.fromJson(Map<String, dynamic> json) => _$EventAnalyticsFromJson(json);
}