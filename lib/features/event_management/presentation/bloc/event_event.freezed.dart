// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EventEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadEvents,
    required TResult Function(Event event) createEvent,
    required TResult Function(Event event) updateEvent,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(EventStatus? status) filterEvents,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadEvents,
    TResult? Function(Event event)? createEvent,
    TResult? Function(Event event)? updateEvent,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(EventStatus? status)? filterEvents,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadEvents,
    TResult Function(Event event)? createEvent,
    TResult Function(Event event)? updateEvent,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(EventStatus? status)? filterEvents,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadEvents value) loadEvents,
    required TResult Function(CreateEvent value) createEvent,
    required TResult Function(UpdateEvent value) updateEvent,
    required TResult Function(DeleteEvent value) deleteEvent,
    required TResult Function(FilterEvents value) filterEvents,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadEvents value)? loadEvents,
    TResult? Function(CreateEvent value)? createEvent,
    TResult? Function(UpdateEvent value)? updateEvent,
    TResult? Function(DeleteEvent value)? deleteEvent,
    TResult? Function(FilterEvents value)? filterEvents,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadEvents value)? loadEvents,
    TResult Function(CreateEvent value)? createEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(FilterEvents value)? filterEvents,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventEventCopyWith<$Res> {
  factory $EventEventCopyWith(
          EventEvent value, $Res Function(EventEvent) then) =
      _$EventEventCopyWithImpl<$Res, EventEvent>;
}

/// @nodoc
class _$EventEventCopyWithImpl<$Res, $Val extends EventEvent>
    implements $EventEventCopyWith<$Res> {
  _$EventEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadEventsImplCopyWith<$Res> {
  factory _$$LoadEventsImplCopyWith(
          _$LoadEventsImpl value, $Res Function(_$LoadEventsImpl) then) =
      __$$LoadEventsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadEventsImplCopyWithImpl<$Res>
    extends _$EventEventCopyWithImpl<$Res, _$LoadEventsImpl>
    implements _$$LoadEventsImplCopyWith<$Res> {
  __$$LoadEventsImplCopyWithImpl(
      _$LoadEventsImpl _value, $Res Function(_$LoadEventsImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadEventsImpl implements LoadEvents {
  const _$LoadEventsImpl();

  @override
  String toString() {
    return 'EventEvent.loadEvents()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadEventsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadEvents,
    required TResult Function(Event event) createEvent,
    required TResult Function(Event event) updateEvent,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(EventStatus? status) filterEvents,
  }) {
    return loadEvents();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadEvents,
    TResult? Function(Event event)? createEvent,
    TResult? Function(Event event)? updateEvent,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(EventStatus? status)? filterEvents,
  }) {
    return loadEvents?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadEvents,
    TResult Function(Event event)? createEvent,
    TResult Function(Event event)? updateEvent,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(EventStatus? status)? filterEvents,
    required TResult orElse(),
  }) {
    if (loadEvents != null) {
      return loadEvents();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadEvents value) loadEvents,
    required TResult Function(CreateEvent value) createEvent,
    required TResult Function(UpdateEvent value) updateEvent,
    required TResult Function(DeleteEvent value) deleteEvent,
    required TResult Function(FilterEvents value) filterEvents,
  }) {
    return loadEvents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadEvents value)? loadEvents,
    TResult? Function(CreateEvent value)? createEvent,
    TResult? Function(UpdateEvent value)? updateEvent,
    TResult? Function(DeleteEvent value)? deleteEvent,
    TResult? Function(FilterEvents value)? filterEvents,
  }) {
    return loadEvents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadEvents value)? loadEvents,
    TResult Function(CreateEvent value)? createEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(FilterEvents value)? filterEvents,
    required TResult orElse(),
  }) {
    if (loadEvents != null) {
      return loadEvents(this);
    }
    return orElse();
  }
}

abstract class LoadEvents implements EventEvent {
  const factory LoadEvents() = _$LoadEventsImpl;
}

