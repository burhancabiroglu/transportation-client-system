import 'package:flutter/material.dart';

abstract class CoreColorScheme {
    const CoreColorScheme();
    abstract final Color primary;
    abstract final Color container;
    abstract final Color textPrimary;
    abstract final Color textSecondary;
    abstract final Color error;
    abstract final Color secondary;
    abstract final Color dark;
    abstract final Color darken;
    abstract final Color forest;
    abstract final Color success;
    abstract final Color white;
}

abstract class CoreTextStyle {
    const CoreTextStyle();
}

abstract class CoreTheme {
  const CoreTheme();
  abstract final CoreColorScheme colorScheme; 
  abstract final CoreTextStyle textStyle;
}