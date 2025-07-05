// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Event _$EventFromJson(Map<String, dynamic> json) {
  return _Event.fromJson(json);
}

/// @nodoc
mixin _$Event {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get organizerId => throw _privateConstructorUsedError;
  EventStatus get status => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  int get maxAttendees => throw _privateConstructorUsedError;
  bool get allowCheckIn => throw _privateConstructorUsedError;
  bool get requiresApproval => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get contactEmail => throw _privateConstructorUsedError;
  String? get contactPhone => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this Event to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventCopyWith<Event> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res, Event>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      DateTime startDate,
      DateTime endDate,
      String location,
      String organizerId,
      EventStatus status,
      bool isActive,
      int maxAttendees,
      bool allowCheckIn,
      bool requiresApproval,
      DateTime createdAt,
      DateTime updatedAt,
      String? imageUrl,
      String? contactEmail,
      String? contactPhone,
      Map<String, dynamic>? metadata});

  $EventStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$EventCopyWithImpl<$Res, $Val extends Event>
    implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? location = null,
    Object? organizerId = null,
    Object? status = null,
    Object? isActive = null,
    Object? maxAttendees = null,
    Object? allowCheckIn = null,
    Object? requiresApproval = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? imageUrl = freezed,
    Object? contactEmail = freezed,
    Object? contactPhone = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      organizerId: null == organizerId
          ? _value.organizerId
          : organizerId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EventStatus,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      maxAttendees: null == maxAttendees
          ? _value.maxAttendees
          : maxAttendees // ignore: cast_nullable_to_non_nullable
              as int,
      allowCheckIn: null == allowCheckIn
          ? _value.allowCheckIn
          : allowCheckIn // ignore: cast_nullable_to_non_nullable
              as bool,
      requiresApproval: null == requiresApproval
          ? _value.requiresApproval
          : requiresApproval // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EventStatusCopyWith<$Res> get status {
    return $EventStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EventImplCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$$EventImplCopyWith(
          _$EventImpl value, $Res Function(_$EventImpl) then) =
      __$$EventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      DateTime startDate,
      DateTime endDate,
      String location,
      String organizerId,
      EventStatus status,
      bool isActive,
      int maxAttendees,
      bool allowCheckIn,
      bool requiresApproval,
      DateTime createdAt,
      DateTime updatedAt,
      String? imageUrl,
      String? contactEmail,
      String? contactPhone,
      Map<String, dynamic>? metadata});

  @override
  $EventStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$EventImplCopyWithImpl<$Res>
    extends _$EventCopyWithImpl<$Res, _$EventImpl>
    implements _$$EventImplCopyWith<$Res> {
  __$$EventImplCopyWithImpl(
      _$EventImpl _value, $Res Function(_$EventImpl) _then)
      : super(_value, _then);

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? location = null,
    Object? organizerId = null,
    Object? status = null,
    Object? isActive = null,
    Object? maxAttendees = null,
    Object? allowCheckIn = null,
    Object? requiresApproval = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? imageUrl = freezed,
    Object? contactEmail = freezed,
    Object? contactPhone = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$EventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      organizerId: null == organizerId
          ? _value.organizerId
          : organizerId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EventStatus,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      maxAttendees: null == maxAttendees
          ? _value.maxAttendees
          : maxAttendees // ignore: cast_nullable_to_non_nullable
              as int,
      allowCheckIn: null == allowCheckIn
          ? _value.allowCheckIn
          : allowCheckIn // ignore: cast_nullable_to_non_nullable
              as bool,
      requiresApproval: null == requiresApproval
          ? _value.requiresApproval
          : requiresApproval // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventImpl implements _Event {
  const _$EventImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.startDate,
      required this.endDate,
      required this.location,
      required this.organizerId,
      required this.status,
      required this.isActive,
      required this.maxAttendees,
      required this.allowCheckIn,
      required this.requiresApproval,
      required this.createdAt,
      required this.updatedAt,
      this.imageUrl,
      this.contactEmail,
      this.contactPhone,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$EventImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String location;
  @override
  final String organizerId;
  @override
  final EventStatus status;
  @override
  final bool isActive;
  @override
  final int maxAttendees;
  @override
  final bool allowCheckIn;
  @override
  final bool requiresApproval;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String? imageUrl;
  @override
  final String? contactEmail;
  @override
  final String? contactPhone;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Event(id: $id, name: $name, description: $description, startDate: $startDate, endDate: $endDate, location: $location, organizerId: $organizerId, status: $status, isActive: $isActive, maxAttendees: $maxAttendees, allowCheckIn: $allowCheckIn, requiresApproval: $requiresApproval, createdAt: $createdAt, updatedAt: $updatedAt, imageUrl: $imageUrl, contactEmail: $contactEmail, contactPhone: $contactPhone, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.organizerId, organizerId) ||
                other.organizerId == organizerId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.maxAttendees, maxAttendees) ||
                other.maxAttendees == maxAttendees) &&
            (identical(other.allowCheckIn, allowCheckIn) ||
                other.allowCheckIn == allowCheckIn) &&
            (identical(other.requiresApproval, requiresApproval) ||
                other.requiresApproval == requiresApproval) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.contactEmail, contactEmail) ||
                other.contactEmail == contactEmail) &&
            (identical(other.contactPhone, contactPhone) ||
                other.contactPhone == contactPhone) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      startDate,
      endDate,
      location,
      organizerId,
      status,
      isActive,
      maxAttendees,
      allowCheckIn,
      requiresApproval,
      createdAt,
      updatedAt,
      imageUrl,
      contactEmail,
      contactPhone,
      const DeepCollectionEquality().hash(_metadata));

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      __$$EventImplCopyWithImpl<_$EventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventImplToJson(
      this,
    );
  }
}

