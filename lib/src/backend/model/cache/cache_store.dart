import 'package:freezed_annotation/freezed_annotation.dart';

part "../../../../generated/model/cache/cache_store.freezed.dart";
part "../../../../generated/model/cache/cache_store.g.dart";


@Freezed(genericArgumentFactories: true)
class CacheStore<T> with _$CacheStore<T> {
  const factory CacheStore(
    int lifetime,
    int createdAt,
    String name,
    T data,
  ) = _CacheStore;

  factory CacheStore.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$CacheStoreFromJson(json, fromJsonT);
}


extension CacheStoreExt on CacheStore {
    bool isValid() => (DateTime.now().millisecondsSinceEpoch - (createdAt + lifetime)) < 0;
}