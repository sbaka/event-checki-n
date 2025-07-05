// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Attendee _$AttendeeFromJson(Map<String, dynamic> json) {
  return _Attendee.fromJson(json);
}

/// @nodoc
mixin _$Attendee {
  String get id => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  AttendeeStatus get status => throw _privateConstructorUsedError;
  DateTime get registrationDate => throw _privateConstructorUsedError;
  String get ticketType => throw _privateConstructorUsedError;
  String get qrCode => throw _privateConstructorUsedError;
  bool get isVip => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;
  String? get jobTitle => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  Map<String, dynamic>? get customFields => throw _privateConstructorUsedError;

  /// Serializes this Attendee to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Attendee
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendeeCopyWith<Attendee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendeeCopyWith<$Res> {
  factory $AttendeeCopyWith(Attendee value, $Res Function(Attendee) then) =
      _$AttendeeCopyWithImpl<$Res, Attendee>;
  @useResult
  $Res call(
      {String id,
      String eventId,
      String firstName,
      String lastName,
      String email,
      AttendeeStatus status,
      DateTime registrationDate,
      String ticketType,
      String qrCode,
      bool isVip,
      DateTime createdAt,
      DateTime updatedAt,
      String? phone,
      String? company,
      String? jobTitle,
      String? notes,
      Map<String, dynamic>? customFields});

  $AttendeeStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$AttendeeCopyWithImpl<$Res, $Val extends Attendee>
    implements $AttendeeCopyWith<$Res> {
  _$AttendeeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Attendee
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? status = null,
    Object? registrationDate = null,
    Object? ticketType = null,
    Object? qrCode = null,
    Object? isVip = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? phone = freezed,
    Object? company = freezed,
    Object? jobTitle = freezed,
    Object? notes = freezed,
    Object? customFields = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AttendeeStatus,
      registrationDate: null == registrationDate
          ? _value.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ticketType: null == ticketType
          ? _value.ticketType
          : ticketType // ignore: cast_nullable_to_non_nullable
              as String,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      isVip: null == isVip
          ? _value.isVip
          : isVip // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      customFields: freezed == customFields
          ? _value.customFields
          : customFields // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  /// Create a copy of Attendee
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendeeStatusCopyWith<$Res> get status {
    return $AttendeeStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AttendeeImplCopyWith<$Res>
    implements $AttendeeCopyWith<$Res> {
  factory _$$AttendeeImplCopyWith(
          _$AttendeeImpl value, $Res Function(_$AttendeeImpl) then) =
      __$$AttendeeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String eventId,
      String firstName,
      String lastName,
      String email,
      AttendeeStatus status,
      DateTime registrationDate,
      String ticketType,
      String qrCode,
      bool isVip,
      DateTime createdAt,
      DateTime updatedAt,
      String? phone,
      String? company,
      String? jobTitle,
      String? notes,
      Map<String, dynamic>? customFields});

  @override
  $AttendeeStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$AttendeeImplCopyWithImpl<$Res>
    extends _$AttendeeCopyWithImpl<$Res, _$AttendeeImpl>
    implements _$$AttendeeImplCopyWith<$Res> {
  __$$AttendeeImplCopyWithImpl(
      _$AttendeeImpl _value, $Res Function(_$AttendeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Attendee
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? status = null,
    Object? registrationDate = null,
    Object? ticketType = null,
    Object? qrCode = null,
    Object? isVip = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? phone = freezed,
    Object? company = freezed,
    Object? jobTitle = freezed,
    Object? notes = freezed,
    Object? customFields = freezed,
  }) {
    return _then(_$AttendeeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AttendeeStatus,
      registrationDate: null == registrationDate
          ? _value.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ticketType: null == ticketType
          ? _value.ticketType
          : ticketType // ignore: cast_nullable_to_non_nullable
              as String,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      isVip: null == isVip
          ? _value.isVip
          : isVip // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      customFields: freezed == customFields
          ? _value._customFields
          : customFields // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendeeImpl implements _Attendee {
  const _$AttendeeImpl(
      {required this.id,
      required this.eventId,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.status,
      required this.registrationDate,
      required this.ticketType,
      required this.qrCode,
      required this.isVip,
      required this.createdAt,
      required this.updatedAt,
      this.phone,
      this.company,
      this.jobTitle,
      this.notes,
      final Map<String, dynamic>? customFields})
      : _customFields = customFields;

  factory _$AttendeeImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendeeImplFromJson(json);

  @override
  final String id;
  @override
  final String eventId;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final AttendeeStatus status;
  @override
  final DateTime registrationDate;
  @override
  final String ticketType;
  @override
  final String qrCode;
  @override
  final bool isVip;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String? phone;
  @override
  final String? company;
  @override
  final String? jobTitle;
  @override
  final String? notes;
  final Map<String, dynamic>? _customFields;
  @override
  Map<String, dynamic>? get customFields {
    final value = _customFields;
    if (value == null) return null;
    if (_customFields is EqualUnmodifiableMapView) return _customFields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Attendee(id: $id, eventId: $eventId, firstName: $firstName, lastName: $lastName, email: $email, status: $status, registrationDate: $registrationDate, ticketType: $ticketType, qrCode: $qrCode, isVip: $isVip, createdAt: $createdAt, updatedAt: $updatedAt, phone: $phone, company: $company, jobTitle: $jobTitle, notes: $notes, customFields: $customFields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendeeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.registrationDate, registrationDate) ||
                other.registrationDate == registrationDate) &&
            (identical(other.ticketType, ticketType) ||
                other.ticketType == ticketType) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode) &&
            (identical(other.isVip, isVip) || other.isVip == isVip) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other._customFields, _customFields));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      eventId,
      firstName,
      lastName,
      email,
      status,
      registrationDate,
      ticketType,
      qrCode,
      isVip,
      createdAt,
      updatedAt,
      phone,
      company,
      jobTitle,
      notes,
      const DeepCollectionEquality().hash(_customFields));

  /// Create a copy of Attendee
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendeeImplCopyWith<_$AttendeeImpl> get copyWith =>
      __$$AttendeeImplCopyWithImpl<_$AttendeeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendeeImplToJson(
      this,
    );
  }
}

