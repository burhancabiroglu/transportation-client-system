import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/ui/screens/aboutus/about_us_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AboutUsScreen extends CoreStatelessWidget {
  static const String route = "about_us";

  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<AboutUsCubit>(context);
    return WebViewWidget(controller: bloc.controller);
  }
}