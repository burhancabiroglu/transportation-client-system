import 'package:babiconsultancy/main.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class CoreSnackBar extends SnackBar {
  const CoreSnackBar({
    super.key, 
    required super.content, 
    super.backgroundColor,
    super.behavior,
    super.dismissDirection,
    super.margin,
    super.duration
  });

  factory CoreSnackBar.success({ 
    required String? message,
    Duration? duration
  }) {
  return CoreSnackBar(
      content: Text(message ?? ""),
      backgroundColor: const Color(0xFF1DBF72),
      behavior: SnackBarBehavior.floating,
      dismissDirection: DismissDirection.up,
      margin: EdgeInsets.only(bottom: 830.h,left: 10,right: 10), 
      duration: duration ?? Durations.medium3,
    );
  }

  factory CoreSnackBar.error({ required String? message }) {
    return CoreSnackBar(
      content: Row(children: [
        const Icon(UniconsLine.times_circle,color: Colors.white),
        const SizedBox(width: 5),
        Text(message ?? "")
      ],),
      backgroundColor: appTheme.colorScheme.error,
      behavior: SnackBarBehavior.floating,
      dismissDirection: DismissDirection.up,
      margin: EdgeInsets.only(bottom: 830.h,left: 10,right: 10), 
    );
  }

  void show(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(this);
  }
}