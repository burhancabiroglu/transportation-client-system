import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:flutter/material.dart';

class RoundedBody extends CoreStatelessWidget {
  final Widget? child;
  const RoundedBody({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: theme.colorScheme.container,
        borderRadius:const BorderRadius.vertical(top: Radius.circular(40))
      ),
      child: child,
    );
  }
}