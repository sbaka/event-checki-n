// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_in_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckInState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() scanning,
    required TResult Function() processing,
    required TResult Function(Attendee attendee) qrValidated,
    required TResult Function(CheckIn checkIn, Attendee attendee)
        checkInSuccess,
    required TResult Function(Failure failure, Attendee? attendee)
        checkInFailure,
    required TResult Function(List<Attendee> attendees) attendeesLoaded,
    required TResult Function(List<CheckIn> checkIns) checkInsLoaded,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? scanning,
    TResult? Function()? processing,
    TResult? Function(Attendee attendee)? qrValidated,
    TResult? Function(CheckIn checkIn, Attendee attendee)? checkInSuccess,
    TResult? Function(Failure failure, Attendee? attendee)? checkInFailure,
    TResult? Function(List<Attendee> attendees)? attendeesLoaded,
    TResult? Function(List<CheckIn> checkIns)? checkInsLoaded,
    TResult? Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? scanning,
    TResult Function()? processing,
    TResult Function(Attendee attendee)? qrValidated,
    TResult Function(CheckIn checkIn, Attendee attendee)? checkInSuccess,
    TResult Function(Failure failure, Attendee? attendee)? checkInFailure,
    TResult Function(List<Attendee> attendees)? attendeesLoaded,
    TResult Function(List<CheckIn> checkIns)? checkInsLoaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Scanning value) scanning,
    required TResult Function(_Processing value) processing,
    required TResult Function(_QrValidated value) qrValidated,
    required TResult Function(_CheckInSuccess value) checkInSuccess,
    required TResult Function(_CheckInFailure value) checkInFailure,
    required TResult Function(_AttendeesLoaded value) attendeesLoaded,
    required TResult Function(_CheckInsLoaded value) checkInsLoaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Scanning value)? scanning,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_QrValidated value)? qrValidated,
    TResult? Function(_CheckInSuccess value)? checkInSuccess,
    TResult? Function(_CheckInFailure value)? checkInFailure,
    TResult? Function(_AttendeesLoaded value)? attendeesLoaded,
    TResult? Function(_CheckInsLoaded value)? checkInsLoaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Scanning value)? scanning,
    TResult Function(_Processing value)? processing,
    TResult Function(_QrValidated value)? qrValidated,
    TResult Function(_CheckInSuccess value)? checkInSuccess,
    TResult Function(_CheckInFailure value)? checkInFailure,
    TResult Function(_AttendeesLoaded value)? attendeesLoaded,
    TResult Function(_CheckInsLoaded value)? checkInsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckInStateCopyWith<$Res> {
  factory $CheckInStateCopyWith(
          CheckInState value, $Res Function(CheckInState) then) =
      _$CheckInStateCopyWithImpl<$Res, CheckInState>;
}

