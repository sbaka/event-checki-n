// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_analytics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventAnalytics _$EventAnalyticsFromJson(Map<String, dynamic> json) {
  return _EventAnalytics.fromJson(json);
}

/// @nodoc
mixin _$EventAnalytics {
  String get eventId => throw _privateConstructorUsedError;
  String get eventName => throw _privateConstructorUsedError;
  int get totalAttendees => throw _privateConstructorUsedError;
  int get checkedInCount => throw _privateConstructorUsedError;
  double get checkInRate => throw _privateConstructorUsedError;
  int get noShowCount => throw _privateConstructorUsedError;
  Map<String, int> get checkInsByHour => throw _privateConstructorUsedError;
  Map<String, int> get checkInsByTicketType =>
      throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;

  /// Serializes this EventAnalytics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventAnalyticsCopyWith<EventAnalytics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventAnalyticsCopyWith<$Res> {
  factory $EventAnalyticsCopyWith(
          EventAnalytics value, $Res Function(EventAnalytics) then) =
      _$EventAnalyticsCopyWithImpl<$Res, EventAnalytics>;
  @useResult
  $Res call(
      {String eventId,
      String eventName,
      int totalAttendees,
      int checkedInCount,
      double checkInRate,
      int noShowCount,
      Map<String, int> checkInsByHour,
      Map<String, int> checkInsByTicketType,
      DateTime lastUpdated});
}

