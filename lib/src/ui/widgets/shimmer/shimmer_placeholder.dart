import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';


class ShimmerPlaceHolder extends StatelessWidget {
  final Widget child;
  final bool enabled;
  const ShimmerPlaceHolder({super.key, required this.child, this.enabled = true});

  @override
  Widget build(BuildContext context) {
    return enabled ? Shimmer.fromColors(
      enabled: true,
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: child,
    ): child;
  }
}