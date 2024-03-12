import 'dart:convert';
import 'package:babiconsultancy/src/backend/model/config/app_config.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  final SharedPreferences prefs;
  const LocalStorage.initAsync(this.prefs);
  
  String? get language {
    return prefs.getString("language");
  }
  set language(String? value){
    if(value == null) {
      prefs.remove("language");
    }
    else {
      prefs.setString("language", value); 
    }
  }

  AppConfig? get appConfig {
    final str = prefs.getString("appConfig");
    if(str == null) return null;
    final jsonValue = json.decode(str);
    return AppConfig.fromJson(jsonValue);
  }
  
  set appConfig(AppConfig? value){
    if(value == null) {
      prefs.remove("appConfig");
    }
    else {
      final str = json.encode(value.toJson());
      prefs.setString("appConfig", str); 
    }
  }

}