/// @nodoc
class _$CheckInStateCopyWithImpl<$Res, $Val extends CheckInState>
    implements $CheckInStateCopyWith<$Res> {
  _$CheckInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CheckInStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CheckInState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() scanning,
    required TResult Function() processing,
    required TResult Function(Attendee attendee) qrValidated,
    required TResult Function(CheckIn checkIn, Attendee attendee)
        checkInSuccess,
    required TResult Function(Failure failure, Attendee? attendee)
        checkInFailure,
    required TResult Function(List<Attendee> attendees) attendeesLoaded,
    required TResult Function(List<CheckIn> checkIns) checkInsLoaded,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? scanning,
    TResult? Function()? processing,
    TResult? Function(Attendee attendee)? qrValidated,
    TResult? Function(CheckIn checkIn, Attendee attendee)? checkInSuccess,
    TResult? Function(Failure failure, Attendee? attendee)? checkInFailure,
    TResult? Function(List<Attendee> attendees)? attendeesLoaded,
    TResult? Function(List<CheckIn> checkIns)? checkInsLoaded,
    TResult? Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? scanning,
    TResult Function()? processing,
    TResult Function(Attendee attendee)? qrValidated,
    TResult Function(CheckIn checkIn, Attendee attendee)? checkInSuccess,
    TResult Function(Failure failure, Attendee? attendee)? checkInFailure,
    TResult Function(List<Attendee> attendees)? attendeesLoaded,
    TResult Function(List<CheckIn> checkIns)? checkInsLoaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Scanning value) scanning,
    required TResult Function(_Processing value) processing,
    required TResult Function(_QrValidated value) qrValidated,
    required TResult Function(_CheckInSuccess value) checkInSuccess,
    required TResult Function(_CheckInFailure value) checkInFailure,
    required TResult Function(_AttendeesLoaded value) attendeesLoaded,
    required TResult Function(_CheckInsLoaded value) checkInsLoaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Scanning value)? scanning,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_QrValidated value)? qrValidated,
    TResult? Function(_CheckInSuccess value)? checkInSuccess,
    TResult? Function(_CheckInFailure value)? checkInFailure,
    TResult? Function(_AttendeesLoaded value)? attendeesLoaded,
    TResult? Function(_CheckInsLoaded value)? checkInsLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Scanning value)? scanning,
    TResult Function(_Processing value)? processing,
    TResult Function(_QrValidated value)? qrValidated,
    TResult Function(_CheckInSuccess value)? checkInSuccess,
    TResult Function(_CheckInFailure value)? checkInFailure,
    TResult Function(_AttendeesLoaded value)? attendeesLoaded,
    TResult Function(_CheckInsLoaded value)? checkInsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CheckInState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ScanningImplCopyWith<$Res> {
  factory _$$ScanningImplCopyWith(
          _$ScanningImpl value, $Res Function(_$ScanningImpl) then) =
      __$$ScanningImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScanningImplCopyWithImpl<$Res>
    extends _$CheckInStateCopyWithImpl<$Res, _$ScanningImpl>
    implements _$$ScanningImplCopyWith<$Res> {
  __$$ScanningImplCopyWithImpl(
      _$ScanningImpl _value, $Res Function(_$ScanningImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ScanningImpl implements _Scanning {
  const _$ScanningImpl();

  @override
  String toString() {
    return 'CheckInState.scanning()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ScanningImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() scanning,
    required TResult Function() processing,
    required TResult Function(Attendee attendee) qrValidated,
    required TResult Function(CheckIn checkIn, Attendee attendee)
        checkInSuccess,
    required TResult Function(Failure failure, Attendee? attendee)
        checkInFailure,
    required TResult Function(List<Attendee> attendees) attendeesLoaded,
    required TResult Function(List<CheckIn> checkIns) checkInsLoaded,
    required TResult Function(Failure failure) error,
  }) {
    return scanning();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? scanning,
    TResult? Function()? processing,
    TResult? Function(Attendee attendee)? qrValidated,
    TResult? Function(CheckIn checkIn, Attendee attendee)? checkInSuccess,
    TResult? Function(Failure failure, Attendee? attendee)? checkInFailure,
    TResult? Function(List<Attendee> attendees)? attendeesLoaded,
    TResult? Function(List<CheckIn> checkIns)? checkInsLoaded,
    TResult? Function(Failure failure)? error,
  }) {
    return scanning?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? scanning,
    TResult Function()? processing,
    TResult Function(Attendee attendee)? qrValidated,
    TResult Function(CheckIn checkIn, Attendee attendee)? checkInSuccess,
    TResult Function(Failure failure, Attendee? attendee)? checkInFailure,
    TResult Function(List<Attendee> attendees)? attendeesLoaded,
    TResult Function(List<CheckIn> checkIns)? checkInsLoaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (scanning != null) {
      return scanning();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Scanning value) scanning,
    required TResult Function(_Processing value) processing,
    required TResult Function(_QrValidated value) qrValidated,
    required TResult Function(_CheckInSuccess value) checkInSuccess,
    required TResult Function(_CheckInFailure value) checkInFailure,
    required TResult Function(_AttendeesLoaded value) attendeesLoaded,
    required TResult Function(_CheckInsLoaded value) checkInsLoaded,
    required TResult Function(_Error value) error,
  }) {
    return scanning(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Scanning value)? scanning,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_QrValidated value)? qrValidated,
    TResult? Function(_CheckInSuccess value)? checkInSuccess,
    TResult? Function(_CheckInFailure value)? checkInFailure,
    TResult? Function(_AttendeesLoaded value)? attendeesLoaded,
    TResult? Function(_CheckInsLoaded value)? checkInsLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return scanning?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Scanning value)? scanning,
    TResult Function(_Processing value)? processing,
    TResult Function(_QrValidated value)? qrValidated,
    TResult Function(_CheckInSuccess value)? checkInSuccess,
    TResult Function(_CheckInFailure value)? checkInFailure,
    TResult Function(_AttendeesLoaded value)? attendeesLoaded,
    TResult Function(_CheckInsLoaded value)? checkInsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (scanning != null) {
      return scanning(this);
    }
    return orElse();
  }
}

abstract class _Scanning implements CheckInState {
  const factory _Scanning() = _$ScanningImpl;
}

