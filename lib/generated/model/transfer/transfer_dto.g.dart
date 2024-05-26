// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../src/backend/model/transfer/transfer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransferDtoImpl _$$TransferDtoImplFromJson(Map<String, dynamic> json) =>
    _$TransferDtoImpl(
      json['id'] as String,
      (json['transferType'] as num).toInt(),
      json['additionalNote'] as String,
      json['plannedAt'] as String,
      (json['seatCount'] as num).toInt(),
      (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$$TransferDtoImplToJson(_$TransferDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'transferType': instance.transferType,
      'additionalNote': instance.additionalNote,
      'plannedAt': instance.plannedAt,
      'seatCount': instance.seatCount,
      'status': instance.status,
    };
