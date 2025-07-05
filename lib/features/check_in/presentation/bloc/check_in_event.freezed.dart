// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_in_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String qrCode, String eventId) scanQrCode,
    required TResult Function(
            String attendeeId, String eventId, CheckInMethod method)
        checkInAttendee,
    required TResult Function(String eventId) loadCheckIns,
    required TResult Function(String qrCode) validateQrCode,
    required TResult Function() resetState,
    required TResult Function(String query, String eventId) searchAttendee,
    required TResult Function() startScanning,
    required TResult Function() stopScanning,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String qrCode, String eventId)? scanQrCode,
    TResult? Function(String attendeeId, String eventId, CheckInMethod method)?
        checkInAttendee,
    TResult? Function(String eventId)? loadCheckIns,
    TResult? Function(String qrCode)? validateQrCode,
    TResult? Function()? resetState,
    TResult? Function(String query, String eventId)? searchAttendee,
    TResult? Function()? startScanning,
    TResult? Function()? stopScanning,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String qrCode, String eventId)? scanQrCode,
    TResult Function(String attendeeId, String eventId, CheckInMethod method)?
        checkInAttendee,
    TResult Function(String eventId)? loadCheckIns,
    TResult Function(String qrCode)? validateQrCode,
    TResult Function()? resetState,
    TResult Function(String query, String eventId)? searchAttendee,
    TResult Function()? startScanning,
    TResult Function()? stopScanning,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScanQrCode value) scanQrCode,
    required TResult Function(_CheckInAttendee value) checkInAttendee,
    required TResult Function(_LoadCheckIns value) loadCheckIns,
    required TResult Function(_ValidateQrCode value) validateQrCode,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_SearchAttendee value) searchAttendee,
    required TResult Function(_StartScanning value) startScanning,
    required TResult Function(_StopScanning value) stopScanning,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScanQrCode value)? scanQrCode,
    TResult? Function(_CheckInAttendee value)? checkInAttendee,
    TResult? Function(_LoadCheckIns value)? loadCheckIns,
    TResult? Function(_ValidateQrCode value)? validateQrCode,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_SearchAttendee value)? searchAttendee,
    TResult? Function(_StartScanning value)? startScanning,
    TResult? Function(_StopScanning value)? stopScanning,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScanQrCode value)? scanQrCode,
    TResult Function(_CheckInAttendee value)? checkInAttendee,
    TResult Function(_LoadCheckIns value)? loadCheckIns,
    TResult Function(_ValidateQrCode value)? validateQrCode,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_SearchAttendee value)? searchAttendee,
    TResult Function(_StartScanning value)? startScanning,
    TResult Function(_StopScanning value)? stopScanning,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckInEventCopyWith<$Res> {
  factory $CheckInEventCopyWith(
          CheckInEvent value, $Res Function(CheckInEvent) then) =
      _$CheckInEventCopyWithImpl<$Res, CheckInEvent>;
}

/// @nodoc
class _$CheckInEventCopyWithImpl<$Res, $Val extends CheckInEvent>
    implements $CheckInEventCopyWith<$Res> {
  _$CheckInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckInEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ScanQrCodeImplCopyWith<$Res> {
  factory _$$ScanQrCodeImplCopyWith(
          _$ScanQrCodeImpl value, $Res Function(_$ScanQrCodeImpl) then) =
      __$$ScanQrCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String qrCode, String eventId});
}