/// @nodoc
abstract class _$$ProcessingImplCopyWith<$Res> {
  factory _$$ProcessingImplCopyWith(
          _$ProcessingImpl value, $Res Function(_$ProcessingImpl) then) =
      __$$ProcessingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProcessingImplCopyWithImpl<$Res>
    extends _$CheckInStateCopyWithImpl<$Res, _$ProcessingImpl>
    implements _$$ProcessingImplCopyWith<$Res> {
  __$$ProcessingImplCopyWithImpl(
      _$ProcessingImpl _value, $Res Function(_$ProcessingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProcessingImpl implements _Processing {
  const _$ProcessingImpl();

  @override
  String toString() {
    return 'CheckInState.processing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProcessingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() scanning,
    required TResult Function() processing,
    required TResult Function(Attendee attendee) qrValidated,
    required TResult Function(CheckIn checkIn, Attendee attendee)
        checkInSuccess,
    required TResult Function(Failure failure, Attendee? attendee)
        checkInFailure,
    required TResult Function(List<Attendee> attendees) attendeesLoaded,
    required TResult Function(List<CheckIn> checkIns) checkInsLoaded,
    required TResult Function(Failure failure) error,
  }) {
    return processing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? scanning,
    TResult? Function()? processing,
    TResult? Function(Attendee attendee)? qrValidated,
    TResult? Function(CheckIn checkIn, Attendee attendee)? checkInSuccess,
    TResult? Function(Failure failure, Attendee? attendee)? checkInFailure,
    TResult? Function(List<Attendee> attendees)? attendeesLoaded,
    TResult? Function(List<CheckIn> checkIns)? checkInsLoaded,
    TResult? Function(Failure failure)? error,
  }) {
    return processing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? scanning,
    TResult Function()? processing,
    TResult Function(Attendee attendee)? qrValidated,
    TResult Function(CheckIn checkIn, Attendee attendee)? checkInSuccess,
    TResult Function(Failure failure, Attendee? attendee)? checkInFailure,
    TResult Function(List<Attendee> attendees)? attendeesLoaded,
    TResult Function(List<CheckIn> checkIns)? checkInsLoaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Scanning value) scanning,
    required TResult Function(_Processing value) processing,
    required TResult Function(_QrValidated value) qrValidated,
    required TResult Function(_CheckInSuccess value) checkInSuccess,
    required TResult Function(_CheckInFailure value) checkInFailure,
    required TResult Function(_AttendeesLoaded value) attendeesLoaded,
    required TResult Function(_CheckInsLoaded value) checkInsLoaded,
    required TResult Function(_Error value) error,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Scanning value)? scanning,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_QrValidated value)? qrValidated,
    TResult? Function(_CheckInSuccess value)? checkInSuccess,
    TResult? Function(_CheckInFailure value)? checkInFailure,
    TResult? Function(_AttendeesLoaded value)? attendeesLoaded,
    TResult? Function(_CheckInsLoaded value)? checkInsLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Scanning value)? scanning,
    TResult Function(_Processing value)? processing,
    TResult Function(_QrValidated value)? qrValidated,
    TResult Function(_CheckInSuccess value)? checkInSuccess,
    TResult Function(_CheckInFailure value)? checkInFailure,
    TResult Function(_AttendeesLoaded value)? attendeesLoaded,
    TResult Function(_CheckInsLoaded value)? checkInsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class _Processing implements CheckInState {
  const factory _Processing() = _$ProcessingImpl;
}

/// @nodoc
abstract class _$$QrValidatedImplCopyWith<$Res> {
  factory _$$QrValidatedImplCopyWith(
          _$QrValidatedImpl value, $Res Function(_$QrValidatedImpl) then) =
      __$$QrValidatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Attendee attendee});

  $AttendeeCopyWith<$Res> get attendee;
}

/// @nodoc
class __$$QrValidatedImplCopyWithImpl<$Res>
    extends _$CheckInStateCopyWithImpl<$Res, _$QrValidatedImpl>
    implements _$$QrValidatedImplCopyWith<$Res> {
  __$$QrValidatedImplCopyWithImpl(
      _$QrValidatedImpl _value, $Res Function(_$QrValidatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendee = null,
  }) {
    return _then(_$QrValidatedImpl(
      null == attendee
          ? _value.attendee
          : attendee // ignore: cast_nullable_to_non_nullable
              as Attendee,
    ));
  }

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendeeCopyWith<$Res> get attendee {
    return $AttendeeCopyWith<$Res>(_value.attendee, (value) {
      return _then(_value.copyWith(attendee: value));
    });
  }
}

/// @nodoc

class _$QrValidatedImpl implements _QrValidated {
  const _$QrValidatedImpl(this.attendee);

  @override
  final Attendee attendee;

