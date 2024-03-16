import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/core/window/window_guide.dart';
import 'package:babiconsultancy/src/ui/screens/home/home_cubit.dart';
import 'package:babiconsultancy/src/ui/widgets/about/about_us_box.dart';
import 'package:babiconsultancy/src/ui/widgets/buttons/more.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/app_bar.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/date_widget.dart';
import 'package:babiconsultancy/src/ui/widgets/layouts/rounded_body.dart';
import 'package:babiconsultancy/src/ui/widgets/ticket/no_booking_box.dart';
import 'package:babiconsultancy/src/ui/widgets/ticket/transfer_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends CoreStatelessWidget {
  static const route = "/main/home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<HomeCubit>(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.darken,
      appBar: CoreAppBar(title: Text(localization.of(LocalizationKeys.Home_Title))),
      body: RoundedBody(
        child: Column(
          children: [
            DateWidget(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(top: 20.w,right: 32.h)
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: WindowDefaults.wall),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(localization.of(LocalizationKeys.Home_Transfers), style: theme.textStyle.body04),
                  SizedBox(height: 12.h),
                  const TransfersBox()
                ],
              ),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: WindowDefaults.wall),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(localization.of(LocalizationKeys.Home_Transfer_Requests), style: theme.textStyle.body04),
                  SizedBox(height: 12.h),
                  const NoBookingBox()
                ],
              ),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: WindowDefaults.wall),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(localization.of(LocalizationKeys.About_Us_Title), style: theme.textStyle.body04),
                      MoreButton(
                        onPressed: bloc.navigateToAboutUs,
                      )
                    ],
                  ),
                  const AboutUsBox()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}