abstract class _Event implements Event {
  const factory _Event(
      {required final String id,
      required final String name,
      required final String description,
      required final DateTime startDate,
      required final DateTime endDate,
      required final String location,
      required final String organizerId,
      required final EventStatus status,
      required final bool isActive,
      required final int maxAttendees,
      required final bool allowCheckIn,
      required final bool requiresApproval,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final String? imageUrl,
      final String? contactEmail,
      final String? contactPhone,
      final Map<String, dynamic>? metadata}) = _$EventImpl;

  factory _Event.fromJson(Map<String, dynamic> json) = _$EventImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  String get location;
  @override
  String get organizerId;
  @override
  EventStatus get status;
  @override
  bool get isActive;
  @override
  int get maxAttendees;
  @override
  bool get allowCheckIn;
  @override
  bool get requiresApproval;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String? get imageUrl;
  @override
  String? get contactEmail;
  @override
  String? get contactPhone;
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EventStatus _$EventStatusFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'draft':
      return _Draft.fromJson(json);
    case 'published':
      return _Published.fromJson(json);
    case 'active':
      return _Active.fromJson(json);
    case 'completed':
      return _Completed.fromJson(json);
    case 'cancelled':
      return _Cancelled.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'EventStatus',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$EventStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() draft,
    required TResult Function() published,
    required TResult Function() active,
    required TResult Function() completed,
    required TResult Function() cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? draft,
    TResult? Function()? published,
    TResult? Function()? active,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? draft,
    TResult Function()? published,
    TResult Function()? active,
    TResult Function()? completed,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Draft value) draft,
    required TResult Function(_Published value) published,
    required TResult Function(_Active value) active,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Cancelled value) cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Draft value)? draft,
    TResult? Function(_Published value)? published,
    TResult? Function(_Active value)? active,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Cancelled value)? cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Draft value)? draft,
    TResult Function(_Published value)? published,
    TResult Function(_Active value)? active,
    TResult Function(_Completed value)? completed,
    TResult Function(_Cancelled value)? cancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this EventStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventStatusCopyWith<$Res> {
  factory $EventStatusCopyWith(
          EventStatus value, $Res Function(EventStatus) then) =
      _$EventStatusCopyWithImpl<$Res, EventStatus>;
}

