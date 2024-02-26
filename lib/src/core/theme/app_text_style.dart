import 'package:babiconsultancy/src/core/base/core_theme.dart';
import 'package:flutter/material.dart';

class BabiAppTextStyle extends CoreTextStyle {
  const BabiAppTextStyle();

  @override
  TextStyle get heading01 => const TextStyle(
    fontFamily: "Poppins",
    fontSize: 34,
    fontWeight: FontWeight.w600,
    color:Color(0xFF19191B),
  );

  @override
  TextStyle get heading02 => const TextStyle(
    fontFamily: "Poppins",
    fontSize: 30,
    fontWeight: FontWeight.w600,
    color:Color(0xFF19191B),
  );

  @override
  TextStyle get heading03 => const TextStyle(
    fontFamily: "Poppins",
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color:Color(0xFF19191B),
  );

  @override
  TextStyle get heading04 => const TextStyle(
    fontFamily: "Poppins",
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color:Color(0xFF19191B),
  );

  @override
  TextStyle get heading05 => const TextStyle(
    fontFamily: "Poppins",
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color:Color(0xFF19191B),
  );


  @override
  TextStyle get body01 => const TextStyle(
    fontFamily: "Poppins",
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color:Color(0xFF19191B),
  );

  @override
  TextStyle get body02 => const TextStyle(
    fontFamily: "Poppins",
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color:Color(0xFF19191B),
  );

  @override
  TextStyle get body03 => const TextStyle(
    fontFamily: "Poppins",
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color:Color(0xFF19191B),
  );

  @override
  TextStyle get body04 => const TextStyle(
    fontFamily: "Poppins",
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color:Color(0xFF19191B),
  );

  @override
  TextStyle get callout01 => const TextStyle(
    fontFamily: "Poppins",
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color:Color(0xFF19191B),
  );

  @override
  TextStyle get callout02 => const TextStyle(
    fontFamily: "Poppins",
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color:Color(0xFF19191B),
  );

  @override
  TextStyle get caption01 => const TextStyle(
    fontFamily: "Poppins",
    fontSize: 10,
    fontWeight: FontWeight.w700,
    color:Color(0xFF19191B),
  );

  @override
  TextStyle get caption02 => const TextStyle(
    fontFamily: "Poppins",
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color:Color(0xFF19191B),
  );

  @override
  TextStyle get footnote01 => const TextStyle(
    fontFamily: "Poppins",
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color:Color(0xFF19191B),
  );

  @override
  TextStyle get footnote02 => const TextStyle(
    fontFamily: "Poppins",
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color:Color(0xFF19191B),
  );
  
  @override
  TextStyle get title01 => const TextStyle(
    fontFamily: "Poppins",
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
}