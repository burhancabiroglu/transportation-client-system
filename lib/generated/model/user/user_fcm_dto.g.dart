// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../src/backend/model/user/user_fcm_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserFcmDtoImpl _$$UserFcmDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserFcmDtoImpl(
      apnsToken: json['apnsToken'] as String?,
      fcmToken: json['fcmToken'] as String?,
    );

Map<String, dynamic> _$$UserFcmDtoImplToJson(_$UserFcmDtoImpl instance) =>
    <String, dynamic>{
      'apnsToken': instance.apnsToken,
      'fcmToken': instance.fcmToken,
    };
