// ignore_for_file: constant_identifier_names

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

abstract class Assets {
  static const String app_logo = "assets/images/logo/app_logo.jpeg";
  static const String lock = "assets/images/vectors/lock.svg";
  static const String successAnim = "assets/animation/success_anim.json";  
  static const String owlAnim = "assets/animation/owl_info_anim.json";  

  
  static const String result_not_found = "assets/images/vectors/result_not_found.svg";
  static const String smile_seat = "assets/images/vectors/smile_seat.svg";
  static const String seat = "assets/images/vectors/seat.svg";
  static const String seat_disabled = "assets/images/vectors/seat_disabled.svg";
  static const String seat_selected = "assets/images/vectors/seat_selected.svg";

  static const String email = "assets/images/vectors/mail.svg";
  static const String padlock = "assets/images/vectors/padlock.svg";
  static const String aboutUsJpeg = "assets/images/jpeg/about_us.jpg";

}


extension AssetsWidget on String {
  Widget toSvg({
    EdgeInsetsGeometry padding = EdgeInsets.zero,
    final double? width,
    final double? height,
  }) {
    return Padding(
      padding: padding,
      child: SvgPicture.asset(this,width: width, height: height)
    );
  }

  Widget toImage({
    final double? width,
    final double? height,
  }) {
    return Image.asset(this,width: width,height: height);
  }

  Widget toSquareImage({
    final double? size,
  }) {
    return Image.asset(this,width: size,height: size);
  }
}