import 'package:flutter/widgets.dart';

class ConditionalWidget extends StatelessWidget {
  final bool condition;
  final Widget? trueConditionWidget;
  final Widget? falseConditionWidget;
  const ConditionalWidget({
    super.key, 
    this.condition = false,
    this.trueConditionWidget, 
    this.falseConditionWidget
  });

  @override
  Widget build(BuildContext context) {
    return (condition ? trueConditionWidget: falseConditionWidget) ?? const Placeholder();
  }
}