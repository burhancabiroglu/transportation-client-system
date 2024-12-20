import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends CoreStatelessWidget {
  final VoidCallback? onClick;
  final Size size;
  final String text;
  const SecondaryButton({Key? key,
      this.size = const Size.fromHeight(60),
      this.text = "",
      this.onClick
      }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onClick,
      style: ElevatedButton.styleFrom(
        elevation: 4,
        backgroundColor: theme.colorScheme.container,
        disabledBackgroundColor: theme.colorScheme.container,
        shadowColor: theme.colorScheme.container.withAlpha(600),
        minimumSize: Size(2000, size.height),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: theme.colorScheme.primary,
          fontSize: size.height / 3.4,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        )
      )
    );
  }
}