  @override
  String toString() {
    return 'CheckInState.qrValidated(attendee: $attendee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QrValidatedImpl &&
            (identical(other.attendee, attendee) ||
                other.attendee == attendee));
  }

  @override
  int get hashCode => Object.hash(runtimeType, attendee);

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QrValidatedImplCopyWith<_$QrValidatedImpl> get copyWith =>
      __$$QrValidatedImplCopyWithImpl<_$QrValidatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() scanning,
    required TResult Function() processing,
    required TResult Function(Attendee attendee) qrValidated,
    required TResult Function(CheckIn checkIn, Attendee attendee)
        checkInSuccess,
    required TResult Function(Failure failure, Attendee? attendee)
        checkInFailure,
    required TResult Function(List<Attendee> attendees) attendeesLoaded,
    required TResult Function(List<CheckIn> checkIns) checkInsLoaded,
    required TResult Function(Failure failure) error,
  }) {
    return qrValidated(attendee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? scanning,
    TResult? Function()? processing,
    TResult? Function(Attendee attendee)? qrValidated,
    TResult? Function(CheckIn checkIn, Attendee attendee)? checkInSuccess,
    TResult? Function(Failure failure, Attendee? attendee)? checkInFailure,
    TResult? Function(List<Attendee> attendees)? attendeesLoaded,
    TResult? Function(List<CheckIn> checkIns)? checkInsLoaded,
    TResult? Function(Failure failure)? error,
  }) {
    return qrValidated?.call(attendee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? scanning,
    TResult Function()? processing,
    TResult Function(Attendee attendee)? qrValidated,
    TResult Function(CheckIn checkIn, Attendee attendee)? checkInSuccess,
    TResult Function(Failure failure, Attendee? attendee)? checkInFailure,
    TResult Function(List<Attendee> attendees)? attendeesLoaded,
    TResult Function(List<CheckIn> checkIns)? checkInsLoaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (qrValidated != null) {
      return qrValidated(attendee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Scanning value) scanning,
    required TResult Function(_Processing value) processing,
    required TResult Function(_QrValidated value) qrValidated,
    required TResult Function(_CheckInSuccess value) checkInSuccess,
    required TResult Function(_CheckInFailure value) checkInFailure,
    required TResult Function(_AttendeesLoaded value) attendeesLoaded,
    required TResult Function(_CheckInsLoaded value) checkInsLoaded,
    required TResult Function(_Error value) error,
  }) {
    return qrValidated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Scanning value)? scanning,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_QrValidated value)? qrValidated,
    TResult? Function(_CheckInSuccess value)? checkInSuccess,
    TResult? Function(_CheckInFailure value)? checkInFailure,
    TResult? Function(_AttendeesLoaded value)? attendeesLoaded,
    TResult? Function(_CheckInsLoaded value)? checkInsLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return qrValidated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Scanning value)? scanning,
    TResult Function(_Processing value)? processing,
    TResult Function(_QrValidated value)? qrValidated,
    TResult Function(_CheckInSuccess value)? checkInSuccess,
    TResult Function(_CheckInFailure value)? checkInFailure,
    TResult Function(_AttendeesLoaded value)? attendeesLoaded,
    TResult Function(_CheckInsLoaded value)? checkInsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (qrValidated != null) {
      return qrValidated(this);
    }
    return orElse();
  }
}

abstract class _QrValidated implements CheckInState {
  const factory _QrValidated(final Attendee attendee) = _$QrValidatedImpl;

  Attendee get attendee;

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QrValidatedImplCopyWith<_$QrValidatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckInSuccessImplCopyWith<$Res> {
  factory _$$CheckInSuccessImplCopyWith(_$CheckInSuccessImpl value,
          $Res Function(_$CheckInSuccessImpl) then) =
      __$$CheckInSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CheckIn checkIn, Attendee attendee});

  $CheckInCopyWith<$Res> get checkIn;
  $AttendeeCopyWith<$Res> get attendee;
}

/// @nodoc
class __$$CheckInSuccessImplCopyWithImpl<$Res>
    extends _$CheckInStateCopyWithImpl<$Res, _$CheckInSuccessImpl>
    implements _$$CheckInSuccessImplCopyWith<$Res> {
  __$$CheckInSuccessImplCopyWithImpl(
      _$CheckInSuccessImpl _value, $Res Function(_$CheckInSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkIn = null,
    Object? attendee = null,
  }) {
    return _then(_$CheckInSuccessImpl(
      null == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as CheckIn,
      null == attendee
          ? _value.attendee
          : attendee // ignore: cast_nullable_to_non_nullable
              as Attendee,
    ));
  }

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CheckInCopyWith<$Res> get checkIn {
    return $CheckInCopyWith<$Res>(_value.checkIn, (value) {
      return _then(_value.copyWith(checkIn: value));
    });
  }

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendeeCopyWith<$Res> get attendee {
    return $AttendeeCopyWith<$Res>(_value.attendee, (value) {
      return _then(_value.copyWith(attendee: value));
    });
  }
}

/// @nodoc

class _$CheckInSuccessImpl implements _CheckInSuccess {
  const _$CheckInSuccessImpl(this.checkIn, this.attendee);

  @override
  final CheckIn checkIn;
  @override
  final Attendee attendee;

