import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:flutter/material.dart';


class PrimaryVariantButton extends CoreStatelessWidget {
  final VoidCallback? onClick;
  final String text;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  const PrimaryVariantButton({Key? key,
      this.text = "",
      this.onClick,
      this.padding = EdgeInsets.zero,
      this.margin = EdgeInsets.zero
    })  : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Size.fromHeight(70.h);
    return Container(
      padding: padding,
      margin: margin,
      child: FilledButton(
        onPressed: onClick,
        style: ElevatedButton.styleFrom(
          elevation: 4,
          backgroundColor: theme.colorScheme.forest,
          disabledBackgroundColor: theme.colorScheme.forest,
          shadowColor: theme.colorScheme.forest.withAlpha(600),
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
