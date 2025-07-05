// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Ticket _$TicketFromJson(Map<String, dynamic> json) {
  return _Ticket.fromJson(json);
}

/// @nodoc
mixin _$Ticket {
  String get id => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  int get sold => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  DateTime get saleStartDate => throw _privateConstructorUsedError;
  DateTime get saleEndDate => throw _privateConstructorUsedError;
  TicketType get type => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this Ticket to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketCopyWith<Ticket> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketCopyWith<$Res> {
  factory $TicketCopyWith(Ticket value, $Res Function(Ticket) then) =
      _$TicketCopyWithImpl<$Res, Ticket>;
  @useResult
  $Res call(
      {String id,
      String eventId,
      String name,
      String description,
      double price,
      int quantity,
      int sold,
      bool isActive,
      DateTime saleStartDate,
      DateTime saleEndDate,
      TicketType type,
      DateTime createdAt,
      DateTime updatedAt,
      String? color,
      Map<String, dynamic>? metadata});

  $TicketTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$TicketCopyWithImpl<$Res, $Val extends Ticket>
    implements $TicketCopyWith<$Res> {
  _$TicketCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventId = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? quantity = null,
    Object? sold = null,
    Object? isActive = null,
    Object? saleStartDate = null,
    Object? saleEndDate = null,
    Object? type = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? color = freezed,
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      sold: null == sold
          ? _value.sold
          : sold // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      saleStartDate: null == saleStartDate
          ? _value.saleStartDate
          : saleStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      saleEndDate: null == saleEndDate
          ? _value.saleEndDate
          : saleEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TicketType,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketTypeCopyWith<$Res> get type {
    return $TicketTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TicketImplCopyWith<$Res> implements $TicketCopyWith<$Res> {
  factory _$$TicketImplCopyWith(
          _$TicketImpl value, $Res Function(_$TicketImpl) then) =
      __$$TicketImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String eventId,
      String name,
      String description,
      double price,
      int quantity,
      int sold,
      bool isActive,
      DateTime saleStartDate,
      DateTime saleEndDate,
      TicketType type,
      DateTime createdAt,
      DateTime updatedAt,
      String? color,
      Map<String, dynamic>? metadata});

  @override
  $TicketTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$TicketImplCopyWithImpl<$Res>
    extends _$TicketCopyWithImpl<$Res, _$TicketImpl>
    implements _$$TicketImplCopyWith<$Res> {
  __$$TicketImplCopyWithImpl(
      _$TicketImpl _value, $Res Function(_$TicketImpl) _then)
      : super(_value, _then);

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventId = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? quantity = null,
    Object? sold = null,
    Object? isActive = null,
    Object? saleStartDate = null,
    Object? saleEndDate = null,
    Object? type = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? color = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$TicketImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      sold: null == sold
          ? _value.sold
          : sold // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      saleStartDate: null == saleStartDate
          ? _value.saleStartDate
          : saleStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      saleEndDate: null == saleEndDate
          ? _value.saleEndDate
          : saleEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TicketType,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
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
class _$TicketImpl implements _Ticket {
  const _$TicketImpl(
      {required this.id,
      required this.eventId,
      required this.name,
      required this.description,
      required this.price,
      required this.quantity,
      required this.sold,
      required this.isActive,
      required this.saleStartDate,
      required this.saleEndDate,
      required this.type,
      required this.createdAt,
      required this.updatedAt,
      this.color,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$TicketImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketImplFromJson(json);

  @override
  final String id;
  @override
  final String eventId;
  @override
  final String name;
  @override
  final String description;
  @override
  final double price;
  @override
  final int quantity;
  @override
  final int sold;
  @override
  final bool isActive;
  @override
  final DateTime saleStartDate;
  @override
  final DateTime saleEndDate;
  @override
  final TicketType type;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String? color;
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
    return 'Ticket(id: $id, eventId: $eventId, name: $name, description: $description, price: $price, quantity: $quantity, sold: $sold, isActive: $isActive, saleStartDate: $saleStartDate, saleEndDate: $saleEndDate, type: $type, createdAt: $createdAt, updatedAt: $updatedAt, color: $color, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.sold, sold) || other.sold == sold) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.saleStartDate, saleStartDate) ||
                other.saleStartDate == saleStartDate) &&
            (identical(other.saleEndDate, saleEndDate) ||
                other.saleEndDate == saleEndDate) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.color, color) || other.color == color) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      eventId,
      name,
      description,
      price,
      quantity,
      sold,
      isActive,
      saleStartDate,
      saleEndDate,
      type,
      createdAt,
      updatedAt,
      color,
      const DeepCollectionEquality().hash(_metadata));

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketImplCopyWith<_$TicketImpl> get copyWith =>
      __$$TicketImplCopyWithImpl<_$TicketImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketImplToJson(
      this,
    );
  }
}

abstract class _Ticket implements Ticket {
  const factory _Ticket(
      {required final String id,
      required final String eventId,
      required final String name,
      required final String description,
      required final double price,
      required final int quantity,
      required final int sold,
      required final bool isActive,
      required final DateTime saleStartDate,
      required final DateTime saleEndDate,
      required final TicketType type,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final String? color,
      final Map<String, dynamic>? metadata}) = _$TicketImpl;

  factory _Ticket.fromJson(Map<String, dynamic> json) = _$TicketImpl.fromJson;

  @override
  String get id;
  @override
  String get eventId;
  @override
  String get name;
  @override
  String get description;
  @override
  double get price;
  @override
  int get quantity;
  @override
  int get sold;
  @override
  bool get isActive;
  @override
  DateTime get saleStartDate;
  @override
  DateTime get saleEndDate;
  @override
  TicketType get type;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String? get color;
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of Ticket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketImplCopyWith<_$TicketImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TicketType _$TicketTypeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'general':
      return _General.fromJson(json);
    case 'vip':
      return _Vip.fromJson(json);
    case 'earlyBird':
      return _EarlyBird.fromJson(json);
    case 'student':
      return _Student.fromJson(json);
    case 'senior':
      return _Senior.fromJson(json);
    case 'complimentary':
      return _Complimentary.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'TicketType',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$TicketType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() general,
    required TResult Function() vip,
    required TResult Function() earlyBird,
    required TResult Function() student,
    required TResult Function() senior,
    required TResult Function() complimentary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? general,
    TResult? Function()? vip,
    TResult? Function()? earlyBird,
    TResult? Function()? student,
    TResult? Function()? senior,
    TResult? Function()? complimentary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? general,
    TResult Function()? vip,
    TResult Function()? earlyBird,
    TResult Function()? student,
    TResult Function()? senior,
    TResult Function()? complimentary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_General value) general,
    required TResult Function(_Vip value) vip,
    required TResult Function(_EarlyBird value) earlyBird,
    required TResult Function(_Student value) student,
    required TResult Function(_Senior value) senior,
    required TResult Function(_Complimentary value) complimentary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_General value)? general,
    TResult? Function(_Vip value)? vip,
    TResult? Function(_EarlyBird value)? earlyBird,
    TResult? Function(_Student value)? student,
    TResult? Function(_Senior value)? senior,
    TResult? Function(_Complimentary value)? complimentary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_General value)? general,
    TResult Function(_Vip value)? vip,
    TResult Function(_EarlyBird value)? earlyBird,
    TResult Function(_Student value)? student,
    TResult Function(_Senior value)? senior,
    TResult Function(_Complimentary value)? complimentary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this TicketType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketTypeCopyWith<$Res> {
  factory $TicketTypeCopyWith(
          TicketType value, $Res Function(TicketType) then) =
      _$TicketTypeCopyWithImpl<$Res, TicketType>;
}

