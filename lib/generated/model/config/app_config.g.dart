// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../src/backend/model/config/app_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppConfigImpl _$$AppConfigImplFromJson(Map<String, dynamic> json) =>
    _$AppConfigImpl(
      appVersion: json['app_version'] as String,
      appCode: json['app_code'] as int,
      aboutUsLink: json['about_us_link'] as String,
    );

Map<String, dynamic> _$$AppConfigImplToJson(_$AppConfigImpl instance) =>
    <String, dynamic>{
      'app_version': instance.appVersion,
      'app_code': instance.appCode,
      'about_us_link': instance.aboutUsLink,
    };
