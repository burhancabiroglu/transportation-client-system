import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/config/assets.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class SeatToolsetWidget extends CoreStatelessWidget {
  const SeatToolsetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 28.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text.rich(
            TextSpan(
              text: localization.of(LocalizationKeys.Transfer_Request_Selectable),
              children: [
                const TextSpan(text:"\t\t"),
                WidgetSpan(child: SvgPicture.asset(Assets.seat,height: 28.h))
              ]
            )
          ),
          Text.rich(
            TextSpan(
              text: localization.of(LocalizationKeys.Transfer_Request_UnSelectable),
              children: [
                const TextSpan(text:"\t\t"),
                WidgetSpan(child: SvgPicture.asset(Assets.seat_disabled,height: 28.h))
              ]
            )
          ),
          Text.rich(
            TextSpan(
              text: localization.of(LocalizationKeys.Transfer_Request_Selected),
              children: [
                const TextSpan(text:"\t\t"),
                WidgetSpan(child: SvgPicture.asset(Assets.seat_selected,height: 28.h))
              ]
            )
          ),
        ],
      ),
    );
  }
}