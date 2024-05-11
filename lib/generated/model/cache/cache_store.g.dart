// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../src/backend/model/cache/cache_store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CacheStoreImpl<T> _$$CacheStoreImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$CacheStoreImpl<T>(
      (json['lifetime'] as num).toInt(),
      (json['createdAt'] as num).toInt(),
      json['name'] as String,
      fromJsonT(json['data']),
    );

Map<String, dynamic> _$$CacheStoreImplToJson<T>(
  _$CacheStoreImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'lifetime': instance.lifetime,
      'createdAt': instance.createdAt,
      'name': instance.name,
      'data': toJsonT(instance.data),
    };
