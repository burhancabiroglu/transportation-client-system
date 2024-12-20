import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/config/assets.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AboutUsBox extends CoreStatelessWidget {
  const AboutUsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(Assets.aboutUsJpeg, height: 90.h),
        ),
        SizedBox(width: 16.w),
        Expanded(
          child: Text(
            localization.of(LocalizationKeys.About_Us_Text),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: textStyle.footnote02.copyWith(color: colorScheme.textSecondary),
          ),
        )
      ],
    );
  }
}