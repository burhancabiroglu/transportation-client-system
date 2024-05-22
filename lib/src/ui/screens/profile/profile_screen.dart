import 'package:babiconsultancy/src/backend/model/user/user.dart';
import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/core/window/window_guide.dart';
import 'package:babiconsultancy/src/ui/dialogs/bottom_sheet_dialog.dart';
import 'package:babiconsultancy/src/ui/routes/core_router.dart';
import 'package:babiconsultancy/src/ui/screens/profile/profile_cubit.dart';
import 'package:babiconsultancy/src/ui/screens/profile/profile_state.dart';
import 'package:babiconsultancy/src/ui/screens/profile/support/profile_support_screen.dart';
import 'package:babiconsultancy/src/ui/widgets/buttons/shelf.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/app_bar.dart';
import 'package:babiconsultancy/src/ui/widgets/shimmer/shimmer_placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_avatar/random_avatar.dart';

class ProfileScreen extends CoreStatelessWidget {
  static const route = "/main/profile";
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<ProfileCubit>(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.darken,
      appBar: CoreAppBar(title: Text(localization.of(LocalizationKeys.Profile_Title))),
      body: Column(
        children: [
          BlocBuilder<ProfileCubit,ProfileState>(
            bloc: cubit,
            builder: (context,state) {
              return Container(
                padding: EdgeInsets.symmetric(
                  horizontal: WindowDefaults.wall,
                  vertical: WindowDefaults.verticalPadding
                ),
                color: theme.colorScheme.darken,
                child: Row(
                  children: [
                    ShimmerPlaceHolder(
                      enabled: state is! ProfileStateSuccess,
                      child: RandomAvatar(
                        state.info?.fullname ?? "none",
                        height: 100.h
                      ),
                    ),
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
                          state.info?.fullname ?? "",
                          style: theme.textStyle.body02.copyWith(color: theme.colorScheme.white),
                        ),
                      ],
                    )
                  ],
                ),
              );
            }
          ),
          SizedBox(height: 40.h),
          Expanded(
            child: ColoredBox(
              color: theme.colorScheme.container,
              child: Column(
                children: [
                  Shelf(
                    text: localization.of(LocalizationKeys.Profile_Info),
                    onClick: cubit.routeToProfileInfo
                  ),
                  /*Shelf(
                    text: localization.of(LocalizationKeys.Profile_Change_Password)
                  ), */
                  Shelf(
                    text: localization.of(LocalizationKeys.Profile_Support),
                    onClick: () => CoreRouter.main.pushNamed(ProfileSupportScreen.route)
                  ),
                  SizedBox(height: WindowDefaults.verticalPadding),
                  Shelf(
                    text: localization.of(LocalizationKeys.Profile_Logout),
                    isSignOut: true,
                    onClick: logoutBottomSheet
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