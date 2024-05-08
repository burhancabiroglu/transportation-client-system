// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../src/backend/model/transfer/transfer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransferDtoImpl _$$TransferDtoImplFromJson(Map<String, dynamic> json) =>
    _$TransferDtoImpl(
      json['id'] as String,
      (json['transfer_type'] as num).toInt(),
      json['additional_note'] as String,
      json['planned_at'] as String,
      (json['seat_count'] as num).toInt(),
      (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$$TransferDtoImplToJson(_$TransferDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'transfer_type': instance.transferType,
      'additional_note': instance.additionalNote,
      'planned_at': instance.plannedAt,
      'seat_count': instance.seatCount,
      'status': instance.status,
    };
