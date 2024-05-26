// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../src/backend/model/booking/transfer_wish_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransferWishDtoImpl _$$TransferWishDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TransferWishDtoImpl(
      userId: json['userId'] as String,
      createdAt: json['createdAt'] as String,
      id: json['id'] as String,
      transferType: json['transferType'] as String,
      additionalNote: json['additionalNote'] as String,
      email: json['email'] as String,
      fullname: json['fullname'] as String,
    );

Map<String, dynamic> _$$TransferWishDtoImplToJson(
        _$TransferWishDtoImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'createdAt': instance.createdAt,
      'id': instance.id,
      'transferType': instance.transferType,
      'additionalNote': instance.additionalNote,
      'email': instance.email,
      'fullname': instance.fullname,
    };
