import 'package:flutter/material.dart';

extension ArgumentExtension on RouteSettings {
  T args<T>(String key) {
    final map = (arguments ?? <String, dynamic>{}) as Map;
    return map[key] as T;
  }
}