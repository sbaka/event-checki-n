// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendeeImpl _$$AttendeeImplFromJson(Map<String, dynamic> json) =>
    _$AttendeeImpl(
      id: json['id'] as String,
      eventId: json['eventId'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      status: AttendeeStatus.fromJson(json['status'] as Map<String, dynamic>),
      registrationDate: DateTime.parse(json['registrationDate'] as String),
      ticketType: json['ticketType'] as String,
      qrCode: json['qrCode'] as String,
      isVip: json['isVip'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      phone: json['phone'] as String?,
      company: json['company'] as String?,
      jobTitle: json['jobTitle'] as String?,
      notes: json['notes'] as String?,
      customFields: json['customFields'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$AttendeeImplToJson(_$AttendeeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'eventId': instance.eventId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'status': instance.status,
      'registrationDate': instance.registrationDate.toIso8601String(),
      'ticketType': instance.ticketType,
      'qrCode': instance.qrCode,
      'isVip': instance.isVip,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'phone': instance.phone,
      'company': instance.company,
      'jobTitle': instance.jobTitle,
      'notes': instance.notes,
      'customFields': instance.customFields,
    };

_$RegisteredImpl _$$RegisteredImplFromJson(Map<String, dynamic> json) =>
    _$RegisteredImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RegisteredImplToJson(_$RegisteredImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ConfirmedImpl _$$ConfirmedImplFromJson(Map<String, dynamic> json) =>
    _$ConfirmedImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ConfirmedImplToJson(_$ConfirmedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$CheckedInImpl _$$CheckedInImplFromJson(Map<String, dynamic> json) =>
    _$CheckedInImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CheckedInImplToJson(_$CheckedInImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$CancelledImpl _$$CancelledImplFromJson(Map<String, dynamic> json) =>
    _$CancelledImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CancelledImplToJson(_$CancelledImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$NoShowImpl _$$NoShowImplFromJson(Map<String, dynamic> json) => _$NoShowImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NoShowImplToJson(_$NoShowImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