  @override
  String toString() {
    return 'CheckInState.checkInSuccess(checkIn: $checkIn, attendee: $attendee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckInSuccessImpl &&
            (identical(other.checkIn, checkIn) || other.checkIn == checkIn) &&
            (identical(other.attendee, attendee) ||
                other.attendee == attendee));
  }

  @override
  int get hashCode => Object.hash(runtimeType, checkIn, attendee);

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckInSuccessImplCopyWith<_$CheckInSuccessImpl> get copyWith =>
      __$$CheckInSuccessImplCopyWithImpl<_$CheckInSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() scanning,
    required TResult Function() processing,
    required TResult Function(Attendee attendee) qrValidated,
    required TResult Function(CheckIn checkIn, Attendee attendee)
        checkInSuccess,
    required TResult Function(Failure failure, Attendee? attendee)
        checkInFailure,
    required TResult Function(List<Attendee> attendees) attendeesLoaded,
    required TResult Function(List<CheckIn> checkIns) checkInsLoaded,
    required TResult Function(Failure failure) error,
  }) {
    return checkInSuccess(checkIn, attendee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? scanning,
    TResult? Function()? processing,
    TResult? Function(Attendee attendee)? qrValidated,
    TResult? Function(CheckIn checkIn, Attendee attendee)? checkInSuccess,
    TResult? Function(Failure failure, Attendee? attendee)? checkInFailure,
    TResult? Function(List<Attendee> attendees)? attendeesLoaded,
    TResult? Function(List<CheckIn> checkIns)? checkInsLoaded,
    TResult? Function(Failure failure)? error,
  }) {
    return checkInSuccess?.call(checkIn, attendee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? scanning,
    TResult Function()? processing,
    TResult Function(Attendee attendee)? qrValidated,
    TResult Function(CheckIn checkIn, Attendee attendee)? checkInSuccess,
    TResult Function(Failure failure, Attendee? attendee)? checkInFailure,
    TResult Function(List<Attendee> attendees)? attendeesLoaded,
    TResult Function(List<CheckIn> checkIns)? checkInsLoaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (checkInSuccess != null) {
      return checkInSuccess(checkIn, attendee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Scanning value) scanning,
    required TResult Function(_Processing value) processing,
    required TResult Function(_QrValidated value) qrValidated,
    required TResult Function(_CheckInSuccess value) checkInSuccess,
    required TResult Function(_CheckInFailure value) checkInFailure,
    required TResult Function(_AttendeesLoaded value) attendeesLoaded,
    required TResult Function(_CheckInsLoaded value) checkInsLoaded,
    required TResult Function(_Error value) error,
  }) {
    return checkInSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Scanning value)? scanning,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_QrValidated value)? qrValidated,
    TResult? Function(_CheckInSuccess value)? checkInSuccess,
    TResult? Function(_CheckInFailure value)? checkInFailure,
    TResult? Function(_AttendeesLoaded value)? attendeesLoaded,
    TResult? Function(_CheckInsLoaded value)? checkInsLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return checkInSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Scanning value)? scanning,
    TResult Function(_Processing value)? processing,
    TResult Function(_QrValidated value)? qrValidated,
    TResult Function(_CheckInSuccess value)? checkInSuccess,
    TResult Function(_CheckInFailure value)? checkInFailure,
    TResult Function(_AttendeesLoaded value)? attendeesLoaded,
    TResult Function(_CheckInsLoaded value)? checkInsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (checkInSuccess != null) {
      return checkInSuccess(this);
    }
    return orElse();
  }
}

abstract class _CheckInSuccess implements CheckInState {
  const factory _CheckInSuccess(
      final CheckIn checkIn, final Attendee attendee) = _$CheckInSuccessImpl;

  CheckIn get checkIn;
  Attendee get attendee;

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckInSuccessImplCopyWith<_$CheckInSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckInFailureImplCopyWith<$Res> {
  factory _$$CheckInFailureImplCopyWith(_$CheckInFailureImpl value,
          $Res Function(_$CheckInFailureImpl) then) =
      __$$CheckInFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure, Attendee? attendee});

  $AttendeeCopyWith<$Res>? get attendee;
}

/// @nodoc
class __$$CheckInFailureImplCopyWithImpl<$Res>
    extends _$CheckInStateCopyWithImpl<$Res, _$CheckInFailureImpl>
    implements _$$CheckInFailureImplCopyWith<$Res> {
  __$$CheckInFailureImplCopyWithImpl(
      _$CheckInFailureImpl _value, $Res Function(_$CheckInFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
    Object? attendee = freezed,
  }) {
    return _then(_$CheckInFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      attendee: freezed == attendee
          ? _value.attendee
          : attendee // ignore: cast_nullable_to_non_nullable
              as Attendee?,
    ));
  }

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendeeCopyWith<$Res>? get attendee {
    if (_value.attendee == null) {
      return null;
    }

    return $AttendeeCopyWith<$Res>(_value.attendee!, (value) {
      return _then(_value.copyWith(attendee: value));
    });
  }
}

/// @nodoc

class _$CheckInFailureImpl implements _CheckInFailure {
  const _$CheckInFailureImpl(this.failure, {this.attendee});

  @override
  final Failure failure;
  @override
  final Attendee? attendee;

