import 'package:babiconsultancy/main.dart';
import 'package:babiconsultancy/src/core/base/core_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CoreBottomNavBar extends GNav{
  CoreTheme get theme => appTheme;
  
  const CoreBottomNavBar({super.key}):super(tabs: const []);

  @override
  List<GButton> get tabs => [
      GButton(icon: Icons.home),
      GButton(icon: Icons.home),
      GButton(icon: Icons.home),
      GButton(icon: Icons.home)
  ];
  
  @override
  EdgeInsetsGeometry get padding => const EdgeInsets.only(bottom: 40,top: 20,left: 20,right: 20);

  @override
  Color get backgroundColor => theme.colorScheme.white;
}
