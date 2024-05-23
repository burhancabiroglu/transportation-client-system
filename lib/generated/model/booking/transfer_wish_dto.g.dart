// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../src/backend/model/booking/transfer_wish_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransferWishDtoImpl _$$TransferWishDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TransferWishDtoImpl(
      userId: json['user_id'] as String,
      createdAt: json['created_at'] as String,
      id: json['id'] as String,
      transferType: (json['transfer_type'] as num).toInt(),
      additionalNote: json['additional_note'] as String,
      email: json['email'] as String,
      fullname: json['fullname'] as String,
    );

Map<String, dynamic> _$$TransferWishDtoImplToJson(
        _$TransferWishDtoImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'created_at': instance.createdAt,
      'id': instance.id,
      'transfer_type': instance.transferType,
      'additional_note': instance.additionalNote,
      'email': instance.email,
      'fullname': instance.fullname,
    };
