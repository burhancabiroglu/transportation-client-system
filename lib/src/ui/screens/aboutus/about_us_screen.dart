import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/ui/screens/aboutus/about_us_cubit.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/app_bar.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/rounded_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AboutUsScreen extends CoreStatelessWidget {
  static const String route = "about_us";

  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<AboutUsCubit>(context);
    return Container(
      color: theme.colorScheme.darken,
      child: Scaffold(
          extendBody: true,
          backgroundColor: theme.colorScheme.darken,
          appBar: CoreAppBar(
            title: Text(localization.of(LocalizationKeys.About_Us_Title)),
          ),
          body: RoundedBody(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20.0),
              ),
              child: WebViewWidget(controller: bloc.controller)
            )
          ),
      ),
    );
  }
}