/// @nodoc
class __$$ScanQrCodeImplCopyWithImpl<$Res>
    extends _$CheckInEventCopyWithImpl<$Res, _$ScanQrCodeImpl>
    implements _$$ScanQrCodeImplCopyWith<$Res> {
  __$$ScanQrCodeImplCopyWithImpl(
      _$ScanQrCodeImpl _value, $Res Function(_$ScanQrCodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckInEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qrCode = null,
    Object? eventId = null,
  }) {
    return _then(_$ScanQrCodeImpl(
      null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ScanQrCodeImpl implements _ScanQrCode {
  const _$ScanQrCodeImpl(this.qrCode, this.eventId);

  @override
  final String qrCode;
  @override
  final String eventId;

  @override
  String toString() {
    return 'CheckInEvent.scanQrCode(qrCode: $qrCode, eventId: $eventId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanQrCodeImpl &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode) &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, qrCode, eventId);

  /// Create a copy of CheckInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanQrCodeImplCopyWith<_$ScanQrCodeImpl> get copyWith =>
      __$$ScanQrCodeImplCopyWithImpl<_$ScanQrCodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String qrCode, String eventId) scanQrCode,
    required TResult Function(
            String attendeeId, String eventId, CheckInMethod method)
        checkInAttendee,
    required TResult Function(String eventId) loadCheckIns,
    required TResult Function(String qrCode) validateQrCode,
    required TResult Function() resetState,
    required TResult Function(String query, String eventId) searchAttendee,
    required TResult Function() startScanning,
    required TResult Function() stopScanning,
  }) {
    return scanQrCode(qrCode, eventId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String qrCode, String eventId)? scanQrCode,
    TResult? Function(String attendeeId, String eventId, CheckInMethod method)?
        checkInAttendee,
    TResult? Function(String eventId)? loadCheckIns,
    TResult? Function(String qrCode)? validateQrCode,
    TResult? Function()? resetState,
    TResult? Function(String query, String eventId)? searchAttendee,
    TResult? Function()? startScanning,
    TResult? Function()? stopScanning,
  }) {
    return scanQrCode?.call(qrCode, eventId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String qrCode, String eventId)? scanQrCode,
    TResult Function(String attendeeId, String eventId, CheckInMethod method)?
        checkInAttendee,
    TResult Function(String eventId)? loadCheckIns,
    TResult Function(String qrCode)? validateQrCode,
    TResult Function()? resetState,
    TResult Function(String query, String eventId)? searchAttendee,
    TResult Function()? startScanning,
    TResult Function()? stopScanning,
    required TResult orElse(),
  }) {
    if (scanQrCode != null) {
      return scanQrCode(qrCode, eventId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScanQrCode value) scanQrCode,
    required TResult Function(_CheckInAttendee value) checkInAttendee,
    required TResult Function(_LoadCheckIns value) loadCheckIns,
    required TResult Function(_ValidateQrCode value) validateQrCode,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_SearchAttendee value) searchAttendee,
    required TResult Function(_StartScanning value) startScanning,
    required TResult Function(_StopScanning value) stopScanning,
  }) {
    return scanQrCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScanQrCode value)? scanQrCode,
    TResult? Function(_CheckInAttendee value)? checkInAttendee,
    TResult? Function(_LoadCheckIns value)? loadCheckIns,
    TResult? Function(_ValidateQrCode value)? validateQrCode,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_SearchAttendee value)? searchAttendee,
    TResult? Function(_StartScanning value)? startScanning,
    TResult? Function(_StopScanning value)? stopScanning,
  }) {
    return scanQrCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScanQrCode value)? scanQrCode,
    TResult Function(_CheckInAttendee value)? checkInAttendee,
    TResult Function(_LoadCheckIns value)? loadCheckIns,
    TResult Function(_ValidateQrCode value)? validateQrCode,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_SearchAttendee value)? searchAttendee,
    TResult Function(_StartScanning value)? startScanning,
    TResult Function(_StopScanning value)? stopScanning,
    required TResult orElse(),
  }) {
    if (scanQrCode != null) {
      return scanQrCode(this);
    }
    return orElse();
  }
}

abstract class _ScanQrCode implements CheckInEvent {
  const factory _ScanQrCode(final String qrCode, final String eventId) =
      _$ScanQrCodeImpl;

  String get qrCode;
  String get eventId;

  /// Create a copy of CheckInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScanQrCodeImplCopyWith<_$ScanQrCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckInAttendeeImplCopyWith<$Res> {
  factory _$$CheckInAttendeeImplCopyWith(_$CheckInAttendeeImpl value,
          $Res Function(_$CheckInAttendeeImpl) then) =
      __$$CheckInAttendeeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String attendeeId, String eventId, CheckInMethod method});

  $CheckInMethodCopyWith<$Res> get method;
}

/// @nodoc
class __$$CheckInAttendeeImplCopyWithImpl<$Res>
    extends _$CheckInEventCopyWithImpl<$Res, _$CheckInAttendeeImpl>
    implements _$$CheckInAttendeeImplCopyWith<$Res> {
  __$$CheckInAttendeeImplCopyWithImpl(
      _$CheckInAttendeeImpl _value, $Res Function(_$CheckInAttendeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckInEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendeeId = null,
    Object? eventId = null,
    Object? method = null,
  }) {
    return _then(_$CheckInAttendeeImpl(
      null == attendeeId
          ? _value.attendeeId
          : attendeeId // ignore: cast_nullable_to_non_nullable
              as String,
      null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as CheckInMethod,
    ));
  }

  /// Create a copy of CheckInEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CheckInMethodCopyWith<$Res> get method {
    return $CheckInMethodCopyWith<$Res>(_value.method, (value) {
      return _then(_value.copyWith(method: value));
    });
  }
}

/// @nodoc

class _$CheckInAttendeeImpl implements _CheckInAttendee {
  const _$CheckInAttendeeImpl(this.attendeeId, this.eventId, this.method);

  @override
  final String attendeeId;
  @override
  final String eventId;
  @override
  final CheckInMethod method;