/// @nodoc
class _$EventStatusCopyWithImpl<$Res, $Val extends EventStatus>
    implements $EventStatusCopyWith<$Res> {
  _$EventStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DraftImplCopyWith<$Res> {
  factory _$$DraftImplCopyWith(
          _$DraftImpl value, $Res Function(_$DraftImpl) then) =
      __$$DraftImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DraftImplCopyWithImpl<$Res>
    extends _$EventStatusCopyWithImpl<$Res, _$DraftImpl>
    implements _$$DraftImplCopyWith<$Res> {
  __$$DraftImplCopyWithImpl(
      _$DraftImpl _value, $Res Function(_$DraftImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$DraftImpl implements _Draft {
  const _$DraftImpl({final String? $type}) : $type = $type ?? 'draft';

  factory _$DraftImpl.fromJson(Map<String, dynamic> json) =>
      _$$DraftImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'EventStatus.draft()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DraftImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() draft,
    required TResult Function() published,
    required TResult Function() active,
    required TResult Function() completed,
    required TResult Function() cancelled,
  }) {
    return draft();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? draft,
    TResult? Function()? published,
    TResult? Function()? active,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
  }) {
    return draft?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? draft,
    TResult Function()? published,
    TResult Function()? active,
    TResult Function()? completed,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) {
    if (draft != null) {
      return draft();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Draft value) draft,
    required TResult Function(_Published value) published,
    required TResult Function(_Active value) active,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Cancelled value) cancelled,
  }) {
    return draft(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Draft value)? draft,
    TResult? Function(_Published value)? published,
    TResult? Function(_Active value)? active,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Cancelled value)? cancelled,
  }) {
    return draft?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Draft value)? draft,
    TResult Function(_Published value)? published,
    TResult Function(_Active value)? active,
    TResult Function(_Completed value)? completed,
    TResult Function(_Cancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (draft != null) {
      return draft(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DraftImplToJson(
      this,
    );
  }
}

abstract class _Draft implements EventStatus {
  const factory _Draft() = _$DraftImpl;

  factory _Draft.fromJson(Map<String, dynamic> json) = _$DraftImpl.fromJson;
}

/// @nodoc
abstract class _$$PublishedImplCopyWith<$Res> {
  factory _$$PublishedImplCopyWith(
          _$PublishedImpl value, $Res Function(_$PublishedImpl) then) =
      __$$PublishedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PublishedImplCopyWithImpl<$Res>
    extends _$EventStatusCopyWithImpl<$Res, _$PublishedImpl>
    implements _$$PublishedImplCopyWith<$Res> {
  __$$PublishedImplCopyWithImpl(
      _$PublishedImpl _value, $Res Function(_$PublishedImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$PublishedImpl implements _Published {
  const _$PublishedImpl({final String? $type}) : $type = $type ?? 'published';

  factory _$PublishedImpl.fromJson(Map<String, dynamic> json) =>
      _$$PublishedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'EventStatus.published()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PublishedImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() draft,
    required TResult Function() published,
    required TResult Function() active,
    required TResult Function() completed,
    required TResult Function() cancelled,
  }) {
    return published();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? draft,
    TResult? Function()? published,
    TResult? Function()? active,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
  }) {
    return published?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? draft,
    TResult Function()? published,
    TResult Function()? active,
    TResult Function()? completed,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) {
    if (published != null) {
      return published();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Draft value) draft,
    required TResult Function(_Published value) published,
    required TResult Function(_Active value) active,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Cancelled value) cancelled,
  }) {
    return published(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Draft value)? draft,
    TResult? Function(_Published value)? published,
    TResult? Function(_Active value)? active,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Cancelled value)? cancelled,
  }) {
    return published?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Draft value)? draft,
    TResult Function(_Published value)? published,
    TResult Function(_Active value)? active,
    TResult Function(_Completed value)? completed,
    TResult Function(_Cancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (published != null) {
      return published(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PublishedImplToJson(
      this,
    );
  }
}

abstract class _Published implements EventStatus {
  const factory _Published() = _$PublishedImpl;

  factory _Published.fromJson(Map<String, dynamic> json) =
      _$PublishedImpl.fromJson;
}

/// @nodoc
abstract class _$$ActiveImplCopyWith<$Res> {
  factory _$$ActiveImplCopyWith(
          _$ActiveImpl value, $Res Function(_$ActiveImpl) then) =
      __$$ActiveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActiveImplCopyWithImpl<$Res>
    extends _$EventStatusCopyWithImpl<$Res, _$ActiveImpl>
    implements _$$ActiveImplCopyWith<$Res> {
  __$$ActiveImplCopyWithImpl(
      _$ActiveImpl _value, $Res Function(_$ActiveImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$ActiveImpl implements _Active {
  const _$ActiveImpl({final String? $type}) : $type = $type ?? 'active';

  factory _$ActiveImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActiveImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'EventStatus.active()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ActiveImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() draft,
    required TResult Function() published,
    required TResult Function() active,
    required TResult Function() completed,
    required TResult Function() cancelled,
  }) {
    return active();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? draft,
    TResult? Function()? published,
    TResult? Function()? active,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
  }) {
    return active?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? draft,
    TResult Function()? published,
    TResult Function()? active,
    TResult Function()? completed,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) {
    if (active != null) {
      return active();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Draft value) draft,
    required TResult Function(_Published value) published,
    required TResult Function(_Active value) active,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Cancelled value) cancelled,
  }) {
    return active(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Draft value)? draft,
    TResult? Function(_Published value)? published,
    TResult? Function(_Active value)? active,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Cancelled value)? cancelled,
  }) {
    return active?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Draft value)? draft,
    TResult Function(_Published value)? published,
    TResult Function(_Active value)? active,
    TResult Function(_Completed value)? completed,
    TResult Function(_Cancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (active != null) {
      return active(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ActiveImplToJson(
      this,
    );
  }
}

abstract class _Active implements EventStatus {
  const factory _Active() = _$ActiveImpl;

  factory _Active.fromJson(Map<String, dynamic> json) = _$ActiveImpl.fromJson;
}

/// @nodoc
abstract class _$$CompletedImplCopyWith<$Res> {
  factory _$$CompletedImplCopyWith(
          _$CompletedImpl value, $Res Function(_$CompletedImpl) then) =
      __$$CompletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompletedImplCopyWithImpl<$Res>
    extends _$EventStatusCopyWithImpl<$Res, _$CompletedImpl>
    implements _$$CompletedImplCopyWith<$Res> {
  __$$CompletedImplCopyWithImpl(
      _$CompletedImpl _value, $Res Function(_$CompletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$CompletedImpl implements _Completed {
  const _$CompletedImpl({final String? $type}) : $type = $type ?? 'completed';

  factory _$CompletedImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompletedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'EventStatus.completed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CompletedImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() draft,
    required TResult Function() published,
    required TResult Function() active,
    required TResult Function() completed,
    required TResult Function() cancelled,
  }) {
    return completed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? draft,
    TResult? Function()? published,
    TResult? Function()? active,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
  }) {
    return completed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? draft,
    TResult Function()? published,
    TResult Function()? active,
    TResult Function()? completed,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Draft value) draft,
    required TResult Function(_Published value) published,
    required TResult Function(_Active value) active,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Cancelled value) cancelled,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Draft value)? draft,
    TResult? Function(_Published value)? published,
    TResult? Function(_Active value)? active,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Cancelled value)? cancelled,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Draft value)? draft,
    TResult Function(_Published value)? published,
    TResult Function(_Active value)? active,
    TResult Function(_Completed value)? completed,
    TResult Function(_Cancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CompletedImplToJson(
      this,
    );
  }
}

