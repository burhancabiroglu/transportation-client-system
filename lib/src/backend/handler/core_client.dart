// ignore_for_file: implementation_imports

import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/src/dio/dio_for_native.dart' show DioForNative;

class CoreClient extends DioForNative {
  static String? authorizationToken;

  Map<String, String> get _headers => {
    HttpHeaders.acceptHeader: "application/json",
    HttpHeaders.contentTypeHeader: "application/json",
    HttpHeaders.authorizationHeader: "Bearer $authorizationToken"
  };

  CoreClient([BaseOptions? options]): super();
  
  @override
  BaseOptions get options => super.options.copyWith(headers: _headers);

}