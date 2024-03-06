import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:flutter/material.dart';


class PrimaryButton extends CoreStatelessWidget {
  final bool isEnabled;
  final VoidCallback? onClick;
  final String text;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  const PrimaryButton({
      Key? key,
      this.text = "",
      this.onClick,
      this.padding = EdgeInsets.zero,
      this.margin = EdgeInsets.zero,
      this.isEnabled = true,
    })  : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Size.fromHeight(70.h);
    return Container(
      padding: padding,
      margin: margin,
      child: FilledButton(
        onPressed: isEnabled ? onClick : null,
        style: ElevatedButton.styleFrom(
          elevation: 4,
          backgroundColor: theme.colorScheme.primary,
          disabledBackgroundColor: theme.colorScheme.disabled,
          shadowColor: theme.colorScheme.primary.withAlpha(600),
          minimumSize: Size(2000, size.height),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        child: Text(
          text,
          style: theme.textStyle.heading03.copyWith(color: theme.colorScheme.white),
        )
      ),
    );
  }
}