/// @nodoc
class _$EventAnalyticsCopyWithImpl<$Res, $Val extends EventAnalytics>
    implements $EventAnalyticsCopyWith<$Res> {
  _$EventAnalyticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? eventName = null,
    Object? totalAttendees = null,
    Object? checkedInCount = null,
    Object? checkInRate = null,
    Object? noShowCount = null,
    Object? checkInsByHour = null,
    Object? checkInsByTicketType = null,
    Object? lastUpdated = null,
  }) {
    return _then(_value.copyWith(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      totalAttendees: null == totalAttendees
          ? _value.totalAttendees
          : totalAttendees // ignore: cast_nullable_to_non_nullable
              as int,
      checkedInCount: null == checkedInCount
          ? _value.checkedInCount
          : checkedInCount // ignore: cast_nullable_to_non_nullable
              as int,
      checkInRate: null == checkInRate
          ? _value.checkInRate
          : checkInRate // ignore: cast_nullable_to_non_nullable
              as double,
      noShowCount: null == noShowCount
          ? _value.noShowCount
          : noShowCount // ignore: cast_nullable_to_non_nullable
              as int,
      checkInsByHour: null == checkInsByHour
          ? _value.checkInsByHour
          : checkInsByHour // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      checkInsByTicketType: null == checkInsByTicketType
          ? _value.checkInsByTicketType
          : checkInsByTicketType // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventAnalyticsImplCopyWith<$Res>
    implements $EventAnalyticsCopyWith<$Res> {
  factory _$$EventAnalyticsImplCopyWith(_$EventAnalyticsImpl value,
          $Res Function(_$EventAnalyticsImpl) then) =
      __$$EventAnalyticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String eventId,
      String eventName,
      int totalAttendees,
      int checkedInCount,
      double checkInRate,
      int noShowCount,
      Map<String, int> checkInsByHour,
      Map<String, int> checkInsByTicketType,
      DateTime lastUpdated});
}

/// @nodoc
class __$$EventAnalyticsImplCopyWithImpl<$Res>
    extends _$EventAnalyticsCopyWithImpl<$Res, _$EventAnalyticsImpl>
    implements _$$EventAnalyticsImplCopyWith<$Res> {
  __$$EventAnalyticsImplCopyWithImpl(
      _$EventAnalyticsImpl _value, $Res Function(_$EventAnalyticsImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? eventName = null,
    Object? totalAttendees = null,
    Object? checkedInCount = null,
    Object? checkInRate = null,
    Object? noShowCount = null,
    Object? checkInsByHour = null,
    Object? checkInsByTicketType = null,
    Object? lastUpdated = null,
  }) {
    return _then(_$EventAnalyticsImpl(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      totalAttendees: null == totalAttendees
          ? _value.totalAttendees
          : totalAttendees // ignore: cast_nullable_to_non_nullable
              as int,
      checkedInCount: null == checkedInCount
          ? _value.checkedInCount
          : checkedInCount // ignore: cast_nullable_to_non_nullable
              as int,
      checkInRate: null == checkInRate
          ? _value.checkInRate
          : checkInRate // ignore: cast_nullable_to_non_nullable
              as double,
      noShowCount: null == noShowCount
          ? _value.noShowCount
          : noShowCount // ignore: cast_nullable_to_non_nullable
              as int,
      checkInsByHour: null == checkInsByHour
          ? _value._checkInsByHour
          : checkInsByHour // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      checkInsByTicketType: null == checkInsByTicketType
          ? _value._checkInsByTicketType
          : checkInsByTicketType // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventAnalyticsImpl implements _EventAnalytics {
  const _$EventAnalyticsImpl(
      {required this.eventId,
      required this.eventName,
      required this.totalAttendees,
      required this.checkedInCount,
      required this.checkInRate,
      required this.noShowCount,
      required final Map<String, int> checkInsByHour,
      required final Map<String, int> checkInsByTicketType,
      required this.lastUpdated})
      : _checkInsByHour = checkInsByHour,
        _checkInsByTicketType = checkInsByTicketType;

  factory _$EventAnalyticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventAnalyticsImplFromJson(json);

  @override
  final String eventId;
  @override
  final String eventName;
  @override
  final int totalAttendees;
  @override
  final int checkedInCount;
  @override
  final double checkInRate;
  @override
  final int noShowCount;
  final Map<String, int> _checkInsByHour;
  @override
  Map<String, int> get checkInsByHour {
    if (_checkInsByHour is EqualUnmodifiableMapView) return _checkInsByHour;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_checkInsByHour);
  }

  final Map<String, int> _checkInsByTicketType;
  @override
  Map<String, int> get checkInsByTicketType {
    if (_checkInsByTicketType is EqualUnmodifiableMapView)
      return _checkInsByTicketType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_checkInsByTicketType);
  }

  @override
  final DateTime lastUpdated;

  @override
  String toString() {
    return 'EventAnalytics(eventId: $eventId, eventName: $eventName, totalAttendees: $totalAttendees, checkedInCount: $checkedInCount, checkInRate: $checkInRate, noShowCount: $noShowCount, checkInsByHour: $checkInsByHour, checkInsByTicketType: $checkInsByTicketType, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventAnalyticsImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.eventName, eventName) ||
                other.eventName == eventName) &&
            (identical(other.totalAttendees, totalAttendees) ||
                other.totalAttendees == totalAttendees) &&
            (identical(other.checkedInCount, checkedInCount) ||
                other.checkedInCount == checkedInCount) &&
            (identical(other.checkInRate, checkInRate) ||
                other.checkInRate == checkInRate) &&
            (identical(other.noShowCount, noShowCount) ||
                other.noShowCount == noShowCount) &&
            const DeepCollectionEquality()
                .equals(other._checkInsByHour, _checkInsByHour) &&
            const DeepCollectionEquality()
                .equals(other._checkInsByTicketType, _checkInsByTicketType) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      eventId,
      eventName,
      totalAttendees,
      checkedInCount,
      checkInRate,
      noShowCount,
      const DeepCollectionEquality().hash(_checkInsByHour),
      const DeepCollectionEquality().hash(_checkInsByTicketType),
      lastUpdated);

  /// Create a copy of EventAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventAnalyticsImplCopyWith<_$EventAnalyticsImpl> get copyWith =>
      __$$EventAnalyticsImplCopyWithImpl<_$EventAnalyticsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventAnalyticsImplToJson(
      this,
    );
  }
}

abstract class _EventAnalytics implements EventAnalytics {
  const factory _EventAnalytics(
      {required final String eventId,
      required final String eventName,
      required final int totalAttendees,
      required final int checkedInCount,
      required final double checkInRate,
      required final int noShowCount,
      required final Map<String, int> checkInsByHour,
      required final Map<String, int> checkInsByTicketType,
      required final DateTime lastUpdated}) = _$EventAnalyticsImpl;

  factory _EventAnalytics.fromJson(Map<String, dynamic> json) =
      _$EventAnalyticsImpl.fromJson;

  @override
  String get eventId;
  @override
  String get eventName;
  @override
  int get totalAttendees;
  @override
  int get checkedInCount;
  @override
  double get checkInRate;
  @override
  int get noShowCount;
  @override
  Map<String, int> get checkInsByHour;
  @override
  Map<String, int> get checkInsByTicketType;
  @override
  DateTime get lastUpdated;

  /// Create a copy of EventAnalytics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventAnalyticsImplCopyWith<_$EventAnalyticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
