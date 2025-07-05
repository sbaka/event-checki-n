// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_in.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckIn _$CheckInFromJson(Map<String, dynamic> json) {
  return _CheckIn.fromJson(json);
}

/// @nodoc
mixin _$CheckIn {
  String get id => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  String get attendeeId => throw _privateConstructorUsedError;
  DateTime get checkInTime => throw _privateConstructorUsedError;
  CheckInMethod get method => throw _privateConstructorUsedError;
  CheckInStatus get status => throw _privateConstructorUsedError;
  String get deviceId => throw _privateConstructorUsedError;
  String get operatorId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this CheckIn to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckIn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckInCopyWith<CheckIn> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckInCopyWith<$Res> {
  factory $CheckInCopyWith(CheckIn value, $Res Function(CheckIn) then) =
      _$CheckInCopyWithImpl<$Res, CheckIn>;
  @useResult
  $Res call(
      {String id,
      String eventId,
      String attendeeId,
      DateTime checkInTime,
      CheckInMethod method,
      CheckInStatus status,
      String deviceId,
      String operatorId,
      DateTime createdAt,
      String? notes,
      Map<String, dynamic>? metadata});

  $CheckInMethodCopyWith<$Res> get method;
  $CheckInStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$CheckInCopyWithImpl<$Res, $Val extends CheckIn>
    implements $CheckInCopyWith<$Res> {
  _$CheckInCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckIn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventId = null,
    Object? attendeeId = null,
    Object? checkInTime = null,
    Object? method = null,
    Object? status = null,
    Object? deviceId = null,
    Object? operatorId = null,
    Object? createdAt = null,
    Object? notes = freezed,
    Object? metadata = freezed,
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
      attendeeId: null == attendeeId
          ? _value.attendeeId
          : attendeeId // ignore: cast_nullable_to_non_nullable
              as String,
      checkInTime: null == checkInTime
          ? _value.checkInTime
          : checkInTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as CheckInMethod,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CheckInStatus,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      operatorId: null == operatorId
          ? _value.operatorId
          : operatorId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  /// Create a copy of CheckIn
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CheckInMethodCopyWith<$Res> get method {
    return $CheckInMethodCopyWith<$Res>(_value.method, (value) {
      return _then(_value.copyWith(method: value) as $Val);
    });
  }

  /// Create a copy of CheckIn
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CheckInStatusCopyWith<$Res> get status {
    return $CheckInStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CheckInImplCopyWith<$Res> implements $CheckInCopyWith<$Res> {
  factory _$$CheckInImplCopyWith(
          _$CheckInImpl value, $Res Function(_$CheckInImpl) then) =
      __$$CheckInImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String eventId,
      String attendeeId,
      DateTime checkInTime,
      CheckInMethod method,
      CheckInStatus status,
      String deviceId,
      String operatorId,
      DateTime createdAt,
      String? notes,
      Map<String, dynamic>? metadata});

  @override
  $CheckInMethodCopyWith<$Res> get method;
  @override
  $CheckInStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$CheckInImplCopyWithImpl<$Res>
    extends _$CheckInCopyWithImpl<$Res, _$CheckInImpl>
    implements _$$CheckInImplCopyWith<$Res> {
  __$$CheckInImplCopyWithImpl(
      _$CheckInImpl _value, $Res Function(_$CheckInImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckIn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventId = null,
    Object? attendeeId = null,
    Object? checkInTime = null,
    Object? method = null,
    Object? status = null,
    Object? deviceId = null,
    Object? operatorId = null,
    Object? createdAt = null,
    Object? notes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$CheckInImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      attendeeId: null == attendeeId
          ? _value.attendeeId
          : attendeeId // ignore: cast_nullable_to_non_nullable
              as String,
      checkInTime: null == checkInTime
          ? _value.checkInTime
          : checkInTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as CheckInMethod,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CheckInStatus,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      operatorId: null == operatorId
          ? _value.operatorId
          : operatorId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
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
class _$CheckInImpl implements _CheckIn {
  const _$CheckInImpl(
      {required this.id,
      required this.eventId,
      required this.attendeeId,
      required this.checkInTime,
      required this.method,
      required this.status,
      required this.deviceId,
      required this.operatorId,
      required this.createdAt,
      this.notes,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$CheckInImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckInImplFromJson(json);

  @override
  final String id;
  @override
  final String eventId;
  @override
  final String attendeeId;
  @override
  final DateTime checkInTime;
  @override
  final CheckInMethod method;
  @override
  final CheckInStatus status;
  @override
  final String deviceId;
  @override
  final String operatorId;
  @override
  final DateTime createdAt;
  @override
  final String? notes;
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
    return 'CheckIn(id: $id, eventId: $eventId, attendeeId: $attendeeId, checkInTime: $checkInTime, method: $method, status: $status, deviceId: $deviceId, operatorId: $operatorId, createdAt: $createdAt, notes: $notes, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckInImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.attendeeId, attendeeId) ||
                other.attendeeId == attendeeId) &&
            (identical(other.checkInTime, checkInTime) ||
                other.checkInTime == checkInTime) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.operatorId, operatorId) ||
                other.operatorId == operatorId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      eventId,
      attendeeId,
      checkInTime,
      method,
      status,
      deviceId,
      operatorId,
      createdAt,
      notes,
      const DeepCollectionEquality().hash(_metadata));

  /// Create a copy of CheckIn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckInImplCopyWith<_$CheckInImpl> get copyWith =>
      __$$CheckInImplCopyWithImpl<_$CheckInImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckInImplToJson(
      this,
    );
  }
}

abstract class _CheckIn implements CheckIn {
  const factory _CheckIn(
      {required final String id,
      required final String eventId,
      required final String attendeeId,
      required final DateTime checkInTime,
      required final CheckInMethod method,
      required final CheckInStatus status,
      required final String deviceId,
      required final String operatorId,
      required final DateTime createdAt,
      final String? notes,
      final Map<String, dynamic>? metadata}) = _$CheckInImpl;

  factory _CheckIn.fromJson(Map<String, dynamic> json) = _$CheckInImpl.fromJson;

  @override
  String get id;
  @override
  String get eventId;
  @override
  String get attendeeId;
  @override
  DateTime get checkInTime;
  @override
  CheckInMethod get method;
  @override
  CheckInStatus get status;
  @override
  String get deviceId;
  @override
  String get operatorId;
  @override
  DateTime get createdAt;
  @override
  String? get notes;
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of CheckIn
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckInImplCopyWith<_$CheckInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckInMethod _$CheckInMethodFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'qrCode':
      return _QrCode.fromJson(json);
    case 'manual':
      return _Manual.fromJson(json);
    case 'bulk':
      return _Bulk.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'CheckInMethod',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$CheckInMethod {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() qrCode,
    required TResult Function() manual,
    required TResult Function() bulk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? qrCode,
    TResult? Function()? manual,
    TResult? Function()? bulk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? qrCode,
    TResult Function()? manual,
    TResult Function()? bulk,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QrCode value) qrCode,
    required TResult Function(_Manual value) manual,
    required TResult Function(_Bulk value) bulk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QrCode value)? qrCode,
    TResult? Function(_Manual value)? manual,
    TResult? Function(_Bulk value)? bulk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QrCode value)? qrCode,
    TResult Function(_Manual value)? manual,
    TResult Function(_Bulk value)? bulk,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this CheckInMethod to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckInMethodCopyWith<$Res> {
  factory $CheckInMethodCopyWith(
          CheckInMethod value, $Res Function(CheckInMethod) then) =
      _$CheckInMethodCopyWithImpl<$Res, CheckInMethod>;
}

/// @nodoc
class _$CheckInMethodCopyWithImpl<$Res, $Val extends CheckInMethod>
    implements $CheckInMethodCopyWith<$Res> {
  _$CheckInMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckInMethod
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$QrCodeImplCopyWith<$Res> {
  factory _$$QrCodeImplCopyWith(
          _$QrCodeImpl value, $Res Function(_$QrCodeImpl) then) =
      __$$QrCodeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QrCodeImplCopyWithImpl<$Res>
    extends _$CheckInMethodCopyWithImpl<$Res, _$QrCodeImpl>
    implements _$$QrCodeImplCopyWith<$Res> {
  __$$QrCodeImplCopyWithImpl(
      _$QrCodeImpl _value, $Res Function(_$QrCodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckInMethod
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$QrCodeImpl implements _QrCode {
  const _$QrCodeImpl({final String? $type}) : $type = $type ?? 'qrCode';

  factory _$QrCodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$QrCodeImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CheckInMethod.qrCode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QrCodeImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() qrCode,
    required TResult Function() manual,
    required TResult Function() bulk,
  }) {
    return qrCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? qrCode,
    TResult? Function()? manual,
    TResult? Function()? bulk,
  }) {
    return qrCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? qrCode,
    TResult Function()? manual,
    TResult Function()? bulk,
    required TResult orElse(),
  }) {
    if (qrCode != null) {
      return qrCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QrCode value) qrCode,
    required TResult Function(_Manual value) manual,
    required TResult Function(_Bulk value) bulk,
  }) {
    return qrCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QrCode value)? qrCode,
    TResult? Function(_Manual value)? manual,
    TResult? Function(_Bulk value)? bulk,
  }) {
    return qrCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QrCode value)? qrCode,
    TResult Function(_Manual value)? manual,
    TResult Function(_Bulk value)? bulk,
    required TResult orElse(),
  }) {
    if (qrCode != null) {
      return qrCode(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$QrCodeImplToJson(
      this,
    );
  }
}

abstract class _QrCode implements CheckInMethod {
  const factory _QrCode() = _$QrCodeImpl;

  factory _QrCode.fromJson(Map<String, dynamic> json) = _$QrCodeImpl.fromJson;
}

/// @nodoc
abstract class _$$ManualImplCopyWith<$Res> {
  factory _$$ManualImplCopyWith(
          _$ManualImpl value, $Res Function(_$ManualImpl) then) =
      __$$ManualImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ManualImplCopyWithImpl<$Res>
    extends _$CheckInMethodCopyWithImpl<$Res, _$ManualImpl>
    implements _$$ManualImplCopyWith<$Res> {
  __$$ManualImplCopyWithImpl(
      _$ManualImpl _value, $Res Function(_$ManualImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckInMethod
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$ManualImpl implements _Manual {
  const _$ManualImpl({final String? $type}) : $type = $type ?? 'manual';

  factory _$ManualImpl.fromJson(Map<String, dynamic> json) =>
      _$$ManualImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CheckInMethod.manual()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ManualImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() qrCode,
    required TResult Function() manual,
    required TResult Function() bulk,
  }) {
    return manual();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? qrCode,
    TResult? Function()? manual,
    TResult? Function()? bulk,
  }) {
    return manual?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? qrCode,
    TResult Function()? manual,
    TResult Function()? bulk,
    required TResult orElse(),
  }) {
    if (manual != null) {
      return manual();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QrCode value) qrCode,
    required TResult Function(_Manual value) manual,
    required TResult Function(_Bulk value) bulk,
  }) {
    return manual(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QrCode value)? qrCode,
    TResult? Function(_Manual value)? manual,
    TResult? Function(_Bulk value)? bulk,
  }) {
    return manual?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QrCode value)? qrCode,
    TResult Function(_Manual value)? manual,
    TResult Function(_Bulk value)? bulk,
    required TResult orElse(),
  }) {
    if (manual != null) {
      return manual(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ManualImplToJson(
      this,
    );
  }
}

abstract class _Manual implements CheckInMethod {
  const factory _Manual() = _$ManualImpl;

  factory _Manual.fromJson(Map<String, dynamic> json) = _$ManualImpl.fromJson;
}

/// @nodoc
abstract class _$$BulkImplCopyWith<$Res> {
  factory _$$BulkImplCopyWith(
          _$BulkImpl value, $Res Function(_$BulkImpl) then) =
      __$$BulkImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BulkImplCopyWithImpl<$Res>
    extends _$CheckInMethodCopyWithImpl<$Res, _$BulkImpl>
    implements _$$BulkImplCopyWith<$Res> {
  __$$BulkImplCopyWithImpl(_$BulkImpl _value, $Res Function(_$BulkImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckInMethod
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$BulkImpl implements _Bulk {
  const _$BulkImpl({final String? $type}) : $type = $type ?? 'bulk';

  factory _$BulkImpl.fromJson(Map<String, dynamic> json) =>
      _$$BulkImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CheckInMethod.bulk()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BulkImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() qrCode,
    required TResult Function() manual,
    required TResult Function() bulk,
  }) {
    return bulk();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? qrCode,
    TResult? Function()? manual,
    TResult? Function()? bulk,
  }) {
    return bulk?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? qrCode,
    TResult Function()? manual,
    TResult Function()? bulk,
    required TResult orElse(),
  }) {
    if (bulk != null) {
      return bulk();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QrCode value) qrCode,
    required TResult Function(_Manual value) manual,
    required TResult Function(_Bulk value) bulk,
  }) {
    return bulk(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QrCode value)? qrCode,
    TResult? Function(_Manual value)? manual,
    TResult? Function(_Bulk value)? bulk,
  }) {
    return bulk?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QrCode value)? qrCode,
    TResult Function(_Manual value)? manual,
    TResult Function(_Bulk value)? bulk,
    required TResult orElse(),
  }) {
    if (bulk != null) {
      return bulk(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BulkImplToJson(
      this,
    );
  }
}

abstract class _Bulk implements CheckInMethod {
  const factory _Bulk() = _$BulkImpl;

  factory _Bulk.fromJson(Map<String, dynamic> json) = _$BulkImpl.fromJson;
}

CheckInStatus _$CheckInStatusFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'pending':
      return _Pending.fromJson(json);
    case 'completed':
      return _Completed.fromJson(json);
    case 'failed':
      return _Failed.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'CheckInStatus',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$CheckInStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() completed,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? completed,
    TResult? Function()? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? completed,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pending value)? pending,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_Completed value)? completed,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this CheckInStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckInStatusCopyWith<$Res> {
  factory $CheckInStatusCopyWith(
          CheckInStatus value, $Res Function(CheckInStatus) then) =
      _$CheckInStatusCopyWithImpl<$Res, CheckInStatus>;
}

