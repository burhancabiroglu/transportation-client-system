// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../src/backend/model/developer/app_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppInfoImpl _$$AppInfoImplFromJson(Map<String, dynamic> json) =>
    _$AppInfoImpl(
      name: json['name'] as String,
      version: json['version'] as String,
      owner: json['owner'] as String,
      supportMail: json['supportMail'] as String,
      licence: json['licence'] as String,
    );

Map<String, dynamic> _$$AppInfoImplToJson(_$AppInfoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'version': instance.version,
      'owner': instance.owner,
      'supportMail': instance.supportMail,
      'licence': instance.licence,
    };
