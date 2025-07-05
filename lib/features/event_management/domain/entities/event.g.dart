// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventImpl _$$EventImplFromJson(Map<String, dynamic> json) => _$EventImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      location: json['location'] as String,
      organizerId: json['organizerId'] as String,
      status: EventStatus.fromJson(json['status'] as Map<String, dynamic>),
      isActive: json['isActive'] as bool,
      maxAttendees: (json['maxAttendees'] as num).toInt(),
      allowCheckIn: json['allowCheckIn'] as bool,
      requiresApproval: json['requiresApproval'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      imageUrl: json['imageUrl'] as String?,
      contactEmail: json['contactEmail'] as String?,
      contactPhone: json['contactPhone'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$EventImplToJson(_$EventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'location': instance.location,
      'organizerId': instance.organizerId,
      'status': instance.status,
      'isActive': instance.isActive,
      'maxAttendees': instance.maxAttendees,
      'allowCheckIn': instance.allowCheckIn,
      'requiresApproval': instance.requiresApproval,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'imageUrl': instance.imageUrl,
      'contactEmail': instance.contactEmail,
      'contactPhone': instance.contactPhone,
      'metadata': instance.metadata,
    };

_$DraftImpl _$$DraftImplFromJson(Map<String, dynamic> json) => _$DraftImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DraftImplToJson(_$DraftImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$PublishedImpl _$$PublishedImplFromJson(Map<String, dynamic> json) =>
    _$PublishedImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PublishedImplToJson(_$PublishedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ActiveImpl _$$ActiveImplFromJson(Map<String, dynamic> json) => _$ActiveImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ActiveImplToJson(_$ActiveImpl instance) =>
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

_$CancelledImpl _$$CancelledImplFromJson(Map<String, dynamic> json) =>
    _$CancelledImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CancelledImplToJson(_$CancelledImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
