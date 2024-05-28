// ignore_for_file: constant_identifier_names

import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/ui/screens/home/home_screen.dart';
import 'package:babiconsultancy/src/ui/screens/profile/profile_screen.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/nodes/airport_transfer_screen.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/nodes/default_transfer_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:unicons/unicons.dart';

class NavBarData {
  final int order;
  final IconData icon;
  final String navBarkey;
  final String key;
  final String route;
  
  const NavBarData._({
    required this.order,
    required this.icon, 
    required this.key, 
    required this.navBarkey,
    required this.route 
  });

  static const NavBarData HOME = NavBarData._(
    order: 0,
    route: HomeScreen.route,
    key: LocalizationKeys.Home_Title,
    navBarkey: LocalizationKeys.Home_Title,
    icon: UniconsLine.home_alt,
  );
  
  static const NavBarData PROFILE = NavBarData._(
    order: 3,
    route: ProfileScreen.route,
    key: LocalizationKeys.Profile_Title,
    navBarkey: LocalizationKeys.Profile_Title,
    icon: UniconsLine.user,
  );

  static const NavBarData AIRPORT_TRANSFERS = NavBarData._(
    order: 2,
    route: AirportTransferScreen.route,
    key: LocalizationKeys.Airport_Transfer_Title,
    navBarkey: LocalizationKeys.Airport_Transfer_Nav_Title,
    icon: UniconsLine.plane,
  );

  static const NavBarData TRANSFERS = NavBarData._(
    order: 1,
    route: DefaultTransferScreen.route,
    key: LocalizationKeys.Transfer_Title,
    navBarkey: LocalizationKeys.Transfer_Title,
    icon: FontAwesomeIcons.bus,
  );

   
  static NavBarData get(int i){
    switch(i) {
      case 0: return HOME;
      case 1: return TRANSFERS;
      case 2: return AIRPORT_TRANSFERS;
      case 3: return PROFILE;
      default: return HOME;
    }
  }
}