  @override
  String toString() {
    return 'CheckInEvent.checkInAttendee(attendeeId: $attendeeId, eventId: $eventId, method: $method)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckInAttendeeImpl &&
            (identical(other.attendeeId, attendeeId) ||
                other.attendeeId == attendeeId) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.method, method) || other.method == method));
  }

  @override
  int get hashCode => Object.hash(runtimeType, attendeeId, eventId, method);

  /// Create a copy of CheckInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckInAttendeeImplCopyWith<_$CheckInAttendeeImpl> get copyWith =>
      __$$CheckInAttendeeImplCopyWithImpl<_$CheckInAttendeeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String qrCode, String eventId) scanQrCode,
    required TResult Function(
            String attendeeId, String eventId, CheckInMethod method)
        checkInAttendee,
    required TResult Function(String eventId) loadCheckIns,
    required TResult Function(String qrCode) validateQrCode,
    required TResult Function() resetState,
    required TResult Function(String query, String eventId) searchAttendee,
    required TResult Function() startScanning,
    required TResult Function() stopScanning,
  }) {
    return checkInAttendee(attendeeId, eventId, method);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String qrCode, String eventId)? scanQrCode,
    TResult? Function(String attendeeId, String eventId, CheckInMethod method)?
        checkInAttendee,
    TResult? Function(String eventId)? loadCheckIns,
    TResult? Function(String qrCode)? validateQrCode,
    TResult? Function()? resetState,
    TResult? Function(String query, String eventId)? searchAttendee,
    TResult? Function()? startScanning,
    TResult? Function()? stopScanning,
  }) {
    return checkInAttendee?.call(attendeeId, eventId, method);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String qrCode, String eventId)? scanQrCode,
    TResult Function(String attendeeId, String eventId, CheckInMethod method)?
        checkInAttendee,
    TResult Function(String eventId)? loadCheckIns,
    TResult Function(String qrCode)? validateQrCode,
    TResult Function()? resetState,
    TResult Function(String query, String eventId)? searchAttendee,
    TResult Function()? startScanning,
    TResult Function()? stopScanning,
    required TResult orElse(),
  }) {
    if (checkInAttendee != null) {
      return checkInAttendee(attendeeId, eventId, method);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScanQrCode value) scanQrCode,
    required TResult Function(_CheckInAttendee value) checkInAttendee,
    required TResult Function(_LoadCheckIns value) loadCheckIns,
    required TResult Function(_ValidateQrCode value) validateQrCode,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_SearchAttendee value) searchAttendee,
    required TResult Function(_StartScanning value) startScanning,
    required TResult Function(_StopScanning value) stopScanning,
  }) {
    return checkInAttendee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScanQrCode value)? scanQrCode,
    TResult? Function(_CheckInAttendee value)? checkInAttendee,
    TResult? Function(_LoadCheckIns value)? loadCheckIns,
    TResult? Function(_ValidateQrCode value)? validateQrCode,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_SearchAttendee value)? searchAttendee,
    TResult? Function(_StartScanning value)? startScanning,
    TResult? Function(_StopScanning value)? stopScanning,
  }) {
    return checkInAttendee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScanQrCode value)? scanQrCode,
    TResult Function(_CheckInAttendee value)? checkInAttendee,
    TResult Function(_LoadCheckIns value)? loadCheckIns,
    TResult Function(_ValidateQrCode value)? validateQrCode,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_SearchAttendee value)? searchAttendee,
    TResult Function(_StartScanning value)? startScanning,
    TResult Function(_StopScanning value)? stopScanning,
    required TResult orElse(),
  }) {
    if (checkInAttendee != null) {
      return checkInAttendee(this);
    }
    return orElse();
  }
}

abstract class _CheckInAttendee implements CheckInEvent {
  const factory _CheckInAttendee(final String attendeeId, final String eventId,
      final CheckInMethod method) = _$CheckInAttendeeImpl;

  String get attendeeId;
  String get eventId;
  CheckInMethod get method;

  /// Create a copy of CheckInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckInAttendeeImplCopyWith<_$CheckInAttendeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadCheckInsImplCopyWith<$Res> {
  factory _$$LoadCheckInsImplCopyWith(
          _$LoadCheckInsImpl value, $Res Function(_$LoadCheckInsImpl) then) =
      __$$LoadCheckInsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventId});
}

