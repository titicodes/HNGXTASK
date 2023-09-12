import 'package:flutter/material.dart';

import 'colors.dart';
import 'dimens.dart';

abstract class AppStyles {
  static const Color kShadowColor = Color.fromRGBO(0, 0, 0, 0.1);

  static String get defaultFontFamily => 'Poppins';

  static String get mugeFontFamily => 'Muge';

  static double get defaultFontHeight => 1.2;

  static BorderRadius get defaultBorderRadius =>
      BorderRadius.circular(Dimens.twenty);

  /// Text Styles

  static TextStyle get p => TextStyle(
        fontSize: Dimens.fourteen,
        fontWeight: FontWeight.w300,
        fontFamily: defaultFontFamily,
        height: defaultFontHeight,
      );

  static TextStyle style12Bold = TextStyle(
    fontSize: Dimens.twelve,
    fontWeight: FontWeight.w700,
    fontFamily: defaultFontFamily,
    height: defaultFontHeight,
  );

  static TextStyle style12Normal = TextStyle(
    fontSize: Dimens.twelve,
    fontWeight: FontWeight.w400,
    fontFamily: defaultFontFamily,
    height: defaultFontHeight,
    color: ColorValues.blackColor10
  );
  static TextStyle style16Normal = TextStyle(
    fontSize: Dimens.sixTeen,
    fontWeight: FontWeight.w400,
    fontFamily: defaultFontFamily,
    height: defaultFontHeight,
    color: ColorValues.blackColor10
  );

  static TextStyle get h1 => TextStyle(
        fontSize: Dimens.fourty,
        fontWeight: FontWeight.w600,
        fontFamily: defaultFontFamily,
        height: defaultFontHeight,
      );
}
