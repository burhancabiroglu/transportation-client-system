// ignore_for_file: constant_identifier_names

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

abstract class Assets {
  static const String app_logo = "assets/images/logo/app_logo.jpeg";
  static const String lock = "assets/images/vectors/lock.svg";
  static const String successAnim = "assets/animation/success_anim.json";  
  
  static const String result_not_found = "assets/images/vectors/result_not_found.svg";
  static const String seat = "assets/images/vectors/seat.svg";
  static const String seat_disabled = "assets/images/vectors/seat_disabled.svg";
  static const String seat_selected = "assets/images/vectors/seat_selected.svg";

  static const String email = "assets/images/vectors/mail.svg";
  static const String padlock = "assets/images/vectors/padlock.svg";
}


extension AssetsWidget on String {
  Widget toSvg({EdgeInsetsGeometry padding = EdgeInsets.zero}) {
    return Padding(
      padding: padding,
      child: SvgPicture.asset(this)
    );
  }

  Widget toImage() {
    return Image.asset(this);
  }
}