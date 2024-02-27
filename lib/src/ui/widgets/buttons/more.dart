import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/ui/widgets/buttons/text_button.dart';
import 'package:flutter/material.dart';

class MoreButton extends CoreStatelessWidget {
  final VoidCallback? onPressed;
  const MoreButton({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CoreTextButton(
      text: localization.of(LocalizationKeys.More),
      style: theme.textStyle.callout01.copyWith(
        fontSize: 13,
        color: theme.colorScheme.forest,
        decoration: TextDecoration.underline,
        decorationColor: theme.colorScheme.forest,
      ),
      onPressed: onPressed
    );
  }
}