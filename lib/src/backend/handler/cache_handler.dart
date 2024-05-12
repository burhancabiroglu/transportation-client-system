import 'dart:convert';

import 'package:babiconsultancy/src/backend/handler/app_result.dart';
import 'package:babiconsultancy/src/backend/model/cache/cache_store.dart';
import 'package:babiconsultancy/src/backend/api/shared_pref.dart';

class CacheHandler {
  static const lifetime = 7;

  final LocalStorage storage;
  const CacheHandler({ required this.storage });
  
  Future<AppResult<T>> getListFromCacheOrNetwork<T>({
    required String cacheName,
    T Function(List<dynamic> json)? decoder,
    List<Map<String, dynamic>> Function(T data)? encoder,
    required Future<AppResult<T>> Function() apiCall,
  }) async {
    final CacheStore<T>? cache = _getListDataFromCache(cacheName, decoder);
    if(cache == null || !cache.isValid()) {
      final result = await apiCall();
      if(result is SuccessResult<T>) {
        _putListDataFromCache(cacheName, encoder, result.data);
      }
      return result;
    }
    else {
      return AppResult.success(data: cache.data);
    }
  }

  CacheStore<T>? _getListDataFromCache<T>(
    String cacheName,
    T Function(List<dynamic> json)? decoder,
  ) {
    if(decoder == null) return null;
    final str = storage.getString(cacheName);
    if(str == null) return null;
    final raw = jsonDecode(str);
    final CacheStore<T> cache = CacheStore.fromJson(raw, (p0) => decoder(p0 as List<dynamic>));
    return cache;
  }

   void _putListDataFromCache<T>(
    String cacheName,
    List<Map<String, dynamic>> Function(T data)? encoder,
    T data,
  ) {
    if(encoder == null) return;
    final cache = CacheStore(
      lifetime * 24 * 60 * 60 * 1000,
      DateTime.now().millisecondsSinceEpoch, 
      cacheName, 
      data
    );
    storage.setString(
      cacheName,
      jsonEncode(cache.toJson((p0) => encoder(p0)))
    );
  }
}