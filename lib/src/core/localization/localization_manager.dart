// ignore_for_file: unused_field

import 'package:babiconsultancy/src/core/base/app_localization.dart';
import 'package:babiconsultancy/src/core/localization/turkish_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LocalizationManager {
  static final LocalizationManager _instance = LocalizationManager._init();

  LocalizationManager._init();
  
  String currentCode = "TR";

  factory LocalizationManager() {
    return _instance;
  }

  @protected
  final Map<String,CoreLocalization> _map = {
      "TR": const TurkishLocalization()
  };

  String of(String key) {
    final localization = _map[currentCode];
    return localization?.map[key]?? key;
  }
}