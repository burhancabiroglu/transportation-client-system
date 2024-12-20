// ignore_for_file: unused_field

import 'package:babiconsultancy/src/core/base/core_localization.dart';
import 'package:babiconsultancy/src/core/localization/turkish_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LocalizationManager {
  static final LocalizationManager _instance = LocalizationManager._init();

  LocalizationManager._init();
  
  String currentCode = "tr";

  factory LocalizationManager() {
    return _instance;
  }

  @protected
  final Map<String,CoreLocalization> _map = {
      "tr": const TurkishLocalization()
  };

  String of(String key) {
    final localization = _map[currentCode];
    return localization?.map[key]?? key;
  }
}