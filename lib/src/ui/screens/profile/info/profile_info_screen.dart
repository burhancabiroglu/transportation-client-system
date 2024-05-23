import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/app_bar.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/rounded_body.dart';
import 'package:babiconsultancy/src/ui/widgets/textfields/immutable_multi_line_text_field%20.dart';
import 'package:babiconsultancy/src/ui/widgets/textfields/immutable_text_field_data.dart';
import 'package:flutter/material.dart';

class ProfileInfoScreen extends CoreStatelessWidget {
  static const String route = "profile_info";
  static const String argsKey = "dataList";
  final List<ImmutableTextFieldData> args;
  const ProfileInfoScreen({
    super.key,
    required this.args
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: theme.colorScheme.darken,
      child: Scaffold(
        extendBody: true,
        backgroundColor: theme.colorScheme.darken,
        appBar: CoreAppBar(
          title: Text(localization.of(LocalizationKeys.Profile_Info)),
        ),
        body: RoundedBody(
          child: Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 16.h),
                ImmutableMultiLineTextField(
                  children: args,
                  scale: 1.8,
                ),
              ],
            )
          )
        ),
      ),
    );
  }
}