// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../src/backend/model/register/register_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterRequestImpl _$$RegisterRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterRequestImpl(
      email: json['email'] as String,
      name: json['name'] as String,
      surname: json['surname'] as String,
      password: json['password'] as String,
      fcmToken: json['fcmToken'] as String?,
      apnsToken: json['apnsToken'] as String?,
    );

Map<String, dynamic> _$$RegisterRequestImplToJson(
        _$RegisterRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'surname': instance.surname,
      'password': instance.password,
      'fcmToken': instance.fcmToken,
      'apnsToken': instance.apnsToken,
    };
