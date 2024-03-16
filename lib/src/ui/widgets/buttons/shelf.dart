import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/core/window/window_guide.dart';
import 'package:flutter/material.dart';

class Shelf extends CoreStatelessWidget {
  final String text;
  final void Function()? onClick;
  final bool isSignOut;
  const Shelf({
    Key? key,
    this.text = "",
    this.onClick,
    this.isSignOut = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 72.h,
          child: Material(
            color: Colors.white,
            type: MaterialType.button,
            child: InkWell(
              onTap: onClick,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: WindowDefaults.wall),
                  Text(
                    text,
                    style: theme.textStyle.body04.copyWith(
                      color :isSignOut ? theme.colorScheme.error : theme.colorScheme.textPrimary
                    )
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 40.w,
                    child: Icon(Icons.arrow_forward_ios, color: theme.colorScheme.disabled, size: 22.h),
                  ),
                ],
              ),
            ),
          ),
        ),
        Divider(height: 0, thickness: 2,color: theme.colorScheme.container)
      ],
    );
  }
}
