import 'package:babiconsultancy/src/backend/api/shared_pref.dart';
import 'package:babiconsultancy/src/backend/model/config/app_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.setMockInitialValues({});
  final instance =  await SharedPreferences.getInstance();
  const AppConfig testObject = AppConfig(
    appVersion: "deneme",
    appCode: 123,
    aboutUsLink: "deneme.com"
  );

  late LocalStorage localStorage;

  setUp(() {
    localStorage = LocalStorage.initAsync(instance);
  });

  
  test('setJson and getJson', () async {
    final json = testObject.toJson();
    await localStorage.setJson('testObject',json);
    final retrievedObject = localStorage.getJson('testObject');
    expect(retrievedObject, json);
  });

  test('setObject and getObject', () async {
    await localStorage.setObject(
      key: 'testObject',
      value: testObject,
      encoder: (a) => a.toJson()
    );
    final retrievedObject = localStorage.getObject(
      key: 'testObject',
      decoder: AppConfig.fromJson
    );
    expect(retrievedObject, testObject);
  });
}