import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // COLORS
  static Color colorWhite = const Color(0xffffffff);
  static Color colorGrey = const Color(0xffbfb8b2);
  static Color colorGrey2 = const Color(0xffc3bfb9);

  // HEADING TEXT

  static Text headingTextStyle(
      {required String text,
      Color? color,
      FontWeight? fontWeight,
      double? fontSize,
      TextAlign? textAlign,
      int? maxLines,
      TextOverflow? textOverflow}) {
    return Text(
      text,
      style: GoogleFonts.inter(
          color: color ?? const Color(0xffffffff),
          fontWeight: fontWeight ?? FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: fontSize ?? 24.0),
      textAlign: textAlign ?? TextAlign.left,
      overflow: textOverflow ?? TextOverflow.clip,
      maxLines: maxLines ?? 1,
    );
  }

  // BODY TEXT
  static Text bodyTextStyle(
      {required String text,
      Color? color,
      FontWeight? fontWeight,
      double? fontSize,
      TextAlign? textAlign,
      int? maxLines}) {
    return Text(
      text,
      style: GoogleFonts.inter(
          color: color ?? const Color(0xffffffff),
          fontWeight: fontWeight ?? FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: fontSize ?? 13.0),
      textAlign: textAlign ?? TextAlign.left,
      maxLines: maxLines ?? 1,
    );
  }
}
