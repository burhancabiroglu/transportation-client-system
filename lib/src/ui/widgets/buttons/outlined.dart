import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:flutter/material.dart';

class OutlinedAppButton extends CoreStatelessWidget {
  final VoidCallback? onClick;
  final Size size;
  final String text;
  const OutlinedAppButton({Key? key,
      this.size = const Size.fromHeight(60),
      this.text = "",
      this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color textColor = theme.colorScheme.primary;
    final Color backgroundColor = theme.colorScheme.container;
    final Color primaryColor = theme.colorScheme.primary;
    final BorderSide borderSide = BorderSide(color: primaryColor,width: 1.1);
    final OutlinedBorder border = RoundedRectangleBorder(borderRadius: BorderRadius.circular(12));
    return OutlinedButton(
      onPressed: onClick,
      style: OutlinedButton.styleFrom(
        elevation: 0,
        backgroundColor: backgroundColor,
        minimumSize: Size(2000, size.height),
        shape: border,
        side: borderSide
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: size.height / 3.4,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        )
      )
    );
  }
}
