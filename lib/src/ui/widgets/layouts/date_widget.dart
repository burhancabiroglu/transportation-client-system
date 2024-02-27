import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateWidget extends CoreStatelessWidget {
  final DateTime? dateTime;
  final AlignmentGeometry? alignment;
  final EdgeInsetsGeometry? padding;
  const DateWidget({
    super.key,
    this.dateTime,
    this.alignment, 
    this.padding
  });

  String get day => DateFormat.d().format(dateTime ?? DateTime.now());
  String get dayName => DateFormat.E().format(dateTime ?? DateTime.now());
  String get year => DateFormat.y().format(dateTime ?? DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      alignment: alignment,
      child: Text.rich(TextSpan(children: [
        TextSpan(
            text: "$day ",
            style: theme.textStyle.callout01
                .copyWith(color: theme.colorScheme.textPrimary)),
        TextSpan(
            text: "$dayName ",
            style: theme.textStyle.callout01
                .copyWith(color: theme.colorScheme.error)),
        TextSpan(
            text: year,
            style: theme.textStyle.callout01
                .copyWith(color: theme.colorScheme.textSecondary))
      ])),
    );
  }
}