/// @nodoc
class __$$LoadCheckInsImplCopyWithImpl<$Res>
    extends _$CheckInEventCopyWithImpl<$Res, _$LoadCheckInsImpl>
    implements _$$LoadCheckInsImplCopyWith<$Res> {
  __$$LoadCheckInsImplCopyWithImpl(
      _$LoadCheckInsImpl _value, $Res Function(_$LoadCheckInsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckInEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
  }) {
    return _then(_$LoadCheckInsImpl(
      null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadCheckInsImpl implements _LoadCheckIns {
  const _$LoadCheckInsImpl(this.eventId);

  @override
  final String eventId;

  @override
  String toString() {
    return 'CheckInEvent.loadCheckIns(eventId: $eventId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCheckInsImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId);

  /// Create a copy of CheckInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadCheckInsImplCopyWith<_$LoadCheckInsImpl> get copyWith =>
      __$$LoadCheckInsImplCopyWithImpl<_$LoadCheckInsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String qrCode, String eventId) scanQrCode,
    required TResult Function(
            String attendeeId, String eventId, CheckInMethod method)
        checkInAttendee,
    required TResult Function(String eventId) loadCheckIns,
    required TResult Function(String qrCode) validateQrCode,
    required TResult Function() resetState,
    required TResult Function(String query, String eventId) searchAttendee,
    required TResult Function() startScanning,
    required TResult Function() stopScanning,
  }) {
    return loadCheckIns(eventId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String qrCode, String eventId)? scanQrCode,
    TResult? Function(String attendeeId, String eventId, CheckInMethod method)?
        checkInAttendee,
    TResult? Function(String eventId)? loadCheckIns,
    TResult? Function(String qrCode)? validateQrCode,
    TResult? Function()? resetState,
    TResult? Function(String query, String eventId)? searchAttendee,
    TResult? Function()? startScanning,
    TResult? Function()? stopScanning,
  }) {
    return loadCheckIns?.call(eventId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String qrCode, String eventId)? scanQrCode,
    TResult Function(String attendeeId, String eventId, CheckInMethod method)?
        checkInAttendee,
    TResult Function(String eventId)? loadCheckIns,
    TResult Function(String qrCode)? validateQrCode,
    TResult Function()? resetState,
    TResult Function(String query, String eventId)? searchAttendee,
    TResult Function()? startScanning,
    TResult Function()? stopScanning,
    required TResult orElse(),
  }) {
    if (loadCheckIns != null) {
      return loadCheckIns(eventId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScanQrCode value) scanQrCode,
    required TResult Function(_CheckInAttendee value) checkInAttendee,
    required TResult Function(_LoadCheckIns value) loadCheckIns,
    required TResult Function(_ValidateQrCode value) validateQrCode,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_SearchAttendee value) searchAttendee,
    required TResult Function(_StartScanning value) startScanning,
    required TResult Function(_StopScanning value) stopScanning,
  }) {
    return loadCheckIns(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScanQrCode value)? scanQrCode,
    TResult? Function(_CheckInAttendee value)? checkInAttendee,
    TResult? Function(_LoadCheckIns value)? loadCheckIns,
    TResult? Function(_ValidateQrCode value)? validateQrCode,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_SearchAttendee value)? searchAttendee,
    TResult? Function(_StartScanning value)? startScanning,
    TResult? Function(_StopScanning value)? stopScanning,
  }) {
    return loadCheckIns?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScanQrCode value)? scanQrCode,
    TResult Function(_CheckInAttendee value)? checkInAttendee,
    TResult Function(_LoadCheckIns value)? loadCheckIns,
    TResult Function(_ValidateQrCode value)? validateQrCode,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_SearchAttendee value)? searchAttendee,
    TResult Function(_StartScanning value)? startScanning,
    TResult Function(_StopScanning value)? stopScanning,
    required TResult orElse(),
  }) {
    if (loadCheckIns != null) {
      return loadCheckIns(this);
    }
    return orElse();
  }
}

abstract class _LoadCheckIns implements CheckInEvent {
  const factory _LoadCheckIns(final String eventId) = _$LoadCheckInsImpl;

  String get eventId;

  /// Create a copy of CheckInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadCheckInsImplCopyWith<_$LoadCheckInsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidateQrCodeImplCopyWith<$Res> {
  factory _$$ValidateQrCodeImplCopyWith(_$ValidateQrCodeImpl value,
          $Res Function(_$ValidateQrCodeImpl) then) =
      __$$ValidateQrCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String qrCode});
}

