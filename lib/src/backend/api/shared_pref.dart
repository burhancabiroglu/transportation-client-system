import 'dart:async';
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

typedef JsonMap = Map<String, dynamic>;
typedef JsonListMap = List<dynamic>;


class LocalStorage {
  final SharedPreferences _prefs;
  const LocalStorage.initAsync(this._prefs);

  Future<bool> setString(String key, String value) => _prefs.setString(key, value);

  String? getString(String key) => _prefs.getString(key);

  Future<bool> remove(String key) => _prefs.remove(key);

  Future<bool> clear() => _prefs.clear();

  Future<bool> setJson(String key, JsonMap value) => _prefs.setString(key, jsonEncode(value));

  JsonMap? getJson(String key){
    final raw = _prefs.getString(key);
    if(raw == null || raw.isEmpty) return null;
    return jsonDecode(raw);
  }

  JsonListMap? getJsonList(String key){
    final raw = _prefs.getStringList(key);
    if(raw == null || raw.isEmpty) return null; 
    return raw.map((e)=>jsonDecode(e)).toList();
  }

  Future<bool> setJsonList(String key, JsonListMap value){
    final raw = value.map((e) => jsonEncode(e)).toList();
    return _prefs.setStringList(key,raw);
  }
    
  Future<bool> setObject<T>({
    required String key, 
    required T value,
    Map<String, dynamic> Function(T data)? encoder,
  }) {
    if(encoder == null) return Future.value(false);
    return setJson(key, encoder(value));
  }

  T? getObject<T>({
    required String key,
    T Function(Map<String, dynamic> json)? decoder,
  }){
    if(decoder == null) return null;
    final raw = getJson(key);
    if(raw == null) return null;
    return decoder(raw);
  }

  Future<bool> setObjectList<T>({
    required String key, 
    required List<T> value,
    Map<String, dynamic> Function(T data)? encoder,
  }) {
    if(encoder == null) return Future.value(false);
    return setJsonList(key, value.map((e) => encoder(e)).toList());
  }

  List<T>? getObjectList<T>({
    required String key,
    T Function(Map<String, dynamic> json)? decoder,
  }){
    if(decoder == null) return null;
    final raw = getJsonList(key);
    if(raw == null) return null;
    return raw.map((e) => decoder(e)).toList();
  }
}