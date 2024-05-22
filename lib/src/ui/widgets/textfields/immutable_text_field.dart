import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/ui/widgets/textfields/immutable_text_field_data.dart';
import 'package:flutter/material.dart';

class ImmutableTextField extends CoreStatelessWidget {
  final ImmutableTextFieldData data;
  const ImmutableTextField({
    super.key,
    required this.data
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72.h,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: theme.colorScheme.disabled.withOpacity(0.6),
        border: Border.all(color: theme.colorScheme.disabled),
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            data.label,
            style: textStyle.caption02.copyWith(color: colorScheme.textSecondary),
          ),
          SizedBox(height: 4.h),
          Text(
            data.text,
            style: textStyle.footnote01.copyWith(color: colorScheme.primary),
          ),
        ],
      ),
    );
  }
}
