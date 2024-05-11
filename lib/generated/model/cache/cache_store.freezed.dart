// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../src/backend/model/cache/cache_store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CacheStore<T> _$CacheStoreFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _CacheStore<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$CacheStore<T> {
  int get lifetime => throw _privateConstructorUsedError;
  int get createdAt => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  T get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CacheStoreCopyWith<T, CacheStore<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacheStoreCopyWith<T, $Res> {
  factory $CacheStoreCopyWith(
          CacheStore<T> value, $Res Function(CacheStore<T>) then) =
      _$CacheStoreCopyWithImpl<T, $Res, CacheStore<T>>;
  @useResult
  $Res call({int lifetime, int createdAt, String name, T data});
}

/// @nodoc
class _$CacheStoreCopyWithImpl<T, $Res, $Val extends CacheStore<T>>
    implements $CacheStoreCopyWith<T, $Res> {
  _$CacheStoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lifetime = null,
    Object? createdAt = null,
    Object? name = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      lifetime: null == lifetime
          ? _value.lifetime
          : lifetime // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CacheStoreImplCopyWith<T, $Res>
    implements $CacheStoreCopyWith<T, $Res> {
  factory _$$CacheStoreImplCopyWith(
          _$CacheStoreImpl<T> value, $Res Function(_$CacheStoreImpl<T>) then) =
      __$$CacheStoreImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int lifetime, int createdAt, String name, T data});
}

/// @nodoc
class __$$CacheStoreImplCopyWithImpl<T, $Res>
    extends _$CacheStoreCopyWithImpl<T, $Res, _$CacheStoreImpl<T>>
    implements _$$CacheStoreImplCopyWith<T, $Res> {
  __$$CacheStoreImplCopyWithImpl(
      _$CacheStoreImpl<T> _value, $Res Function(_$CacheStoreImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lifetime = null,
    Object? createdAt = null,
    Object? name = null,
    Object? data = freezed,
  }) {
    return _then(_$CacheStoreImpl<T>(
      null == lifetime
          ? _value.lifetime
          : lifetime // ignore: cast_nullable_to_non_nullable
              as int,
      null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$CacheStoreImpl<T> implements _CacheStore<T> {
  const _$CacheStoreImpl(this.lifetime, this.createdAt, this.name, this.data);

  factory _$CacheStoreImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$CacheStoreImplFromJson(json, fromJsonT);

  @override
  final int lifetime;
  @override
  final int createdAt;
  @override
  final String name;
  @override
  final T data;

  @override
  String toString() {
    return 'CacheStore<$T>(lifetime: $lifetime, createdAt: $createdAt, name: $name, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheStoreImpl<T> &&
            (identical(other.lifetime, lifetime) ||
                other.lifetime == lifetime) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lifetime, createdAt, name,
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheStoreImplCopyWith<T, _$CacheStoreImpl<T>> get copyWith =>
      __$$CacheStoreImplCopyWithImpl<T, _$CacheStoreImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$CacheStoreImplToJson<T>(this, toJsonT);
  }
}

abstract class _CacheStore<T> implements CacheStore<T> {
  const factory _CacheStore(final int lifetime, final int createdAt,
      final String name, final T data) = _$CacheStoreImpl<T>;

  factory _CacheStore.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$CacheStoreImpl<T>.fromJson;

  @override
  int get lifetime;
  @override
  int get createdAt;
  @override
  String get name;
  @override
  T get data;
  @override
  @JsonKey(ignore: true)
  _$$CacheStoreImplCopyWith<T, _$CacheStoreImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
