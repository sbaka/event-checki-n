// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginRequestImpl _$$LoginRequestImplFromJson(Map<String, dynamic> json) =>
    _$LoginRequestImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$LoginRequestImplToJson(_$LoginRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

_$LoginResponseImpl _$$LoginResponseImplFromJson(Map<String, dynamic> json) =>
    _$LoginResponseImpl(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
      tokenType: json['token_type'] as String?,
      user: UserResponse.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'token_type': instance.tokenType,
      'user': instance.user,
    };

_$UserResponseImpl _$$UserResponseImplFromJson(Map<String, dynamic> json) =>
    _$UserResponseImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      fullName: json['full_name'] as String,
      phone: json['phone'] as String?,
      profileImage: json['profile_image'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$UserResponseImplToJson(_$UserResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'full_name': instance.fullName,
      'phone': instance.phone,
      'profile_image': instance.profileImage,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

_$RefreshTokenRequestImpl _$$RefreshTokenRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$RefreshTokenRequestImpl(
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$RefreshTokenRequestImplToJson(
        _$RefreshTokenRequestImpl instance) =>
    <String, dynamic>{
      'refresh_token': instance.refreshToken,
    };

_$RefreshTokenResponseImpl _$$RefreshTokenResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RefreshTokenResponseImpl(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
      tokenType: json['token_type'] as String?,
    );

Map<String, dynamic> _$$RefreshTokenResponseImplToJson(
        _$RefreshTokenResponseImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'token_type': instance.tokenType,
    };

_$EventResponseImpl _$$EventResponseImplFromJson(Map<String, dynamic> json) =>
    _$EventResponseImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      startDate: DateTime.parse(json['start_date'] as String),
      endDate: DateTime.parse(json['end_date'] as String),
      location: json['location'] as String,
      organizerId: json['organizer_id'] as String,
      status: $enumDecode(_$EventStatusEnumMap, json['status']),
      maxAttendees: (json['max_attendees'] as num?)?.toInt(),
      allowCheckIn: json['allow_check_in'] as bool,
      requiresApproval: json['requires_approval'] as bool,
      imageUrl: json['image_url'] as String?,
      contactEmail: json['contact_email'] as String?,
      contactPhone: json['contact_phone'] as String?,
      eventMetadata: json['event_metadata'] as Map<String, dynamic>?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$EventResponseImplToJson(_$EventResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'start_date': instance.startDate.toIso8601String(),
      'end_date': instance.endDate.toIso8601String(),
      'location': instance.location,
      'organizer_id': instance.organizerId,
      'status': _$EventStatusEnumMap[instance.status]!,
      'max_attendees': instance.maxAttendees,
      'allow_check_in': instance.allowCheckIn,
      'requires_approval': instance.requiresApproval,
      'image_url': instance.imageUrl,
      'contact_email': instance.contactEmail,
      'contact_phone': instance.contactPhone,
      'event_metadata': instance.eventMetadata,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

const _$EventStatusEnumMap = {
  EventStatus.draft: 'draft',
  EventStatus.published: 'published',
  EventStatus.active: 'active',
  EventStatus.completed: 'completed',
  EventStatus.cancelled: 'cancelled',
};

_$EventCreateRequestImpl _$$EventCreateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$EventCreateRequestImpl(
      name: json['name'] as String,
      description: json['description'] as String?,
      startDate: DateTime.parse(json['start_date'] as String),
      endDate: DateTime.parse(json['end_date'] as String),
      location: json['location'] as String,
      maxAttendees: (json['max_attendees'] as num?)?.toInt(),
      allowCheckIn: json['allow_check_in'] as bool?,
      requiresApproval: json['requires_approval'] as bool?,
      imageUrl: json['image_url'] as String?,
      contactEmail: json['contact_email'] as String?,
      contactPhone: json['contact_phone'] as String?,
      eventMetadata: json['event_metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$EventCreateRequestImplToJson(
        _$EventCreateRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'start_date': instance.startDate.toIso8601String(),
      'end_date': instance.endDate.toIso8601String(),
      'location': instance.location,
      'max_attendees': instance.maxAttendees,
      'allow_check_in': instance.allowCheckIn,
      'requires_approval': instance.requiresApproval,
      'image_url': instance.imageUrl,
      'contact_email': instance.contactEmail,
      'contact_phone': instance.contactPhone,
      'event_metadata': instance.eventMetadata,
    };

_$EventListResponseImpl _$$EventListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$EventListResponseImpl(
      events: (json['events'] as List<dynamic>)
          .map((e) => EventResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      totalPages: (json['total_pages'] as num).toInt(),
      hasNext: json['has_next'] as bool,
      hasPrevious: json['has_previous'] as bool,
    );

Map<String, dynamic> _$$EventListResponseImplToJson(
        _$EventListResponseImpl instance) =>
    <String, dynamic>{
      'events': instance.events,
      'total': instance.total,
      'page': instance.page,
      'size': instance.size,
      'total_pages': instance.totalPages,
      'has_next': instance.hasNext,
      'has_previous': instance.hasPrevious,
    };

_$AttendeeResponseImpl _$$AttendeeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendeeResponseImpl(
      id: json['id'] as String,
      eventId: json['event_id'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      fullName: json['full_name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String?,
      status: $enumDecode(_$AttendeeStatusEnumMap, json['status']),
      registrationDate: DateTime.parse(json['registration_date'] as String),
      confirmationDate: json['confirmation_date'] == null
          ? null
          : DateTime.parse(json['confirmation_date'] as String),
      checkInDate: json['check_in_date'] == null
          ? null
          : DateTime.parse(json['check_in_date'] as String),
      qrCode: json['qr_code'] as String?,
      notes: json['notes'] as String?,
      customFields: json['custom_fields'] as Map<String, dynamic>?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$AttendeeResponseImplToJson(
        _$AttendeeResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event_id': instance.eventId,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'full_name': instance.fullName,
      'email': instance.email,
      'phone': instance.phone,
      'status': _$AttendeeStatusEnumMap[instance.status]!,
      'registration_date': instance.registrationDate.toIso8601String(),
      'confirmation_date': instance.confirmationDate?.toIso8601String(),
      'check_in_date': instance.checkInDate?.toIso8601String(),
      'qr_code': instance.qrCode,
      'notes': instance.notes,
      'custom_fields': instance.customFields,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

const _$AttendeeStatusEnumMap = {
  AttendeeStatus.registered: 'registered',
  AttendeeStatus.confirmed: 'confirmed',
  AttendeeStatus.checkedIn: 'checkedIn',
  AttendeeStatus.cancelled: 'cancelled',
  AttendeeStatus.noShow: 'noShow',
};

_$AttendeeListResponseImpl _$$AttendeeListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendeeListResponseImpl(
      attendees: (json['attendees'] as List<dynamic>)
          .map((e) => AttendeeResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      totalPages: (json['total_pages'] as num).toInt(),
      hasNext: json['has_next'] as bool,
      hasPrevious: json['has_previous'] as bool,
      stats: json['stats'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$AttendeeListResponseImplToJson(
        _$AttendeeListResponseImpl instance) =>
    <String, dynamic>{
      'attendees': instance.attendees,
      'total': instance.total,
      'page': instance.page,
      'size': instance.size,
      'total_pages': instance.totalPages,
      'has_next': instance.hasNext,
      'has_previous': instance.hasPrevious,
      'stats': instance.stats,
    };

_$AttendeeStatsResponseImpl _$$AttendeeStatsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendeeStatsResponseImpl(
      eventId: json['event_id'] as String,
      total: (json['total'] as num).toInt(),
      registered: (json['registered'] as num).toInt(),
      confirmed: (json['confirmed'] as num).toInt(),
      checkedIn: (json['checked_in'] as num).toInt(),
      cancelled: (json['cancelled'] as num).toInt(),
      noShow: (json['no_show'] as num).toInt(),
      checkInRate: (json['check_in_rate'] as num).toDouble(),
    );

Map<String, dynamic> _$$AttendeeStatsResponseImplToJson(
        _$AttendeeStatsResponseImpl instance) =>
    <String, dynamic>{
      'event_id': instance.eventId,
      'total': instance.total,
      'registered': instance.registered,
      'confirmed': instance.confirmed,
      'checked_in': instance.checkedIn,
      'cancelled': instance.cancelled,
      'no_show': instance.noShow,
      'check_in_rate': instance.checkInRate,
    };

_$QRCodeValidateRequestImpl _$$QRCodeValidateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$QRCodeValidateRequestImpl(
      qrCode: json['qr_code'] as String,
    );

Map<String, dynamic> _$$QRCodeValidateRequestImplToJson(
        _$QRCodeValidateRequestImpl instance) =>
    <String, dynamic>{
      'qr_code': instance.qrCode,
    };

_$QRCodeValidateResponseImpl _$$QRCodeValidateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$QRCodeValidateResponseImpl(
      valid: json['valid'] as bool,
      attendeeId: json['attendee_id'] as String?,
      eventId: json['event_id'] as String?,
      attendeeName: json['attendee_name'] as String?,
      eventName: json['event_name'] as String?,
      message: json['message'] as String,
      alreadyCheckedIn: json['already_checked_in'] as bool?,
    );

Map<String, dynamic> _$$QRCodeValidateResponseImplToJson(
        _$QRCodeValidateResponseImpl instance) =>
    <String, dynamic>{
      'valid': instance.valid,
      'attendee_id': instance.attendeeId,
      'event_id': instance.eventId,
      'attendee_name': instance.attendeeName,
      'event_name': instance.eventName,
      'message': instance.message,
      'already_checked_in': instance.alreadyCheckedIn,
    };

_$MessageResponseImpl _$$MessageResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageResponseImpl(
      message: json['message'] as String,
    );

Map<String, dynamic> _$$MessageResponseImplToJson(
        _$MessageResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$ValidationErrorImpl _$$ValidationErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidationErrorImpl(
      loc: json['loc'] as String,
      msg: json['msg'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$ValidationErrorImplToJson(
        _$ValidationErrorImpl instance) =>
    <String, dynamic>{
      'loc': instance.loc,
      'msg': instance.msg,
      'type': instance.type,
    };

_$HTTPValidationErrorImpl _$$HTTPValidationErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$HTTPValidationErrorImpl(
      detail: (json['detail'] as List<dynamic>)
          .map((e) => ValidationError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HTTPValidationErrorImplToJson(
        _$HTTPValidationErrorImpl instance) =>
    <String, dynamic>{
      'detail': instance.detail,
    };
