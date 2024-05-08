// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../src/backend/model/booking/transfer_wish_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransferWishDtoImpl _$$TransferWishDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TransferWishDtoImpl(
      id: json['id'] as String,
      transferType: (json['transfer_type'] as num).toInt(),
      additionalNote: json['additional_note'] as String?,
      fullname: json['fullname'] as String,
      email: json['email'] as String,
      createdAt: json['created_At'] as String,
    );

Map<String, dynamic> _$$TransferWishDtoImplToJson(
        _$TransferWishDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'transfer_type': instance.transferType,
      'additional_note': instance.additionalNote,
      'fullname': instance.fullname,
      'email': instance.email,
      'created_At': instance.createdAt,
    };