/// @nodoc
class _$CheckInStatusCopyWithImpl<$Res, $Val extends CheckInStatus>
    implements $CheckInStatusCopyWith<$Res> {
  _$CheckInStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckInStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PendingImplCopyWith<$Res> {
  factory _$$PendingImplCopyWith(
          _$PendingImpl value, $Res Function(_$PendingImpl) then) =
      __$$PendingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PendingImplCopyWithImpl<$Res>
    extends _$CheckInStatusCopyWithImpl<$Res, _$PendingImpl>
    implements _$$PendingImplCopyWith<$Res> {
  __$$PendingImplCopyWithImpl(
      _$PendingImpl _value, $Res Function(_$PendingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckInStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$PendingImpl implements _Pending {
  const _$PendingImpl({final String? $type}) : $type = $type ?? 'pending';

  factory _$PendingImpl.fromJson(Map<String, dynamic> json) =>
      _$$PendingImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CheckInStatus.pending()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PendingImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() completed,
    required TResult Function() failed,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? completed,
    TResult? Function()? failed,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? completed,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Failed value) failed,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pending value)? pending,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Failed value)? failed,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_Completed value)? completed,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PendingImplToJson(
      this,
    );
  }
}

abstract class _Pending implements CheckInStatus {
  const factory _Pending() = _$PendingImpl;

