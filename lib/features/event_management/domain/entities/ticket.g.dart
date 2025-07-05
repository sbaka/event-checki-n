// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketImpl _$$TicketImplFromJson(Map<String, dynamic> json) => _$TicketImpl(
      id: json['id'] as String,
      eventId: json['eventId'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      quantity: (json['quantity'] as num).toInt(),
      sold: (json['sold'] as num).toInt(),
      isActive: json['isActive'] as bool,
      saleStartDate: DateTime.parse(json['saleStartDate'] as String),
      saleEndDate: DateTime.parse(json['saleEndDate'] as String),
      type: TicketType.fromJson(json['type'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      color: json['color'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$TicketImplToJson(_$TicketImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'eventId': instance.eventId,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'quantity': instance.quantity,
      'sold': instance.sold,
      'isActive': instance.isActive,
      'saleStartDate': instance.saleStartDate.toIso8601String(),
      'saleEndDate': instance.saleEndDate.toIso8601String(),
      'type': instance.type,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'color': instance.color,
      'metadata': instance.metadata,
    };

_$GeneralImpl _$$GeneralImplFromJson(Map<String, dynamic> json) =>
    _$GeneralImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$GeneralImplToJson(_$GeneralImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$VipImpl _$$VipImplFromJson(Map<String, dynamic> json) => _$VipImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$VipImplToJson(_$VipImpl instance) => <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$EarlyBirdImpl _$$EarlyBirdImplFromJson(Map<String, dynamic> json) =>
    _$EarlyBirdImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$EarlyBirdImplToJson(_$EarlyBirdImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$StudentImpl _$$StudentImplFromJson(Map<String, dynamic> json) =>
    _$StudentImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StudentImplToJson(_$StudentImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$SeniorImpl _$$SeniorImplFromJson(Map<String, dynamic> json) => _$SeniorImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SeniorImplToJson(_$SeniorImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ComplimentaryImpl _$$ComplimentaryImplFromJson(Map<String, dynamic> json) =>
    _$ComplimentaryImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ComplimentaryImplToJson(_$ComplimentaryImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