abstract class _Attendee implements Attendee {
  const factory _Attendee(
      {required final String id,
      required final String eventId,
      required final String firstName,
      required final String lastName,
      required final String email,
      required final AttendeeStatus status,
      required final DateTime registrationDate,
      required final String ticketType,
      required final String qrCode,
      required final bool isVip,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final String? phone,
      final String? company,
      final String? jobTitle,
      final String? notes,
      final Map<String, dynamic>? customFields}) = _$AttendeeImpl;

  factory _Attendee.fromJson(Map<String, dynamic> json) =
      _$AttendeeImpl.fromJson;

  @override
  String get id;
  @override
  String get eventId;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  AttendeeStatus get status;
  @override
  DateTime get registrationDate;
  @override
  String get ticketType;
  @override
  String get qrCode;
  @override
  bool get isVip;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String? get phone;
  @override
  String? get company;
  @override
  String? get jobTitle;
  @override
  String? get notes;
  @override
  Map<String, dynamic>? get customFields;

  /// Create a copy of Attendee
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendeeImplCopyWith<_$AttendeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AttendeeStatus _$AttendeeStatusFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'registered':
      return _Registered.fromJson(json);
    case 'confirmed':
      return _Confirmed.fromJson(json);
    case 'checkedIn':
      return _CheckedIn.fromJson(json);
    case 'cancelled':
      return _Cancelled.fromJson(json);
    case 'noShow':
      return _NoShow.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AttendeeStatus',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AttendeeStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() registered,
    required TResult Function() confirmed,
    required TResult Function() checkedIn,
    required TResult Function() cancelled,
    required TResult Function() noShow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? registered,
    TResult? Function()? confirmed,
    TResult? Function()? checkedIn,
    TResult? Function()? cancelled,
    TResult? Function()? noShow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? registered,
    TResult Function()? confirmed,
    TResult Function()? checkedIn,
    TResult Function()? cancelled,
    TResult Function()? noShow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Registered value) registered,
    required TResult Function(_Confirmed value) confirmed,
    required TResult Function(_CheckedIn value) checkedIn,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_NoShow value) noShow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Registered value)? registered,
    TResult? Function(_Confirmed value)? confirmed,
    TResult? Function(_CheckedIn value)? checkedIn,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_NoShow value)? noShow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Registered value)? registered,
    TResult Function(_Confirmed value)? confirmed,
    TResult Function(_CheckedIn value)? checkedIn,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_NoShow value)? noShow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this AttendeeStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendeeStatusCopyWith<$Res> {
  factory $AttendeeStatusCopyWith(
          AttendeeStatus value, $Res Function(AttendeeStatus) then) =
      _$AttendeeStatusCopyWithImpl<$Res, AttendeeStatus>;
}