/// @nodoc
class __$$ValidateQrCodeImplCopyWithImpl<$Res>
    extends _$CheckInEventCopyWithImpl<$Res, _$ValidateQrCodeImpl>
    implements _$$ValidateQrCodeImplCopyWith<$Res> {
  __$$ValidateQrCodeImplCopyWithImpl(
      _$ValidateQrCodeImpl _value, $Res Function(_$ValidateQrCodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckInEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qrCode = null,
  }) {
    return _then(_$ValidateQrCodeImpl(
      null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ValidateQrCodeImpl implements _ValidateQrCode {
  const _$ValidateQrCodeImpl(this.qrCode);

  @override
  final String qrCode;

  @override
  String toString() {
    return 'CheckInEvent.validateQrCode(qrCode: $qrCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateQrCodeImpl &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, qrCode);

  /// Create a copy of CheckInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateQrCodeImplCopyWith<_$ValidateQrCodeImpl> get copyWith =>
      __$$ValidateQrCodeImplCopyWithImpl<_$ValidateQrCodeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String qrCode, String eventId) scanQrCode,
    required TResult Function(
            String attendeeId, String eventId, CheckInMethod method)
        checkInAttendee,
    required TResult Function(String eventId) loadCheckIns,
    required TResult Function(String qrCode) validateQrCode,
    required TResult Function() resetState,
    required TResult Function(String query, String eventId) searchAttendee,
    required TResult Function() startScanning,
    required TResult Function() stopScanning,
  }) {
    return validateQrCode(qrCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String qrCode, String eventId)? scanQrCode,
    TResult? Function(String attendeeId, String eventId, CheckInMethod method)?
        checkInAttendee,
    TResult? Function(String eventId)? loadCheckIns,
    TResult? Function(String qrCode)? validateQrCode,
    TResult? Function()? resetState,
    TResult? Function(String query, String eventId)? searchAttendee,
    TResult? Function()? startScanning,
    TResult? Function()? stopScanning,
  }) {
    return validateQrCode?.call(qrCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String qrCode, String eventId)? scanQrCode,
    TResult Function(String attendeeId, String eventId, CheckInMethod method)?
        checkInAttendee,
    TResult Function(String eventId)? loadCheckIns,
    TResult Function(String qrCode)? validateQrCode,
    TResult Function()? resetState,
    TResult Function(String query, String eventId)? searchAttendee,
    TResult Function()? startScanning,
    TResult Function()? stopScanning,
    required TResult orElse(),
  }) {
    if (validateQrCode != null) {
      return validateQrCode(qrCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScanQrCode value) scanQrCode,
    required TResult Function(_CheckInAttendee value) checkInAttendee,
    required TResult Function(_LoadCheckIns value) loadCheckIns,
    required TResult Function(_ValidateQrCode value) validateQrCode,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_SearchAttendee value) searchAttendee,
    required TResult Function(_StartScanning value) startScanning,
    required TResult Function(_StopScanning value) stopScanning,
  }) {
    return validateQrCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScanQrCode value)? scanQrCode,
    TResult? Function(_CheckInAttendee value)? checkInAttendee,
    TResult? Function(_LoadCheckIns value)? loadCheckIns,
    TResult? Function(_ValidateQrCode value)? validateQrCode,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_SearchAttendee value)? searchAttendee,
    TResult? Function(_StartScanning value)? startScanning,
    TResult? Function(_StopScanning value)? stopScanning,
  }) {
    return validateQrCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScanQrCode value)? scanQrCode,
    TResult Function(_CheckInAttendee value)? checkInAttendee,
    TResult Function(_LoadCheckIns value)? loadCheckIns,
    TResult Function(_ValidateQrCode value)? validateQrCode,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_SearchAttendee value)? searchAttendee,
    TResult Function(_StartScanning value)? startScanning,
    TResult Function(_StopScanning value)? stopScanning,
    required TResult orElse(),
  }) {
    if (validateQrCode != null) {
      return validateQrCode(this);
    }
    return orElse();
  }
}

abstract class _ValidateQrCode implements CheckInEvent {
  const factory _ValidateQrCode(final String qrCode) = _$ValidateQrCodeImpl;

  String get qrCode;

