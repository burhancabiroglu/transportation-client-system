import 'package:babiconsultancy/src/backend/model/status/status.dart';
import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:babiconsultancy/src/core/window/window_extension.dart';
import 'package:flutter/material.dart';

class StatusBadge extends CoreStatelessWidget {
  final int statusKey;
  const StatusBadge({
    super.key,
    required this.statusKey
  });

  @override
  Widget build(BuildContext context) {
    final status = Status.getById(statusKey);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 6.h),
      decoration: BoxDecoration(
        color: Color(status.color),
        borderRadius: BorderRadius.circular(8)
      ),
      child: Text(
        localization.of(status.key),
        style: theme.textStyle.caption02.copyWith(color: theme.colorScheme.white),
      ),
    );
  }
}