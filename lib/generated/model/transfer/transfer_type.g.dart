// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../src/backend/model/transfer/transfer_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransferTypeImpl _$$TransferTypeImplFromJson(Map<String, dynamic> json) =>
    _$TransferTypeImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$TransferTypeImplToJson(_$TransferTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
    };