abstract class _Completed implements EventStatus {
  const factory _Completed() = _$CompletedImpl;

  factory _Completed.fromJson(Map<String, dynamic> json) =
      _$CompletedImpl.fromJson;
}

/// @nodoc
abstract class _$$CancelledImplCopyWith<$Res> {
  factory _$$CancelledImplCopyWith(
          _$CancelledImpl value, $Res Function(_$CancelledImpl) then) =
      __$$CancelledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelledImplCopyWithImpl<$Res>
    extends _$EventStatusCopyWithImpl<$Res, _$CancelledImpl>
    implements _$$CancelledImplCopyWith<$Res> {
  __$$CancelledImplCopyWithImpl(
      _$CancelledImpl _value, $Res Function(_$CancelledImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventStatus
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
    return 'EventStatus.cancelled()';
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
    required TResult Function() draft,
    required TResult Function() published,
    required TResult Function() active,
    required TResult Function() completed,
    required TResult Function() cancelled,
  }) {
    return cancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? draft,
    TResult? Function()? published,
    TResult? Function()? active,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
  }) {
    return cancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? draft,
    TResult Function()? published,
    TResult Function()? active,
    TResult Function()? completed,
    TResult Function()? cancelled,
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
    required TResult Function(_Draft value) draft,
    required TResult Function(_Published value) published,
    required TResult Function(_Active value) active,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Cancelled value) cancelled,
  }) {
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Draft value)? draft,
    TResult? Function(_Published value)? published,
    TResult? Function(_Active value)? active,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Cancelled value)? cancelled,
  }) {
    return cancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Draft value)? draft,
    TResult Function(_Published value)? published,
    TResult Function(_Active value)? active,
    TResult Function(_Completed value)? completed,
    TResult Function(_Cancelled value)? cancelled,
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

abstract class _Cancelled implements EventStatus {
  const factory _Cancelled() = _$CancelledImpl;

  factory _Cancelled.fromJson(Map<String, dynamic> json) =
      _$CancelledImpl.fromJson;
}
