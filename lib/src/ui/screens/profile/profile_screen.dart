import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/core/window/window_guide.dart';
import 'package:babiconsultancy/src/ui/widgets/buttons/shelf.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:random_avatar/random_avatar.dart';

class ProfileScreen extends CoreStatelessWidget {
  static const route = "/main/profile";
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.darken,
      appBar: CoreAppBar(title: Text(localization.of(LocalizationKeys.Profile_Title))),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: WindowDefaults.wall,
              vertical: WindowDefaults.verticalPadding
            ),
            color: theme.colorScheme.darken,
            child: Row(
              children: [
                RandomAvatar("burhan cabiroglu", height: 100.h),
                SizedBox(width: 24.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      localization.of(LocalizationKeys.Profile_Greetings),
                      style: theme.textStyle.caption02.copyWith(color: theme.colorScheme.white),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      "demoglu@gmail.com",
                      style: theme.textStyle.body02.copyWith(color: theme.colorScheme.white),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 40.h),
          Expanded(
            child: ColoredBox(
              color: theme.colorScheme.container,
              child: Column(
                children: [
                  Shelf(
                    text: localization.of(LocalizationKeys.Profile_Settings),
                    onClick: () {},
                  ),
                  Shelf(
                    text: localization.of(LocalizationKeys.Profile_Change_Password)
                  ),
                  Shelf(
                    text: localization.of(LocalizationKeys.Profile_Support)
                  ),
                  SizedBox(height: WindowDefaults.verticalPadding),
                  Shelf(
                    text: localization.of(LocalizationKeys.Profile_Logout),
                    isSignOut: true,
                  ),
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}