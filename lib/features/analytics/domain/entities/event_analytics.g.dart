// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_analytics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventAnalyticsImpl _$$EventAnalyticsImplFromJson(Map<String, dynamic> json) =>
    _$EventAnalyticsImpl(
      eventId: json['eventId'] as String,
      eventName: json['eventName'] as String,
      totalAttendees: (json['totalAttendees'] as num).toInt(),
      checkedInCount: (json['checkedInCount'] as num).toInt(),
      checkInRate: (json['checkInRate'] as num).toDouble(),
      noShowCount: (json['noShowCount'] as num).toInt(),
      checkInsByHour: Map<String, int>.from(json['checkInsByHour'] as Map),
      checkInsByTicketType:
          Map<String, int>.from(json['checkInsByTicketType'] as Map),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
    );

Map<String, dynamic> _$$EventAnalyticsImplToJson(
        _$EventAnalyticsImpl instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'eventName': instance.eventName,
      'totalAttendees': instance.totalAttendees,
      'checkedInCount': instance.checkedInCount,
      'checkInRate': instance.checkInRate,
      'noShowCount': instance.noShowCount,
      'checkInsByHour': instance.checkInsByHour,
      'checkInsByTicketType': instance.checkInsByTicketType,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
    };