  factory _Pending.fromJson(Map<String, dynamic> json) = _$PendingImpl.fromJson;
}

/// @nodoc
abstract class _$$CompletedImplCopyWith<$Res> {
  factory _$$CompletedImplCopyWith(
          _$CompletedImpl value, $Res Function(_$CompletedImpl) then) =
      __$$CompletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompletedImplCopyWithImpl<$Res>
    extends _$CheckInStatusCopyWithImpl<$Res, _$CompletedImpl>
    implements _$$CompletedImplCopyWith<$Res> {
  __$$CompletedImplCopyWithImpl(
      _$CompletedImpl _value, $Res Function(_$CompletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckInStatus
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
    return 'CheckInStatus.completed()';
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
    required TResult Function() pending,
    required TResult Function() completed,
    required TResult Function() failed,
  }) {
    return completed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? completed,
    TResult? Function()? failed,
  }) {
    return completed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? completed,
    TResult Function()? failed,
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
    required TResult Function(_Pending value) pending,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Failed value) failed,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pending value)? pending,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Failed value)? failed,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_Completed value)? completed,
    TResult Function(_Failed value)? failed,
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

abstract class _Completed implements CheckInStatus {
  const factory _Completed() = _$CompletedImpl;

  factory _Completed.fromJson(Map<String, dynamic> json) =
      _$CompletedImpl.fromJson;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$CheckInStatusCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckInStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$FailedImpl implements _Failed {
  const _$FailedImpl({final String? $type}) : $type = $type ?? 'failed';

  factory _$FailedImpl.fromJson(Map<String, dynamic> json) =>
      _$$FailedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CheckInStatus.failed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailedImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() completed,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? completed,
    TResult? Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? completed,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pending value)? pending,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_Completed value)? completed,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FailedImplToJson(
      this,
    );
  }
}

abstract class _Failed implements CheckInStatus {
  const factory _Failed() = _$FailedImpl;

  factory _Failed.fromJson(Map<String, dynamic> json) = _$FailedImpl.fromJson;
}