  /// Create a copy of CheckInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidateQrCodeImplCopyWith<_$ValidateQrCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetStateImplCopyWith<$Res> {
  factory _$$ResetStateImplCopyWith(
          _$ResetStateImpl value, $Res Function(_$ResetStateImpl) then) =
      __$$ResetStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetStateImplCopyWithImpl<$Res>
    extends _$CheckInEventCopyWithImpl<$Res, _$ResetStateImpl>
    implements _$$ResetStateImplCopyWith<$Res> {
  __$$ResetStateImplCopyWithImpl(
      _$ResetStateImpl _value, $Res Function(_$ResetStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckInEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetStateImpl implements _ResetState {
  const _$ResetStateImpl();

  @override
  String toString() {
    return 'CheckInEvent.resetState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String qrCode, String eventId) scanQrCode,
    required TResult Function(
            String attendeeId, String eventId, CheckInMethod method)
        checkInAttendee,
    required TResult Function(String eventId) loadCheckIns,
    required TResult Function(String qrCode) validateQrCode,
    required TResult Function() resetState,
    required TResult Function(String query, String eventId) searchAttendee,
    required TResult Function() startScanning,
    required TResult Function() stopScanning,
  }) {
    return resetState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String qrCode, String eventId)? scanQrCode,
    TResult? Function(String attendeeId, String eventId, CheckInMethod method)?
        checkInAttendee,
    TResult? Function(String eventId)? loadCheckIns,
    TResult? Function(String qrCode)? validateQrCode,
    TResult? Function()? resetState,
    TResult? Function(String query, String eventId)? searchAttendee,
    TResult? Function()? startScanning,
    TResult? Function()? stopScanning,
  }) {
    return resetState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String qrCode, String eventId)? scanQrCode,
    TResult Function(String attendeeId, String eventId, CheckInMethod method)?
        checkInAttendee,
    TResult Function(String eventId)? loadCheckIns,
    TResult Function(String qrCode)? validateQrCode,
    TResult Function()? resetState,
    TResult Function(String query, String eventId)? searchAttendee,
    TResult Function()? startScanning,
    TResult Function()? stopScanning,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScanQrCode value) scanQrCode,
    required TResult Function(_CheckInAttendee value) checkInAttendee,
    required TResult Function(_LoadCheckIns value) loadCheckIns,
    required TResult Function(_ValidateQrCode value) validateQrCode,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_SearchAttendee value) searchAttendee,
    required TResult Function(_StartScanning value) startScanning,
    required TResult Function(_StopScanning value) stopScanning,
  }) {
    return resetState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScanQrCode value)? scanQrCode,
    TResult? Function(_CheckInAttendee value)? checkInAttendee,
    TResult? Function(_LoadCheckIns value)? loadCheckIns,
    TResult? Function(_ValidateQrCode value)? validateQrCode,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_SearchAttendee value)? searchAttendee,
    TResult? Function(_StartScanning value)? startScanning,
    TResult? Function(_StopScanning value)? stopScanning,
  }) {
    return resetState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScanQrCode value)? scanQrCode,
    TResult Function(_CheckInAttendee value)? checkInAttendee,
    TResult Function(_LoadCheckIns value)? loadCheckIns,
    TResult Function(_ValidateQrCode value)? validateQrCode,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_SearchAttendee value)? searchAttendee,
    TResult Function(_StartScanning value)? startScanning,
    TResult Function(_StopScanning value)? stopScanning,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState(this);
    }
    return orElse();
  }
}

abstract class _ResetState implements CheckInEvent {
  const factory _ResetState() = _$ResetStateImpl;
}

/// @nodoc
abstract class _$$SearchAttendeeImplCopyWith<$Res> {
  factory _$$SearchAttendeeImplCopyWith(_$SearchAttendeeImpl value,
          $Res Function(_$SearchAttendeeImpl) then) =
      __$$SearchAttendeeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query, String eventId});
}

/// @nodoc
class __$$SearchAttendeeImplCopyWithImpl<$Res>
    extends _$CheckInEventCopyWithImpl<$Res, _$SearchAttendeeImpl>
    implements _$$SearchAttendeeImplCopyWith<$Res> {
  __$$SearchAttendeeImplCopyWithImpl(
      _$SearchAttendeeImpl _value, $Res Function(_$SearchAttendeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckInEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? eventId = null,
  }) {
    return _then(_$SearchAttendeeImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchAttendeeImpl implements _SearchAttendee {
  const _$SearchAttendeeImpl(this.query, this.eventId);

  @override
  final String query;
  @override
  final String eventId;

  @override
  String toString() {
    return 'CheckInEvent.searchAttendee(query: $query, eventId: $eventId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchAttendeeImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, eventId);

  /// Create a copy of CheckInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchAttendeeImplCopyWith<_$SearchAttendeeImpl> get copyWith =>
      __$$SearchAttendeeImplCopyWithImpl<_$SearchAttendeeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String qrCode, String eventId) scanQrCode,
    required TResult Function(
            String attendeeId, String eventId, CheckInMethod method)
        checkInAttendee,
    required TResult Function(String eventId) loadCheckIns,
    required TResult Function(String qrCode) validateQrCode,
    required TResult Function() resetState,
    required TResult Function(String query, String eventId) searchAttendee,
    required TResult Function() startScanning,
    required TResult Function() stopScanning,
  }) {
    return searchAttendee(query, eventId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String qrCode, String eventId)? scanQrCode,
    TResult? Function(String attendeeId, String eventId, CheckInMethod method)?
        checkInAttendee,
    TResult? Function(String eventId)? loadCheckIns,
    TResult? Function(String qrCode)? validateQrCode,
    TResult? Function()? resetState,
    TResult? Function(String query, String eventId)? searchAttendee,
    TResult? Function()? startScanning,
    TResult? Function()? stopScanning,
  }) {
    return searchAttendee?.call(query, eventId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String qrCode, String eventId)? scanQrCode,
    TResult Function(String attendeeId, String eventId, CheckInMethod method)?
        checkInAttendee,
    TResult Function(String eventId)? loadCheckIns,
    TResult Function(String qrCode)? validateQrCode,
    TResult Function()? resetState,
    TResult Function(String query, String eventId)? searchAttendee,
    TResult Function()? startScanning,
    TResult Function()? stopScanning,
    required TResult orElse(),
  }) {
    if (searchAttendee != null) {
      return searchAttendee(query, eventId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScanQrCode value) scanQrCode,
    required TResult Function(_CheckInAttendee value) checkInAttendee,
    required TResult Function(_LoadCheckIns value) loadCheckIns,
    required TResult Function(_ValidateQrCode value) validateQrCode,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_SearchAttendee value) searchAttendee,
    required TResult Function(_StartScanning value) startScanning,
    required TResult Function(_StopScanning value) stopScanning,
  }) {
    return searchAttendee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScanQrCode value)? scanQrCode,
    TResult? Function(_CheckInAttendee value)? checkInAttendee,
    TResult? Function(_LoadCheckIns value)? loadCheckIns,
    TResult? Function(_ValidateQrCode value)? validateQrCode,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_SearchAttendee value)? searchAttendee,
    TResult? Function(_StartScanning value)? startScanning,
    TResult? Function(_StopScanning value)? stopScanning,
  }) {
    return searchAttendee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScanQrCode value)? scanQrCode,
    TResult Function(_CheckInAttendee value)? checkInAttendee,
    TResult Function(_LoadCheckIns value)? loadCheckIns,
    TResult Function(_ValidateQrCode value)? validateQrCode,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_SearchAttendee value)? searchAttendee,
    TResult Function(_StartScanning value)? startScanning,
    TResult Function(_StopScanning value)? stopScanning,
    required TResult orElse(),
  }) {
    if (searchAttendee != null) {
      return searchAttendee(this);
    }
    return orElse();
  }
}

