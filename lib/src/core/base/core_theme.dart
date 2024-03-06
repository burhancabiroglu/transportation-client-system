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
    abstract final Color transparent;
    abstract final Color black;
    abstract final Color disabled;
}

abstract class CoreTextStyle {
    const CoreTextStyle();
    abstract final TextStyle title01;
    abstract final TextStyle heading01;
    abstract final TextStyle heading02;
    abstract final TextStyle heading03;
    abstract final TextStyle heading04;
    abstract final TextStyle heading05;
    abstract final TextStyle body01;
    abstract final TextStyle body02;
    abstract final TextStyle body03;
    abstract final TextStyle body04;
    abstract final TextStyle callout01;
    abstract final TextStyle callout02;
    abstract final TextStyle footnote01;
    abstract final TextStyle footnote02;
    abstract final TextStyle caption01;
    abstract final TextStyle caption02;
}

abstract class CoreTheme {
  const CoreTheme();
  abstract final CoreColorScheme colorScheme; 
  abstract final CoreTextStyle textStyle;
}