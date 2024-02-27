import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/config/assets.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/core/window/window_guide.dart';
import 'package:babiconsultancy/src/ui/widgets/buttons/primary_variant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TransferNotFoundView extends CoreStatelessWidget {
  const TransferNotFoundView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        SvgPicture.asset(Assets.result_not_found),
        Text(
          localization.of(LocalizationKeys.Transfer_Not_Found),
          style: theme.textStyle.body02.copyWith(color: theme.colorScheme.textSecondary.withAlpha(160)),
        ),
        const Spacer(),
        PrimaryVariantButton(
          text: localization.of(LocalizationKeys.Transfer_Request_Button),
          margin: EdgeInsets.only(bottom: 28.h,right: WindowDefaults.wall,left: WindowDefaults.wall),
        )
      ]
    );
  }
}