abstract class _SearchAttendee implements CheckInEvent {
  const factory _SearchAttendee(final String query, final String eventId) =
      _$SearchAttendeeImpl;

  String get query;
  String get eventId;

  /// Create a copy of CheckInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchAttendeeImplCopyWith<_$SearchAttendeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartScanningImplCopyWith<$Res> {
  factory _$$StartScanningImplCopyWith(
          _$StartScanningImpl value, $Res Function(_$StartScanningImpl) then) =
      __$$StartScanningImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartScanningImplCopyWithImpl<$Res>
    extends _$CheckInEventCopyWithImpl<$Res, _$StartScanningImpl>
    implements _$$StartScanningImplCopyWith<$Res> {
  __$$StartScanningImplCopyWithImpl(
      _$StartScanningImpl _value, $Res Function(_$StartScanningImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckInEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartScanningImpl implements _StartScanning {
  const _$StartScanningImpl();

  @override
  String toString() {
    return 'CheckInEvent.startScanning()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartScanningImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String qrCode, String eventId) scanQrCode,
    required TResult Function(
            String attendeeId, String eventId, CheckInMethod method)
        checkInAttendee,
    required TResult Function(String eventId) loadCheckIns,
    required TResult Function(String qrCode) validateQrCode,
    required TResult Function() resetState,
    required TResult Function(String query, String eventId) searchAttendee,
    required TResult Function() startScanning,
    required TResult Function() stopScanning,
  }) {
    return startScanning();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String qrCode, String eventId)? scanQrCode,
    TResult? Function(String attendeeId, String eventId, CheckInMethod method)?
        checkInAttendee,
    TResult? Function(String eventId)? loadCheckIns,
    TResult? Function(String qrCode)? validateQrCode,
    TResult? Function()? resetState,
    TResult? Function(String query, String eventId)? searchAttendee,
    TResult? Function()? startScanning,
    TResult? Function()? stopScanning,
  }) {
    return startScanning?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String qrCode, String eventId)? scanQrCode,
    TResult Function(String attendeeId, String eventId, CheckInMethod method)?
        checkInAttendee,
    TResult Function(String eventId)? loadCheckIns,
    TResult Function(String qrCode)? validateQrCode,
    TResult Function()? resetState,
    TResult Function(String query, String eventId)? searchAttendee,
    TResult Function()? startScanning,
    TResult Function()? stopScanning,
    required TResult orElse(),
  }) {
    if (startScanning != null) {
      return startScanning();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScanQrCode value) scanQrCode,
    required TResult Function(_CheckInAttendee value) checkInAttendee,
    required TResult Function(_LoadCheckIns value) loadCheckIns,
    required TResult Function(_ValidateQrCode value) validateQrCode,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_SearchAttendee value) searchAttendee,
    required TResult Function(_StartScanning value) startScanning,
    required TResult Function(_StopScanning value) stopScanning,
  }) {
    return startScanning(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScanQrCode value)? scanQrCode,
    TResult? Function(_CheckInAttendee value)? checkInAttendee,
    TResult? Function(_LoadCheckIns value)? loadCheckIns,
    TResult? Function(_ValidateQrCode value)? validateQrCode,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_SearchAttendee value)? searchAttendee,
    TResult? Function(_StartScanning value)? startScanning,
    TResult? Function(_StopScanning value)? stopScanning,
  }) {
    return startScanning?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScanQrCode value)? scanQrCode,
    TResult Function(_CheckInAttendee value)? checkInAttendee,
    TResult Function(_LoadCheckIns value)? loadCheckIns,
    TResult Function(_ValidateQrCode value)? validateQrCode,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_SearchAttendee value)? searchAttendee,
    TResult Function(_StartScanning value)? startScanning,
    TResult Function(_StopScanning value)? stopScanning,
    required TResult orElse(),
  }) {
    if (startScanning != null) {
      return startScanning(this);
    }
    return orElse();
  }
}

