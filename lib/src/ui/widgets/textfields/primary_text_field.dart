import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:flutter/material.dart';

class PrimaryTextField extends CoreStatelessWidget {
  const PrimaryTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const TextField(
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.person_outline),
            border: InputBorder.none,
            hintText: "Full name",
        )
      ),
    );
  }
}