  @override
  String toString() {
    return 'CheckInState.checkInFailure(failure: $failure, attendee: $attendee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckInFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.attendee, attendee) ||
                other.attendee == attendee));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure, attendee);

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckInFailureImplCopyWith<_$CheckInFailureImpl> get copyWith =>
      __$$CheckInFailureImplCopyWithImpl<_$CheckInFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() scanning,
    required TResult Function() processing,
    required TResult Function(Attendee attendee) qrValidated,
    required TResult Function(CheckIn checkIn, Attendee attendee)
        checkInSuccess,
    required TResult Function(Failure failure, Attendee? attendee)
        checkInFailure,
    required TResult Function(List<Attendee> attendees) attendeesLoaded,
    required TResult Function(List<CheckIn> checkIns) checkInsLoaded,
    required TResult Function(Failure failure) error,
  }) {
    return checkInFailure(failure, attendee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? scanning,
    TResult? Function()? processing,
    TResult? Function(Attendee attendee)? qrValidated,
    TResult? Function(CheckIn checkIn, Attendee attendee)? checkInSuccess,
    TResult? Function(Failure failure, Attendee? attendee)? checkInFailure,
    TResult? Function(List<Attendee> attendees)? attendeesLoaded,
    TResult? Function(List<CheckIn> checkIns)? checkInsLoaded,
    TResult? Function(Failure failure)? error,
  }) {
    return checkInFailure?.call(failure, attendee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? scanning,
    TResult Function()? processing,
    TResult Function(Attendee attendee)? qrValidated,
    TResult Function(CheckIn checkIn, Attendee attendee)? checkInSuccess,
    TResult Function(Failure failure, Attendee? attendee)? checkInFailure,
    TResult Function(List<Attendee> attendees)? attendeesLoaded,
    TResult Function(List<CheckIn> checkIns)? checkInsLoaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (checkInFailure != null) {
      return checkInFailure(failure, attendee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Scanning value) scanning,
    required TResult Function(_Processing value) processing,
    required TResult Function(_QrValidated value) qrValidated,
    required TResult Function(_CheckInSuccess value) checkInSuccess,
    required TResult Function(_CheckInFailure value) checkInFailure,
    required TResult Function(_AttendeesLoaded value) attendeesLoaded,
    required TResult Function(_CheckInsLoaded value) checkInsLoaded,
    required TResult Function(_Error value) error,
  }) {
    return checkInFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Scanning value)? scanning,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_QrValidated value)? qrValidated,
    TResult? Function(_CheckInSuccess value)? checkInSuccess,
    TResult? Function(_CheckInFailure value)? checkInFailure,
    TResult? Function(_AttendeesLoaded value)? attendeesLoaded,
    TResult? Function(_CheckInsLoaded value)? checkInsLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return checkInFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Scanning value)? scanning,
    TResult Function(_Processing value)? processing,
    TResult Function(_QrValidated value)? qrValidated,
    TResult Function(_CheckInSuccess value)? checkInSuccess,
    TResult Function(_CheckInFailure value)? checkInFailure,
    TResult Function(_AttendeesLoaded value)? attendeesLoaded,
    TResult Function(_CheckInsLoaded value)? checkInsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (checkInFailure != null) {
      return checkInFailure(this);
    }
    return orElse();
  }
}

abstract class _CheckInFailure implements CheckInState {
  const factory _CheckInFailure(final Failure failure,
      {final Attendee? attendee}) = _$CheckInFailureImpl;

  Failure get failure;
  Attendee? get attendee;

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckInFailureImplCopyWith<_$CheckInFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AttendeesLoadedImplCopyWith<$Res> {
  factory _$$AttendeesLoadedImplCopyWith(_$AttendeesLoadedImpl value,
          $Res Function(_$AttendeesLoadedImpl) then) =
      __$$AttendeesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Attendee> attendees});
}

/// @nodoc
class __$$AttendeesLoadedImplCopyWithImpl<$Res>
    extends _$CheckInStateCopyWithImpl<$Res, _$AttendeesLoadedImpl>
    implements _$$AttendeesLoadedImplCopyWith<$Res> {
  __$$AttendeesLoadedImplCopyWithImpl(
      _$AttendeesLoadedImpl _value, $Res Function(_$AttendeesLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendees = null,
  }) {
    return _then(_$AttendeesLoadedImpl(
      null == attendees
          ? _value._attendees
          : attendees // ignore: cast_nullable_to_non_nullable
              as List<Attendee>,
    ));
  }
}

/// @nodoc

class _$AttendeesLoadedImpl implements _AttendeesLoaded {
  const _$AttendeesLoadedImpl(final List<Attendee> attendees)
      : _attendees = attendees;

