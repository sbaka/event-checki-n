// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_in.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckInImpl _$$CheckInImplFromJson(Map<String, dynamic> json) =>
    _$CheckInImpl(
      id: json['id'] as String,
      eventId: json['eventId'] as String,
      attendeeId: json['attendeeId'] as String,
      checkInTime: DateTime.parse(json['checkInTime'] as String),
      method: CheckInMethod.fromJson(json['method'] as Map<String, dynamic>),
      status: CheckInStatus.fromJson(json['status'] as Map<String, dynamic>),
      deviceId: json['deviceId'] as String,
      operatorId: json['operatorId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      notes: json['notes'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$CheckInImplToJson(_$CheckInImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'eventId': instance.eventId,
      'attendeeId': instance.attendeeId,
      'checkInTime': instance.checkInTime.toIso8601String(),
      'method': instance.method,
      'status': instance.status,
      'deviceId': instance.deviceId,
      'operatorId': instance.operatorId,
      'createdAt': instance.createdAt.toIso8601String(),
      'notes': instance.notes,
      'metadata': instance.metadata,
    };

_$QrCodeImpl _$$QrCodeImplFromJson(Map<String, dynamic> json) => _$QrCodeImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$QrCodeImplToJson(_$QrCodeImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ManualImpl _$$ManualImplFromJson(Map<String, dynamic> json) => _$ManualImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ManualImplToJson(_$ManualImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$BulkImpl _$$BulkImplFromJson(Map<String, dynamic> json) => _$BulkImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BulkImplToJson(_$BulkImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$PendingImpl _$$PendingImplFromJson(Map<String, dynamic> json) =>
    _$PendingImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PendingImplToJson(_$PendingImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$CompletedImpl _$$CompletedImplFromJson(Map<String, dynamic> json) =>
    _$CompletedImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CompletedImplToJson(_$CompletedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$FailedImpl _$$FailedImplFromJson(Map<String, dynamic> json) => _$FailedImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FailedImplToJson(_$FailedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