/// @nodoc
abstract class _$$CreateEventImplCopyWith<$Res> {
  factory _$$CreateEventImplCopyWith(
          _$CreateEventImpl value, $Res Function(_$CreateEventImpl) then) =
      __$$CreateEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Event event});

  $EventCopyWith<$Res> get event;
}

/// @nodoc
class __$$CreateEventImplCopyWithImpl<$Res>
    extends _$EventEventCopyWithImpl<$Res, _$CreateEventImpl>
    implements _$$CreateEventImplCopyWith<$Res> {
  __$$CreateEventImplCopyWithImpl(
      _$CreateEventImpl _value, $Res Function(_$CreateEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$CreateEventImpl(
      null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
    ));
  }

  /// Create a copy of EventEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EventCopyWith<$Res> get event {
    return $EventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$CreateEventImpl implements CreateEvent {
  const _$CreateEventImpl(this.event);

  @override
  final Event event;

  @override
  String toString() {
    return 'EventEvent.createEvent(event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateEventImpl &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  /// Create a copy of EventEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateEventImplCopyWith<_$CreateEventImpl> get copyWith =>
      __$$CreateEventImplCopyWithImpl<_$CreateEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadEvents,
    required TResult Function(Event event) createEvent,
    required TResult Function(Event event) updateEvent,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(EventStatus? status) filterEvents,
  }) {
    return createEvent(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadEvents,
    TResult? Function(Event event)? createEvent,
    TResult? Function(Event event)? updateEvent,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(EventStatus? status)? filterEvents,
  }) {
    return createEvent?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadEvents,
    TResult Function(Event event)? createEvent,
    TResult Function(Event event)? updateEvent,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(EventStatus? status)? filterEvents,
    required TResult orElse(),
  }) {
    if (createEvent != null) {
      return createEvent(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadEvents value) loadEvents,
    required TResult Function(CreateEvent value) createEvent,
    required TResult Function(UpdateEvent value) updateEvent,
    required TResult Function(DeleteEvent value) deleteEvent,
    required TResult Function(FilterEvents value) filterEvents,
  }) {
    return createEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadEvents value)? loadEvents,
    TResult? Function(CreateEvent value)? createEvent,
    TResult? Function(UpdateEvent value)? updateEvent,
    TResult? Function(DeleteEvent value)? deleteEvent,
    TResult? Function(FilterEvents value)? filterEvents,
  }) {
    return createEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadEvents value)? loadEvents,
    TResult Function(CreateEvent value)? createEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(FilterEvents value)? filterEvents,
    required TResult orElse(),
  }) {
    if (createEvent != null) {
      return createEvent(this);
    }
    return orElse();
  }
}

abstract class CreateEvent implements EventEvent {
  const factory CreateEvent(final Event event) = _$CreateEventImpl;

  Event get event;

  /// Create a copy of EventEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateEventImplCopyWith<_$CreateEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateEventImplCopyWith<$Res> {
  factory _$$UpdateEventImplCopyWith(
          _$UpdateEventImpl value, $Res Function(_$UpdateEventImpl) then) =
      __$$UpdateEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Event event});

  $EventCopyWith<$Res> get event;
}