  final List<Attendee> _attendees;
  @override
  List<Attendee> get attendees {
    if (_attendees is EqualUnmodifiableListView) return _attendees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attendees);
  }

  @override
  String toString() {
    return 'CheckInState.attendeesLoaded(attendees: $attendees)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendeesLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._attendees, _attendees));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_attendees));

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendeesLoadedImplCopyWith<_$AttendeesLoadedImpl> get copyWith =>
      __$$AttendeesLoadedImplCopyWithImpl<_$AttendeesLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() scanning,
    required TResult Function() processing,
    required TResult Function(Attendee attendee) qrValidated,
    required TResult Function(CheckIn checkIn, Attendee attendee)
        checkInSuccess,
    required TResult Function(Failure failure, Attendee? attendee)
        checkInFailure,
    required TResult Function(List<Attendee> attendees) attendeesLoaded,
    required TResult Function(List<CheckIn> checkIns) checkInsLoaded,
    required TResult Function(Failure failure) error,
  }) {
    return attendeesLoaded(attendees);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? scanning,
    TResult? Function()? processing,
    TResult? Function(Attendee attendee)? qrValidated,
    TResult? Function(CheckIn checkIn, Attendee attendee)? checkInSuccess,
    TResult? Function(Failure failure, Attendee? attendee)? checkInFailure,
    TResult? Function(List<Attendee> attendees)? attendeesLoaded,
    TResult? Function(List<CheckIn> checkIns)? checkInsLoaded,
    TResult? Function(Failure failure)? error,
  }) {
    return attendeesLoaded?.call(attendees);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? scanning,
    TResult Function()? processing,
    TResult Function(Attendee attendee)? qrValidated,
    TResult Function(CheckIn checkIn, Attendee attendee)? checkInSuccess,
    TResult Function(Failure failure, Attendee? attendee)? checkInFailure,
    TResult Function(List<Attendee> attendees)? attendeesLoaded,
    TResult Function(List<CheckIn> checkIns)? checkInsLoaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (attendeesLoaded != null) {
      return attendeesLoaded(attendees);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Scanning value) scanning,
    required TResult Function(_Processing value) processing,
    required TResult Function(_QrValidated value) qrValidated,
    required TResult Function(_CheckInSuccess value) checkInSuccess,
    required TResult Function(_CheckInFailure value) checkInFailure,
    required TResult Function(_AttendeesLoaded value) attendeesLoaded,
    required TResult Function(_CheckInsLoaded value) checkInsLoaded,
    required TResult Function(_Error value) error,
  }) {
    return attendeesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Scanning value)? scanning,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_QrValidated value)? qrValidated,
    TResult? Function(_CheckInSuccess value)? checkInSuccess,
    TResult? Function(_CheckInFailure value)? checkInFailure,
    TResult? Function(_AttendeesLoaded value)? attendeesLoaded,
    TResult? Function(_CheckInsLoaded value)? checkInsLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return attendeesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Scanning value)? scanning,
    TResult Function(_Processing value)? processing,
    TResult Function(_QrValidated value)? qrValidated,
    TResult Function(_CheckInSuccess value)? checkInSuccess,
    TResult Function(_CheckInFailure value)? checkInFailure,
    TResult Function(_AttendeesLoaded value)? attendeesLoaded,
    TResult Function(_CheckInsLoaded value)? checkInsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (attendeesLoaded != null) {
      return attendeesLoaded(this);
    }
    return orElse();
  }
}

abstract class _AttendeesLoaded implements CheckInState {
  const factory _AttendeesLoaded(final List<Attendee> attendees) =
      _$AttendeesLoadedImpl;

  List<Attendee> get attendees;

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendeesLoadedImplCopyWith<_$AttendeesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckInsLoadedImplCopyWith<$Res> {
  factory _$$CheckInsLoadedImplCopyWith(_$CheckInsLoadedImpl value,
          $Res Function(_$CheckInsLoadedImpl) then) =
      __$$CheckInsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CheckIn> checkIns});
}

/// @nodoc
class __$$CheckInsLoadedImplCopyWithImpl<$Res>
    extends _$CheckInStateCopyWithImpl<$Res, _$CheckInsLoadedImpl>
    implements _$$CheckInsLoadedImplCopyWith<$Res> {
  __$$CheckInsLoadedImplCopyWithImpl(
      _$CheckInsLoadedImpl _value, $Res Function(_$CheckInsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkIns = null,
  }) {
    return _then(_$CheckInsLoadedImpl(
      null == checkIns
          ? _value._checkIns
          : checkIns // ignore: cast_nullable_to_non_nullable
              as List<CheckIn>,
    ));
  }
}

/// @nodoc

class _$CheckInsLoadedImpl implements _CheckInsLoaded {
  const _$CheckInsLoadedImpl(final List<CheckIn> checkIns)
      : _checkIns = checkIns;

