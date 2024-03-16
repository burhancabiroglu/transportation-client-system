// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../src/backend/model/book/book_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookRequestImpl _$$BookRequestImplFromJson(Map<String, dynamic> json) =>
    _$BookRequestImpl(
      id: json['id'] as String,
      status: json['status'] as int,
      date: json['date'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$BookRequestImplToJson(_$BookRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'date': instance.date,
      'type': instance.type,
    };