/// @nodoc
class __$$UpdateEventImplCopyWithImpl<$Res>
    extends _$EventEventCopyWithImpl<$Res, _$UpdateEventImpl>
    implements _$$UpdateEventImplCopyWith<$Res> {
  __$$UpdateEventImplCopyWithImpl(
      _$UpdateEventImpl _value, $Res Function(_$UpdateEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$UpdateEventImpl(
      null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
    ));
  }

  /// Create a copy of EventEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EventCopyWith<$Res> get event {
    return $EventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$UpdateEventImpl implements UpdateEvent {
  const _$UpdateEventImpl(this.event);

  @override
  final Event event;

  @override
  String toString() {
    return 'EventEvent.updateEvent(event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateEventImpl &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  /// Create a copy of EventEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateEventImplCopyWith<_$UpdateEventImpl> get copyWith =>
      __$$UpdateEventImplCopyWithImpl<_$UpdateEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadEvents,
    required TResult Function(Event event) createEvent,
    required TResult Function(Event event) updateEvent,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(EventStatus? status) filterEvents,
  }) {
    return updateEvent(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadEvents,
    TResult? Function(Event event)? createEvent,
    TResult? Function(Event event)? updateEvent,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(EventStatus? status)? filterEvents,
  }) {
    return updateEvent?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadEvents,
    TResult Function(Event event)? createEvent,
    TResult Function(Event event)? updateEvent,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(EventStatus? status)? filterEvents,
    required TResult orElse(),
  }) {
    if (updateEvent != null) {
      return updateEvent(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadEvents value) loadEvents,
    required TResult Function(CreateEvent value) createEvent,
    required TResult Function(UpdateEvent value) updateEvent,
    required TResult Function(DeleteEvent value) deleteEvent,
    required TResult Function(FilterEvents value) filterEvents,
  }) {
    return updateEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadEvents value)? loadEvents,
    TResult? Function(CreateEvent value)? createEvent,
    TResult? Function(UpdateEvent value)? updateEvent,
    TResult? Function(DeleteEvent value)? deleteEvent,
    TResult? Function(FilterEvents value)? filterEvents,
  }) {
    return updateEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadEvents value)? loadEvents,
    TResult Function(CreateEvent value)? createEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(FilterEvents value)? filterEvents,
    required TResult orElse(),
  }) {
    if (updateEvent != null) {
      return updateEvent(this);
    }
    return orElse();
  }
}

abstract class UpdateEvent implements EventEvent {
  const factory UpdateEvent(final Event event) = _$UpdateEventImpl;

  Event get event;

  /// Create a copy of EventEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateEventImplCopyWith<_$UpdateEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteEventImplCopyWith<$Res> {
  factory _$$DeleteEventImplCopyWith(
          _$DeleteEventImpl value, $Res Function(_$DeleteEventImpl) then) =
      __$$DeleteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String eventId});
}

/// @nodoc
class __$$DeleteEventImplCopyWithImpl<$Res>
    extends _$EventEventCopyWithImpl<$Res, _$DeleteEventImpl>
    implements _$$DeleteEventImplCopyWith<$Res> {
  __$$DeleteEventImplCopyWithImpl(
      _$DeleteEventImpl _value, $Res Function(_$DeleteEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
  }) {
    return _then(_$DeleteEventImpl(
      null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteEventImpl implements DeleteEvent {
  const _$DeleteEventImpl(this.eventId);

  @override
  final String eventId;

  @override
  String toString() {
    return 'EventEvent.deleteEvent(eventId: $eventId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteEventImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId);

  /// Create a copy of EventEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteEventImplCopyWith<_$DeleteEventImpl> get copyWith =>
      __$$DeleteEventImplCopyWithImpl<_$DeleteEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadEvents,
    required TResult Function(Event event) createEvent,
    required TResult Function(Event event) updateEvent,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(EventStatus? status) filterEvents,
  }) {
    return deleteEvent(eventId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadEvents,
    TResult? Function(Event event)? createEvent,
    TResult? Function(Event event)? updateEvent,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(EventStatus? status)? filterEvents,
  }) {
    return deleteEvent?.call(eventId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadEvents,
    TResult Function(Event event)? createEvent,
    TResult Function(Event event)? updateEvent,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(EventStatus? status)? filterEvents,
    required TResult orElse(),
  }) {
    if (deleteEvent != null) {
      return deleteEvent(eventId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadEvents value) loadEvents,
    required TResult Function(CreateEvent value) createEvent,
    required TResult Function(UpdateEvent value) updateEvent,
    required TResult Function(DeleteEvent value) deleteEvent,
    required TResult Function(FilterEvents value) filterEvents,
  }) {
    return deleteEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadEvents value)? loadEvents,
    TResult? Function(CreateEvent value)? createEvent,
    TResult? Function(UpdateEvent value)? updateEvent,
    TResult? Function(DeleteEvent value)? deleteEvent,
    TResult? Function(FilterEvents value)? filterEvents,
  }) {
    return deleteEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadEvents value)? loadEvents,
    TResult Function(CreateEvent value)? createEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(FilterEvents value)? filterEvents,
    required TResult orElse(),
  }) {
    if (deleteEvent != null) {
      return deleteEvent(this);
    }
    return orElse();
  }
}

