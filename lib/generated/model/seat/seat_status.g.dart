// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../src/backend/model/seat/seat_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeatStatusImpl _$$SeatStatusImplFromJson(Map<String, dynamic> json) =>
    _$SeatStatusImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      color: json['color'] as String,
    );

Map<String, dynamic> _$$SeatStatusImplToJson(_$SeatStatusImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
    };