/// @nodoc
class _$TicketTypeCopyWithImpl<$Res, $Val extends TicketType>
    implements $TicketTypeCopyWith<$Res> {
  _$TicketTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GeneralImplCopyWith<$Res> {
  factory _$$GeneralImplCopyWith(
          _$GeneralImpl value, $Res Function(_$GeneralImpl) then) =
      __$$GeneralImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GeneralImplCopyWithImpl<$Res>
    extends _$TicketTypeCopyWithImpl<$Res, _$GeneralImpl>
    implements _$$GeneralImplCopyWith<$Res> {
  __$$GeneralImplCopyWithImpl(
      _$GeneralImpl _value, $Res Function(_$GeneralImpl) _then)
      : super(_value, _then);

  /// Create a copy of TicketType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$GeneralImpl implements _General {
  const _$GeneralImpl({final String? $type}) : $type = $type ?? 'general';

  factory _$GeneralImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeneralImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TicketType.general()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GeneralImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() general,
    required TResult Function() vip,
    required TResult Function() earlyBird,
    required TResult Function() student,
    required TResult Function() senior,
    required TResult Function() complimentary,
  }) {
    return general();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? general,
    TResult? Function()? vip,
    TResult? Function()? earlyBird,
    TResult? Function()? student,
    TResult? Function()? senior,
    TResult? Function()? complimentary,
  }) {
    return general?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? general,
    TResult Function()? vip,
    TResult Function()? earlyBird,
    TResult Function()? student,
    TResult Function()? senior,
    TResult Function()? complimentary,
    required TResult orElse(),
  }) {
    if (general != null) {
      return general();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_General value) general,
    required TResult Function(_Vip value) vip,
    required TResult Function(_EarlyBird value) earlyBird,
    required TResult Function(_Student value) student,
    required TResult Function(_Senior value) senior,
    required TResult Function(_Complimentary value) complimentary,
  }) {
    return general(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_General value)? general,
    TResult? Function(_Vip value)? vip,
    TResult? Function(_EarlyBird value)? earlyBird,
    TResult? Function(_Student value)? student,
    TResult? Function(_Senior value)? senior,
    TResult? Function(_Complimentary value)? complimentary,
  }) {
    return general?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_General value)? general,
    TResult Function(_Vip value)? vip,
    TResult Function(_EarlyBird value)? earlyBird,
    TResult Function(_Student value)? student,
    TResult Function(_Senior value)? senior,
    TResult Function(_Complimentary value)? complimentary,
    required TResult orElse(),
  }) {
    if (general != null) {
      return general(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GeneralImplToJson(
      this,
    );
  }
}

abstract class _General implements TicketType {
  const factory _General() = _$GeneralImpl;

  factory _General.fromJson(Map<String, dynamic> json) = _$GeneralImpl.fromJson;
}

/// @nodoc
abstract class _$$VipImplCopyWith<$Res> {
  factory _$$VipImplCopyWith(_$VipImpl value, $Res Function(_$VipImpl) then) =
      __$$VipImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VipImplCopyWithImpl<$Res>
    extends _$TicketTypeCopyWithImpl<$Res, _$VipImpl>
    implements _$$VipImplCopyWith<$Res> {
  __$$VipImplCopyWithImpl(_$VipImpl _value, $Res Function(_$VipImpl) _then)
      : super(_value, _then);

  /// Create a copy of TicketType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$VipImpl implements _Vip {
  const _$VipImpl({final String? $type}) : $type = $type ?? 'vip';

  factory _$VipImpl.fromJson(Map<String, dynamic> json) =>
      _$$VipImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TicketType.vip()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VipImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() general,
    required TResult Function() vip,
    required TResult Function() earlyBird,
    required TResult Function() student,
    required TResult Function() senior,
    required TResult Function() complimentary,
  }) {
    return vip();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? general,
    TResult? Function()? vip,
    TResult? Function()? earlyBird,
    TResult? Function()? student,
    TResult? Function()? senior,
    TResult? Function()? complimentary,
  }) {
    return vip?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? general,
    TResult Function()? vip,
    TResult Function()? earlyBird,
    TResult Function()? student,
    TResult Function()? senior,
    TResult Function()? complimentary,
    required TResult orElse(),
  }) {
    if (vip != null) {
      return vip();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_General value) general,
    required TResult Function(_Vip value) vip,
    required TResult Function(_EarlyBird value) earlyBird,
    required TResult Function(_Student value) student,
    required TResult Function(_Senior value) senior,
    required TResult Function(_Complimentary value) complimentary,
  }) {
    return vip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_General value)? general,
    TResult? Function(_Vip value)? vip,
    TResult? Function(_EarlyBird value)? earlyBird,
    TResult? Function(_Student value)? student,
    TResult? Function(_Senior value)? senior,
    TResult? Function(_Complimentary value)? complimentary,
  }) {
    return vip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_General value)? general,
    TResult Function(_Vip value)? vip,
    TResult Function(_EarlyBird value)? earlyBird,
    TResult Function(_Student value)? student,
    TResult Function(_Senior value)? senior,
    TResult Function(_Complimentary value)? complimentary,
    required TResult orElse(),
  }) {
    if (vip != null) {
      return vip(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VipImplToJson(
      this,
    );
  }
}

abstract class _Vip implements TicketType {
  const factory _Vip() = _$VipImpl;

  factory _Vip.fromJson(Map<String, dynamic> json) = _$VipImpl.fromJson;
}

/// @nodoc
abstract class _$$EarlyBirdImplCopyWith<$Res> {
  factory _$$EarlyBirdImplCopyWith(
          _$EarlyBirdImpl value, $Res Function(_$EarlyBirdImpl) then) =
      __$$EarlyBirdImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EarlyBirdImplCopyWithImpl<$Res>
    extends _$TicketTypeCopyWithImpl<$Res, _$EarlyBirdImpl>
    implements _$$EarlyBirdImplCopyWith<$Res> {
  __$$EarlyBirdImplCopyWithImpl(
      _$EarlyBirdImpl _value, $Res Function(_$EarlyBirdImpl) _then)
      : super(_value, _then);

  /// Create a copy of TicketType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$EarlyBirdImpl implements _EarlyBird {
  const _$EarlyBirdImpl({final String? $type}) : $type = $type ?? 'earlyBird';

  factory _$EarlyBirdImpl.fromJson(Map<String, dynamic> json) =>
      _$$EarlyBirdImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TicketType.earlyBird()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EarlyBirdImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() general,
    required TResult Function() vip,
    required TResult Function() earlyBird,
    required TResult Function() student,
    required TResult Function() senior,
    required TResult Function() complimentary,
  }) {
    return earlyBird();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? general,
    TResult? Function()? vip,
    TResult? Function()? earlyBird,
    TResult? Function()? student,
    TResult? Function()? senior,
    TResult? Function()? complimentary,
  }) {
    return earlyBird?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? general,
    TResult Function()? vip,
    TResult Function()? earlyBird,
    TResult Function()? student,
    TResult Function()? senior,
    TResult Function()? complimentary,
    required TResult orElse(),
  }) {
    if (earlyBird != null) {
      return earlyBird();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_General value) general,
    required TResult Function(_Vip value) vip,
    required TResult Function(_EarlyBird value) earlyBird,
    required TResult Function(_Student value) student,
    required TResult Function(_Senior value) senior,
    required TResult Function(_Complimentary value) complimentary,
  }) {
    return earlyBird(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_General value)? general,
    TResult? Function(_Vip value)? vip,
    TResult? Function(_EarlyBird value)? earlyBird,
    TResult? Function(_Student value)? student,
    TResult? Function(_Senior value)? senior,
    TResult? Function(_Complimentary value)? complimentary,
  }) {
    return earlyBird?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_General value)? general,
    TResult Function(_Vip value)? vip,
    TResult Function(_EarlyBird value)? earlyBird,
    TResult Function(_Student value)? student,
    TResult Function(_Senior value)? senior,
    TResult Function(_Complimentary value)? complimentary,
    required TResult orElse(),
  }) {
    if (earlyBird != null) {
      return earlyBird(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EarlyBirdImplToJson(
      this,
    );
  }
}

abstract class _EarlyBird implements TicketType {
  const factory _EarlyBird() = _$EarlyBirdImpl;

  factory _EarlyBird.fromJson(Map<String, dynamic> json) =
      _$EarlyBirdImpl.fromJson;
}

/// @nodoc
abstract class _$$StudentImplCopyWith<$Res> {
  factory _$$StudentImplCopyWith(
          _$StudentImpl value, $Res Function(_$StudentImpl) then) =
      __$$StudentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StudentImplCopyWithImpl<$Res>
    extends _$TicketTypeCopyWithImpl<$Res, _$StudentImpl>
    implements _$$StudentImplCopyWith<$Res> {
  __$$StudentImplCopyWithImpl(
      _$StudentImpl _value, $Res Function(_$StudentImpl) _then)
      : super(_value, _then);

  /// Create a copy of TicketType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$StudentImpl implements _Student {
  const _$StudentImpl({final String? $type}) : $type = $type ?? 'student';

  factory _$StudentImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TicketType.student()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StudentImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() general,
    required TResult Function() vip,
    required TResult Function() earlyBird,
    required TResult Function() student,
    required TResult Function() senior,
    required TResult Function() complimentary,
  }) {
    return student();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? general,
    TResult? Function()? vip,
    TResult? Function()? earlyBird,
    TResult? Function()? student,
    TResult? Function()? senior,
    TResult? Function()? complimentary,
  }) {
    return student?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? general,
    TResult Function()? vip,
    TResult Function()? earlyBird,
    TResult Function()? student,
    TResult Function()? senior,
    TResult Function()? complimentary,
    required TResult orElse(),
  }) {
    if (student != null) {
      return student();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_General value) general,
    required TResult Function(_Vip value) vip,
    required TResult Function(_EarlyBird value) earlyBird,
    required TResult Function(_Student value) student,
    required TResult Function(_Senior value) senior,
    required TResult Function(_Complimentary value) complimentary,
  }) {
    return student(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_General value)? general,
    TResult? Function(_Vip value)? vip,
    TResult? Function(_EarlyBird value)? earlyBird,
    TResult? Function(_Student value)? student,
    TResult? Function(_Senior value)? senior,
    TResult? Function(_Complimentary value)? complimentary,
  }) {
    return student?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_General value)? general,
    TResult Function(_Vip value)? vip,
    TResult Function(_EarlyBird value)? earlyBird,
    TResult Function(_Student value)? student,
    TResult Function(_Senior value)? senior,
    TResult Function(_Complimentary value)? complimentary,
    required TResult orElse(),
  }) {
    if (student != null) {
      return student(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentImplToJson(
      this,
    );
  }
}

abstract class _Student implements TicketType {
  const factory _Student() = _$StudentImpl;

  factory _Student.fromJson(Map<String, dynamic> json) = _$StudentImpl.fromJson;
}

/// @nodoc
abstract class _$$SeniorImplCopyWith<$Res> {
  factory _$$SeniorImplCopyWith(
          _$SeniorImpl value, $Res Function(_$SeniorImpl) then) =
      __$$SeniorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SeniorImplCopyWithImpl<$Res>
    extends _$TicketTypeCopyWithImpl<$Res, _$SeniorImpl>
    implements _$$SeniorImplCopyWith<$Res> {
  __$$SeniorImplCopyWithImpl(
      _$SeniorImpl _value, $Res Function(_$SeniorImpl) _then)
      : super(_value, _then);

  /// Create a copy of TicketType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$SeniorImpl implements _Senior {
  const _$SeniorImpl({final String? $type}) : $type = $type ?? 'senior';

  factory _$SeniorImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeniorImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TicketType.senior()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SeniorImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() general,
    required TResult Function() vip,
    required TResult Function() earlyBird,
    required TResult Function() student,
    required TResult Function() senior,
    required TResult Function() complimentary,
  }) {
    return senior();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? general,
    TResult? Function()? vip,
    TResult? Function()? earlyBird,
    TResult? Function()? student,
    TResult? Function()? senior,
    TResult? Function()? complimentary,
  }) {
    return senior?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? general,
    TResult Function()? vip,
    TResult Function()? earlyBird,
    TResult Function()? student,
    TResult Function()? senior,
    TResult Function()? complimentary,
    required TResult orElse(),
  }) {
    if (senior != null) {
      return senior();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_General value) general,
    required TResult Function(_Vip value) vip,
    required TResult Function(_EarlyBird value) earlyBird,
    required TResult Function(_Student value) student,
    required TResult Function(_Senior value) senior,
    required TResult Function(_Complimentary value) complimentary,
  }) {
    return senior(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_General value)? general,
    TResult? Function(_Vip value)? vip,
    TResult? Function(_EarlyBird value)? earlyBird,
    TResult? Function(_Student value)? student,
    TResult? Function(_Senior value)? senior,
    TResult? Function(_Complimentary value)? complimentary,
  }) {
    return senior?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_General value)? general,
    TResult Function(_Vip value)? vip,
    TResult Function(_EarlyBird value)? earlyBird,
    TResult Function(_Student value)? student,
    TResult Function(_Senior value)? senior,
    TResult Function(_Complimentary value)? complimentary,
    required TResult orElse(),
  }) {
    if (senior != null) {
      return senior(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SeniorImplToJson(
      this,
    );
  }
}

abstract class _Senior implements TicketType {
  const factory _Senior() = _$SeniorImpl;

  factory _Senior.fromJson(Map<String, dynamic> json) = _$SeniorImpl.fromJson;
}

/// @nodoc
abstract class _$$ComplimentaryImplCopyWith<$Res> {
  factory _$$ComplimentaryImplCopyWith(
          _$ComplimentaryImpl value, $Res Function(_$ComplimentaryImpl) then) =
      __$$ComplimentaryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ComplimentaryImplCopyWithImpl<$Res>
    extends _$TicketTypeCopyWithImpl<$Res, _$ComplimentaryImpl>
    implements _$$ComplimentaryImplCopyWith<$Res> {
  __$$ComplimentaryImplCopyWithImpl(
      _$ComplimentaryImpl _value, $Res Function(_$ComplimentaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of TicketType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$ComplimentaryImpl implements _Complimentary {
  const _$ComplimentaryImpl({final String? $type})
      : $type = $type ?? 'complimentary';

  factory _$ComplimentaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComplimentaryImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TicketType.complimentary()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ComplimentaryImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() general,
    required TResult Function() vip,
    required TResult Function() earlyBird,
    required TResult Function() student,
    required TResult Function() senior,
    required TResult Function() complimentary,
  }) {
    return complimentary();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? general,
    TResult? Function()? vip,
    TResult? Function()? earlyBird,
    TResult? Function()? student,
    TResult? Function()? senior,
    TResult? Function()? complimentary,
  }) {
    return complimentary?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? general,
    TResult Function()? vip,
    TResult Function()? earlyBird,
    TResult Function()? student,
    TResult Function()? senior,
    TResult Function()? complimentary,
    required TResult orElse(),
  }) {
    if (complimentary != null) {
      return complimentary();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_General value) general,
    required TResult Function(_Vip value) vip,
    required TResult Function(_EarlyBird value) earlyBird,
    required TResult Function(_Student value) student,
    required TResult Function(_Senior value) senior,
    required TResult Function(_Complimentary value) complimentary,
  }) {
    return complimentary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_General value)? general,
    TResult? Function(_Vip value)? vip,
    TResult? Function(_EarlyBird value)? earlyBird,
    TResult? Function(_Student value)? student,
    TResult? Function(_Senior value)? senior,
    TResult? Function(_Complimentary value)? complimentary,
  }) {
    return complimentary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_General value)? general,
    TResult Function(_Vip value)? vip,
    TResult Function(_EarlyBird value)? earlyBird,
    TResult Function(_Student value)? student,
    TResult Function(_Senior value)? senior,
    TResult Function(_Complimentary value)? complimentary,
    required TResult orElse(),
  }) {
    if (complimentary != null) {
      return complimentary(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ComplimentaryImplToJson(
      this,
    );
  }
}

abstract class _Complimentary implements TicketType {
  const factory _Complimentary() = _$ComplimentaryImpl;

  factory _Complimentary.fromJson(Map<String, dynamic> json) =
      _$ComplimentaryImpl.fromJson;
}
