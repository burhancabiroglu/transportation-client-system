import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:babiconsultancy/src/core/window/window_guide.dart';
import 'package:babiconsultancy/src/ui/widgets/textfields/immutable_text_field_data.dart';
import 'package:flutter/material.dart';

class ImmutableMultiLineTextField extends CoreStatelessWidget {
  final List<ImmutableTextFieldData> children;
  final double scale;
  const ImmutableMultiLineTextField({
    super.key, 
    this.scale = 1,
    this.children = const []
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 16.w, 
        vertical: WindowDefaults.verticalPadding
      ),
      decoration: BoxDecoration(
        color: theme.colorScheme.disabled.withOpacity(0.6),
        border: Border.all(color: theme.colorScheme.disabled),
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: List<Widget>.generate(children.length, (index) {
          final data = children[index];
          return Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data.label,
                    style: textStyle.caption02.copyWith(
                      color: colorScheme.textSecondary,
                      fontSize: (textStyle.caption02.fontSize ?? 1) * (scale > 1 ? (scale / 1.5) : scale)
                    ),
                  ),
                  SizedBox(height: 4.h * scale),
                  Text(
                    data.text,
                    style: textStyle.footnote01.copyWith(
                      color: colorScheme.primary,
                      fontSize: (textStyle.footnote01.fontSize ?? 1) * (scale > 1 ? (scale / 1.5) : scale)
                    ),
                  ),
                ],
              ),
              if(children.length - 1 != index)... [
                SizedBox(height: 16.h * scale),
              ]
            ],
          );
        })
      ),
    );
  }
}