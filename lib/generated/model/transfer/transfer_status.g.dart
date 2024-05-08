// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../src/backend/model/transfer/transfer_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransferStatusImpl _$$TransferStatusImplFromJson(Map<String, dynamic> json) =>
    _$TransferStatusImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      color: json['color'] as String,
    );

Map<String, dynamic> _$$TransferStatusImplToJson(
        _$TransferStatusImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
    };