abstract class DeleteEvent implements EventEvent {
  const factory DeleteEvent(final String eventId) = _$DeleteEventImpl;

  String get eventId;

  /// Create a copy of EventEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteEventImplCopyWith<_$DeleteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterEventsImplCopyWith<$Res> {
  factory _$$FilterEventsImplCopyWith(
          _$FilterEventsImpl value, $Res Function(_$FilterEventsImpl) then) =
      __$$FilterEventsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EventStatus? status});

  $EventStatusCopyWith<$Res>? get status;
}

/// @nodoc
class __$$FilterEventsImplCopyWithImpl<$Res>
    extends _$EventEventCopyWithImpl<$Res, _$FilterEventsImpl>
    implements _$$FilterEventsImplCopyWith<$Res> {
  __$$FilterEventsImplCopyWithImpl(
      _$FilterEventsImpl _value, $Res Function(_$FilterEventsImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$FilterEventsImpl(
      freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EventStatus?,
    ));
  }

  /// Create a copy of EventEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EventStatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $EventStatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc

class _$FilterEventsImpl implements FilterEvents {
  const _$FilterEventsImpl(this.status);

  @override
  final EventStatus? status;

  @override
  String toString() {
    return 'EventEvent.filterEvents(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterEventsImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of EventEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterEventsImplCopyWith<_$FilterEventsImpl> get copyWith =>
      __$$FilterEventsImplCopyWithImpl<_$FilterEventsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadEvents,
    required TResult Function(Event event) createEvent,
    required TResult Function(Event event) updateEvent,
    required TResult Function(String eventId) deleteEvent,
    required TResult Function(EventStatus? status) filterEvents,
  }) {
    return filterEvents(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadEvents,
    TResult? Function(Event event)? createEvent,
    TResult? Function(Event event)? updateEvent,
    TResult? Function(String eventId)? deleteEvent,
    TResult? Function(EventStatus? status)? filterEvents,
  }) {
    return filterEvents?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadEvents,
    TResult Function(Event event)? createEvent,
    TResult Function(Event event)? updateEvent,
    TResult Function(String eventId)? deleteEvent,
    TResult Function(EventStatus? status)? filterEvents,
    required TResult orElse(),
  }) {
    if (filterEvents != null) {
      return filterEvents(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadEvents value) loadEvents,
    required TResult Function(CreateEvent value) createEvent,
    required TResult Function(UpdateEvent value) updateEvent,
    required TResult Function(DeleteEvent value) deleteEvent,
    required TResult Function(FilterEvents value) filterEvents,
  }) {
    return filterEvents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadEvents value)? loadEvents,
    TResult? Function(CreateEvent value)? createEvent,
    TResult? Function(UpdateEvent value)? updateEvent,
    TResult? Function(DeleteEvent value)? deleteEvent,
    TResult? Function(FilterEvents value)? filterEvents,
  }) {
    return filterEvents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadEvents value)? loadEvents,
    TResult Function(CreateEvent value)? createEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(DeleteEvent value)? deleteEvent,
    TResult Function(FilterEvents value)? filterEvents,
    required TResult orElse(),
  }) {
    if (filterEvents != null) {
      return filterEvents(this);
    }
    return orElse();
  }
}

abstract class FilterEvents implements EventEvent {
  const factory FilterEvents(final EventStatus? status) = _$FilterEventsImpl;

  EventStatus? get status;

  /// Create a copy of EventEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterEventsImplCopyWith<_$FilterEventsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
