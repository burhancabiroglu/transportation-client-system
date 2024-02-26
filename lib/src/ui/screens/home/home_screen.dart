import 'package:babiconsultancy/src/core/base/core_stateless_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends CoreStatelessWidget {
  static const route = "/main/home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("home")
    );
  }
}