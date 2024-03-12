import 'dart:ui';

import 'package:babiconsultancy/src/backend/repo/shared_pref.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AboutUsCubit extends Cubit {
  final LocalStorage storage;
  AboutUsCubit({
    required this.storage
  }): super(0) {
    controller.loadRequest(Uri.parse(storage.appConfig!.aboutUsLink));
  }
  

  final controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..setBackgroundColor(const Color(0x00000000));
}