  final List<CheckIn> _checkIns;
  @override
  List<CheckIn> get checkIns {
    if (_checkIns is EqualUnmodifiableListView) return _checkIns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_checkIns);
  }

  @override
  String toString() {
    return 'CheckInState.checkInsLoaded(checkIns: $checkIns)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckInsLoadedImpl &&
            const DeepCollectionEquality().equals(other._checkIns, _checkIns));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_checkIns));

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckInsLoadedImplCopyWith<_$CheckInsLoadedImpl> get copyWith =>
      __$$CheckInsLoadedImplCopyWithImpl<_$CheckInsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() scanning,
    required TResult Function() processing,
    required TResult Function(Attendee attendee) qrValidated,
    required TResult Function(CheckIn checkIn, Attendee attendee)
        checkInSuccess,
    required TResult Function(Failure failure, Attendee? attendee)
        checkInFailure,
    required TResult Function(List<Attendee> attendees) attendeesLoaded,
    required TResult Function(List<CheckIn> checkIns) checkInsLoaded,
    required TResult Function(Failure failure) error,
  }) {
    return checkInsLoaded(checkIns);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? scanning,
    TResult? Function()? processing,
    TResult? Function(Attendee attendee)? qrValidated,
    TResult? Function(CheckIn checkIn, Attendee attendee)? checkInSuccess,
    TResult? Function(Failure failure, Attendee? attendee)? checkInFailure,
    TResult? Function(List<Attendee> attendees)? attendeesLoaded,
    TResult? Function(List<CheckIn> checkIns)? checkInsLoaded,
    TResult? Function(Failure failure)? error,
  }) {
    return checkInsLoaded?.call(checkIns);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? scanning,
    TResult Function()? processing,
    TResult Function(Attendee attendee)? qrValidated,
    TResult Function(CheckIn checkIn, Attendee attendee)? checkInSuccess,
    TResult Function(Failure failure, Attendee? attendee)? checkInFailure,
    TResult Function(List<Attendee> attendees)? attendeesLoaded,
    TResult Function(List<CheckIn> checkIns)? checkInsLoaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (checkInsLoaded != null) {
      return checkInsLoaded(checkIns);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Scanning value) scanning,
    required TResult Function(_Processing value) processing,
    required TResult Function(_QrValidated value) qrValidated,
    required TResult Function(_CheckInSuccess value) checkInSuccess,
    required TResult Function(_CheckInFailure value) checkInFailure,
    required TResult Function(_AttendeesLoaded value) attendeesLoaded,
    required TResult Function(_CheckInsLoaded value) checkInsLoaded,
    required TResult Function(_Error value) error,
  }) {
    return checkInsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Scanning value)? scanning,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_QrValidated value)? qrValidated,
    TResult? Function(_CheckInSuccess value)? checkInSuccess,
    TResult? Function(_CheckInFailure value)? checkInFailure,
    TResult? Function(_AttendeesLoaded value)? attendeesLoaded,
    TResult? Function(_CheckInsLoaded value)? checkInsLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return checkInsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Scanning value)? scanning,
    TResult Function(_Processing value)? processing,
    TResult Function(_QrValidated value)? qrValidated,
    TResult Function(_CheckInSuccess value)? checkInSuccess,
    TResult Function(_CheckInFailure value)? checkInFailure,
    TResult Function(_AttendeesLoaded value)? attendeesLoaded,
    TResult Function(_CheckInsLoaded value)? checkInsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (checkInsLoaded != null) {
      return checkInsLoaded(this);
    }
    return orElse();
  }
}

abstract class _CheckInsLoaded implements CheckInState {
  const factory _CheckInsLoaded(final List<CheckIn> checkIns) =
      _$CheckInsLoadedImpl;

  List<CheckIn> get checkIns;

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckInsLoadedImplCopyWith<_$CheckInsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CheckInStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ErrorImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'CheckInState.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() scanning,
    required TResult Function() processing,
    required TResult Function(Attendee attendee) qrValidated,
    required TResult Function(CheckIn checkIn, Attendee attendee)
        checkInSuccess,
    required TResult Function(Failure failure, Attendee? attendee)
        checkInFailure,
    required TResult Function(List<Attendee> attendees) attendeesLoaded,
    required TResult Function(List<CheckIn> checkIns) checkInsLoaded,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? scanning,
    TResult? Function()? processing,
    TResult? Function(Attendee attendee)? qrValidated,
    TResult? Function(CheckIn checkIn, Attendee attendee)? checkInSuccess,
    TResult? Function(Failure failure, Attendee? attendee)? checkInFailure,
    TResult? Function(List<Attendee> attendees)? attendeesLoaded,
    TResult? Function(List<CheckIn> checkIns)? checkInsLoaded,
    TResult? Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? scanning,
    TResult Function()? processing,
    TResult Function(Attendee attendee)? qrValidated,
    TResult Function(CheckIn checkIn, Attendee attendee)? checkInSuccess,
    TResult Function(Failure failure, Attendee? attendee)? checkInFailure,
    TResult Function(List<Attendee> attendees)? attendeesLoaded,
    TResult Function(List<CheckIn> checkIns)? checkInsLoaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Scanning value) scanning,
    required TResult Function(_Processing value) processing,
    required TResult Function(_QrValidated value) qrValidated,
    required TResult Function(_CheckInSuccess value) checkInSuccess,
    required TResult Function(_CheckInFailure value) checkInFailure,
    required TResult Function(_AttendeesLoaded value) attendeesLoaded,
    required TResult Function(_CheckInsLoaded value) checkInsLoaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Scanning value)? scanning,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_QrValidated value)? qrValidated,
    TResult? Function(_CheckInSuccess value)? checkInSuccess,
    TResult? Function(_CheckInFailure value)? checkInFailure,
    TResult? Function(_AttendeesLoaded value)? attendeesLoaded,
    TResult? Function(_CheckInsLoaded value)? checkInsLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Scanning value)? scanning,
    TResult Function(_Processing value)? processing,
    TResult Function(_QrValidated value)? qrValidated,
    TResult Function(_CheckInSuccess value)? checkInSuccess,
    TResult Function(_CheckInFailure value)? checkInFailure,
    TResult Function(_AttendeesLoaded value)? attendeesLoaded,
    TResult Function(_CheckInsLoaded value)? checkInsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CheckInState {
  const factory _Error(final Failure failure) = _$ErrorImpl;

  Failure get failure;

  /// Create a copy of CheckInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