/// @nodoc
class _$AttendeeStatusCopyWithImpl<$Res, $Val extends AttendeeStatus>
    implements $AttendeeStatusCopyWith<$Res> {
  _$AttendeeStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendeeStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RegisteredImplCopyWith<$Res> {
  factory _$$RegisteredImplCopyWith(
          _$RegisteredImpl value, $Res Function(_$RegisteredImpl) then) =
      __$$RegisteredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisteredImplCopyWithImpl<$Res>
    extends _$AttendeeStatusCopyWithImpl<$Res, _$RegisteredImpl>
    implements _$$RegisteredImplCopyWith<$Res> {
  __$$RegisteredImplCopyWithImpl(
      _$RegisteredImpl _value, $Res Function(_$RegisteredImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$RegisteredImpl implements _Registered {
  const _$RegisteredImpl({final String? $type}) : $type = $type ?? 'registered';

  factory _$RegisteredImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisteredImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AttendeeStatus.registered()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisteredImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() registered,
    required TResult Function() confirmed,
    required TResult Function() checkedIn,
    required TResult Function() cancelled,
    required TResult Function() noShow,
  }) {
    return registered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? registered,
    TResult? Function()? confirmed,
    TResult? Function()? checkedIn,
    TResult? Function()? cancelled,
    TResult? Function()? noShow,
  }) {
    return registered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? registered,
    TResult Function()? confirmed,
    TResult Function()? checkedIn,
    TResult Function()? cancelled,
    TResult Function()? noShow,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Registered value) registered,
    required TResult Function(_Confirmed value) confirmed,
    required TResult Function(_CheckedIn value) checkedIn,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_NoShow value) noShow,
  }) {
    return registered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Registered value)? registered,
    TResult? Function(_Confirmed value)? confirmed,
    TResult? Function(_CheckedIn value)? checkedIn,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_NoShow value)? noShow,
  }) {
    return registered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Registered value)? registered,
    TResult Function(_Confirmed value)? confirmed,
    TResult Function(_CheckedIn value)? checkedIn,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_NoShow value)? noShow,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisteredImplToJson(
      this,
    );
  }
}

abstract class _Registered implements AttendeeStatus {
  const factory _Registered() = _$RegisteredImpl;

  factory _Registered.fromJson(Map<String, dynamic> json) =
      _$RegisteredImpl.fromJson;
}

/// @nodoc
abstract class _$$ConfirmedImplCopyWith<$Res> {
  factory _$$ConfirmedImplCopyWith(
          _$ConfirmedImpl value, $Res Function(_$ConfirmedImpl) then) =
      __$$ConfirmedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConfirmedImplCopyWithImpl<$Res>
    extends _$AttendeeStatusCopyWithImpl<$Res, _$ConfirmedImpl>
    implements _$$ConfirmedImplCopyWith<$Res> {
  __$$ConfirmedImplCopyWithImpl(
      _$ConfirmedImpl _value, $Res Function(_$ConfirmedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$ConfirmedImpl implements _Confirmed {
  const _$ConfirmedImpl({final String? $type}) : $type = $type ?? 'confirmed';

  factory _$ConfirmedImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfirmedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AttendeeStatus.confirmed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConfirmedImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() registered,
    required TResult Function() confirmed,
    required TResult Function() checkedIn,
    required TResult Function() cancelled,
    required TResult Function() noShow,
  }) {
    return confirmed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? registered,
    TResult? Function()? confirmed,
    TResult? Function()? checkedIn,
    TResult? Function()? cancelled,
    TResult? Function()? noShow,
  }) {
    return confirmed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? registered,
    TResult Function()? confirmed,
    TResult Function()? checkedIn,
    TResult Function()? cancelled,
    TResult Function()? noShow,
    required TResult orElse(),
  }) {
    if (confirmed != null) {
      return confirmed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Registered value) registered,
    required TResult Function(_Confirmed value) confirmed,
    required TResult Function(_CheckedIn value) checkedIn,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_NoShow value) noShow,
  }) {
    return confirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Registered value)? registered,
    TResult? Function(_Confirmed value)? confirmed,
    TResult? Function(_CheckedIn value)? checkedIn,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_NoShow value)? noShow,
  }) {
    return confirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Registered value)? registered,
    TResult Function(_Confirmed value)? confirmed,
    TResult Function(_CheckedIn value)? checkedIn,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_NoShow value)? noShow,
    required TResult orElse(),
  }) {
    if (confirmed != null) {
      return confirmed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmedImplToJson(
      this,
    );
  }
}