abstract class _StartScanning implements CheckInEvent {
  const factory _StartScanning() = _$StartScanningImpl;
}

/// @nodoc
abstract class _$$StopScanningImplCopyWith<$Res> {
  factory _$$StopScanningImplCopyWith(
          _$StopScanningImpl value, $Res Function(_$StopScanningImpl) then) =
      __$$StopScanningImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopScanningImplCopyWithImpl<$Res>
    extends _$CheckInEventCopyWithImpl<$Res, _$StopScanningImpl>
    implements _$$StopScanningImplCopyWith<$Res> {
  __$$StopScanningImplCopyWithImpl(
      _$StopScanningImpl _value, $Res Function(_$StopScanningImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckInEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StopScanningImpl implements _StopScanning {
  const _$StopScanningImpl();

  @override
  String toString() {
    return 'CheckInEvent.stopScanning()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopScanningImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String qrCode, String eventId) scanQrCode,
    required TResult Function(
            String attendeeId, String eventId, CheckInMethod method)
        checkInAttendee,
    required TResult Function(String eventId) loadCheckIns,
    required TResult Function(String qrCode) validateQrCode,
    required TResult Function() resetState,
    required TResult Function(String query, String eventId) searchAttendee,
    required TResult Function() startScanning,
    required TResult Function() stopScanning,
  }) {
    return stopScanning();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String qrCode, String eventId)? scanQrCode,
    TResult? Function(String attendeeId, String eventId, CheckInMethod method)?
        checkInAttendee,
    TResult? Function(String eventId)? loadCheckIns,
    TResult? Function(String qrCode)? validateQrCode,
    TResult? Function()? resetState,
    TResult? Function(String query, String eventId)? searchAttendee,
    TResult? Function()? startScanning,
    TResult? Function()? stopScanning,
  }) {
    return stopScanning?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String qrCode, String eventId)? scanQrCode,
    TResult Function(String attendeeId, String eventId, CheckInMethod method)?
        checkInAttendee,
    TResult Function(String eventId)? loadCheckIns,
    TResult Function(String qrCode)? validateQrCode,
    TResult Function()? resetState,
    TResult Function(String query, String eventId)? searchAttendee,
    TResult Function()? startScanning,
    TResult Function()? stopScanning,
    required TResult orElse(),
  }) {
    if (stopScanning != null) {
      return stopScanning();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScanQrCode value) scanQrCode,
    required TResult Function(_CheckInAttendee value) checkInAttendee,
    required TResult Function(_LoadCheckIns value) loadCheckIns,
    required TResult Function(_ValidateQrCode value) validateQrCode,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_SearchAttendee value) searchAttendee,
    required TResult Function(_StartScanning value) startScanning,
    required TResult Function(_StopScanning value) stopScanning,
  }) {
    return stopScanning(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScanQrCode value)? scanQrCode,
    TResult? Function(_CheckInAttendee value)? checkInAttendee,
    TResult? Function(_LoadCheckIns value)? loadCheckIns,
    TResult? Function(_ValidateQrCode value)? validateQrCode,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_SearchAttendee value)? searchAttendee,
    TResult? Function(_StartScanning value)? startScanning,
    TResult? Function(_StopScanning value)? stopScanning,
  }) {
    return stopScanning?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScanQrCode value)? scanQrCode,
    TResult Function(_CheckInAttendee value)? checkInAttendee,
    TResult Function(_LoadCheckIns value)? loadCheckIns,
    TResult Function(_ValidateQrCode value)? validateQrCode,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_SearchAttendee value)? searchAttendee,
    TResult Function(_StartScanning value)? startScanning,
    TResult Function(_StopScanning value)? stopScanning,
    required TResult orElse(),
  }) {
    if (stopScanning != null) {
      return stopScanning(this);
    }
    return orElse();
  }
}

abstract class _StopScanning implements CheckInEvent {
  const factory _StopScanning() = _$StopScanningImpl;
}
