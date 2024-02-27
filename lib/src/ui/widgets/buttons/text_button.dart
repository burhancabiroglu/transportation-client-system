import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:flutter/material.dart';

class CoreTextButton extends CoreStatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final TextStyle? style;

  const CoreTextButton({
    super.key,
    required this.text, 
    this.onPressed,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 3)
      ),
      child: Text(text, style: style),
    );
  }

}