abstract class _Confirmed implements AttendeeStatus {
  const factory _Confirmed() = _$ConfirmedImpl;

  factory _Confirmed.fromJson(Map<String, dynamic> json) =
      _$ConfirmedImpl.fromJson;
}

/// @nodoc
abstract class _$$CheckedInImplCopyWith<$Res> {
  factory _$$CheckedInImplCopyWith(
          _$CheckedInImpl value, $Res Function(_$CheckedInImpl) then) =
      __$$CheckedInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckedInImplCopyWithImpl<$Res>
    extends _$AttendeeStatusCopyWithImpl<$Res, _$CheckedInImpl>
    implements _$$CheckedInImplCopyWith<$Res> {
  __$$CheckedInImplCopyWithImpl(
      _$CheckedInImpl _value, $Res Function(_$CheckedInImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$CheckedInImpl implements _CheckedIn {
  const _$CheckedInImpl({final String? $type}) : $type = $type ?? 'checkedIn';

  factory _$CheckedInImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckedInImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AttendeeStatus.checkedIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckedInImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() registered,
    required TResult Function() confirmed,
    required TResult Function() checkedIn,
    required TResult Function() cancelled,
    required TResult Function() noShow,
  }) {
    return checkedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? registered,
    TResult? Function()? confirmed,
    TResult? Function()? checkedIn,
    TResult? Function()? cancelled,
    TResult? Function()? noShow,
  }) {
    return checkedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? registered,
    TResult Function()? confirmed,
    TResult Function()? checkedIn,
    TResult Function()? cancelled,
    TResult Function()? noShow,
    required TResult orElse(),
  }) {
    if (checkedIn != null) {
      return checkedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Registered value) registered,
    required TResult Function(_Confirmed value) confirmed,
    required TResult Function(_CheckedIn value) checkedIn,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_NoShow value) noShow,
  }) {
    return checkedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Registered value)? registered,
    TResult? Function(_Confirmed value)? confirmed,
    TResult? Function(_CheckedIn value)? checkedIn,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_NoShow value)? noShow,
  }) {
    return checkedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Registered value)? registered,
    TResult Function(_Confirmed value)? confirmed,
    TResult Function(_CheckedIn value)? checkedIn,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_NoShow value)? noShow,
    required TResult orElse(),
  }) {
    if (checkedIn != null) {
      return checkedIn(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckedInImplToJson(
      this,
    );
  }
}

abstract class _CheckedIn implements AttendeeStatus {
  const factory _CheckedIn() = _$CheckedInImpl;

  factory _CheckedIn.fromJson(Map<String, dynamic> json) =
      _$CheckedInImpl.fromJson;
}

/// @nodoc
abstract class _$$CancelledImplCopyWith<$Res> {
  factory _$$CancelledImplCopyWith(
          _$CancelledImpl value, $Res Function(_$CancelledImpl) then) =
      __$$CancelledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelledImplCopyWithImpl<$Res>
    extends _$AttendeeStatusCopyWithImpl<$Res, _$CancelledImpl>
    implements _$$CancelledImplCopyWith<$Res> {
  __$$CancelledImplCopyWithImpl(
      _$CancelledImpl _value, $Res Function(_$CancelledImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$CancelledImpl implements _Cancelled {
  const _$CancelledImpl({final String? $type}) : $type = $type ?? 'cancelled';

  factory _$CancelledImpl.fromJson(Map<String, dynamic> json) =>
      _$$CancelledImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AttendeeStatus.cancelled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelledImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() registered,
    required TResult Function() confirmed,
    required TResult Function() checkedIn,
    required TResult Function() cancelled,
    required TResult Function() noShow,
  }) {
    return cancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? registered,
    TResult? Function()? confirmed,
    TResult? Function()? checkedIn,
    TResult? Function()? cancelled,
    TResult? Function()? noShow,
  }) {
    return cancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? registered,
    TResult Function()? confirmed,
    TResult Function()? checkedIn,
    TResult Function()? cancelled,
    TResult Function()? noShow,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Registered value) registered,
    required TResult Function(_Confirmed value) confirmed,
    required TResult Function(_CheckedIn value) checkedIn,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_NoShow value) noShow,
  }) {
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Registered value)? registered,
    TResult? Function(_Confirmed value)? confirmed,
    TResult? Function(_CheckedIn value)? checkedIn,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_NoShow value)? noShow,
  }) {
    return cancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Registered value)? registered,
    TResult Function(_Confirmed value)? confirmed,
    TResult Function(_CheckedIn value)? checkedIn,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_NoShow value)? noShow,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CancelledImplToJson(
      this,
    );
  }
}

