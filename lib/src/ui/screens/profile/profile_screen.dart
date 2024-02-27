import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/app_bar.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/rounded_body.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends CoreStatelessWidget {
  static const route = "/main/profile";
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.darken,
      appBar: CoreAppBar(title: Text(localization.of(LocalizationKeys.Profile_Title))),
      body: RoundedBody(
        child: Container(),
      ),
    );
  }
}