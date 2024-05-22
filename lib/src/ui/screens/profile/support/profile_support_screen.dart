import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/ui/widgets/buttons/primary.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/app_bar.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/rounded_body.dart';
import 'package:babiconsultancy/src/ui/widgets/textfields/immutable_multi_line_text_field%20.dart';
import 'package:babiconsultancy/src/ui/widgets/textfields/immutable_text_field.dart';
import 'package:flutter/material.dart';

class ProfileSupportScreen extends CoreStatelessWidget {
  static const String route = "profile_support";
  const ProfileSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: theme.colorScheme.darken,
      child: Scaffold(
          extendBody: true,
          backgroundColor: theme.colorScheme.darken,
          appBar: CoreAppBar(
            title: Text(localization.of(LocalizationKeys.Transfer_Request_Title)),
          ),
          body: RoundedBody(
            child: Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  Text(
                    LocalizationKeys.lorem,
                    style: theme.textStyle.footnote02,
                  ),
                  SizedBox(height: 16.h),
                  const ImmutableTextField(),
                  SizedBox(height: 16.h),
                  const ImmutableMultiLineTextField(),
                  const Spacer(),
                  PrimaryButton(
                    text: localization.of(LocalizationKeys.Transfer_Request_Send),
                    onClick: (){},
                  )
                ],
              )
            )
          ),
      ),
    );
  }
}