abstract class _Cancelled implements AttendeeStatus {
  const factory _Cancelled() = _$CancelledImpl;

  factory _Cancelled.fromJson(Map<String, dynamic> json) =
      _$CancelledImpl.fromJson;
}

/// @nodoc
abstract class _$$NoShowImplCopyWith<$Res> {
  factory _$$NoShowImplCopyWith(
          _$NoShowImpl value, $Res Function(_$NoShowImpl) then) =
      __$$NoShowImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoShowImplCopyWithImpl<$Res>
    extends _$AttendeeStatusCopyWithImpl<$Res, _$NoShowImpl>
    implements _$$NoShowImplCopyWith<$Res> {
  __$$NoShowImplCopyWithImpl(
      _$NoShowImpl _value, $Res Function(_$NoShowImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendeeStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$NoShowImpl implements _NoShow {
  const _$NoShowImpl({final String? $type}) : $type = $type ?? 'noShow';

  factory _$NoShowImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoShowImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AttendeeStatus.noShow()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoShowImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() registered,
    required TResult Function() confirmed,
    required TResult Function() checkedIn,
    required TResult Function() cancelled,
    required TResult Function() noShow,
  }) {
    return noShow();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? registered,
    TResult? Function()? confirmed,
    TResult? Function()? checkedIn,
    TResult? Function()? cancelled,
    TResult? Function()? noShow,
  }) {
    return noShow?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? registered,
    TResult Function()? confirmed,
    TResult Function()? checkedIn,
    TResult Function()? cancelled,
    TResult Function()? noShow,
    required TResult orElse(),
  }) {
    if (noShow != null) {
      return noShow();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Registered value) registered,
    required TResult Function(_Confirmed value) confirmed,
    required TResult Function(_CheckedIn value) checkedIn,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_NoShow value) noShow,
  }) {
    return noShow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Registered value)? registered,
    TResult? Function(_Confirmed value)? confirmed,
    TResult? Function(_CheckedIn value)? checkedIn,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_NoShow value)? noShow,
  }) {
    return noShow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Registered value)? registered,
    TResult Function(_Confirmed value)? confirmed,
    TResult Function(_CheckedIn value)? checkedIn,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_NoShow value)? noShow,
    required TResult orElse(),
  }) {
    if (noShow != null) {
      return noShow(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NoShowImplToJson(
      this,
    );
  }
}

abstract class _NoShow implements AttendeeStatus {
  const factory _NoShow() = _$NoShowImpl;

  factory _NoShow.fromJson(Map<String, dynamic> json) = _$NoShowImpl.fromJson;
}
