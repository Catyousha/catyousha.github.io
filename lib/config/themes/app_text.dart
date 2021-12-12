import 'package:flutter/material.dart';

import 'app_color.dart';

class AppFontWeight {
  static const regular = FontWeight.w400;
  static const medium = FontWeight.w500;
  static const bold = FontWeight.w700;
}

class AppText {
  static const defaultFontFamily = 'Quicksand';
  static const defaultColor = AppColor.blackBase;

  /// Font Size: 8
  static const textExtraSmall = TextStyle(
    fontFamily: defaultFontFamily,
    color: defaultColor,
    fontSize: 8,
  );

  /// Font Size: 10
  static const textSmall = TextStyle(
    fontFamily: defaultFontFamily,
    color: defaultColor,
    fontSize: 10,
  );

  /// Font Size: 13
  static const textNormal = TextStyle(
    fontFamily: defaultFontFamily,
    color: defaultColor,
    fontSize: 13,
  );

  /// Font Size: 15
  static const textMedium = TextStyle(
    fontFamily: defaultFontFamily,
    color: defaultColor,
    fontSize: 15,
  );

  /// Font Size: 18
  static const textSemiLarge = TextStyle(
    fontFamily: defaultFontFamily,
    color: defaultColor,
    fontSize: 18,
  );

  /// Font Size: 24
  static const textLarge = TextStyle(
    fontFamily: defaultFontFamily,
    color: defaultColor,
    fontSize: 24,
  );

  /// Font Size: 32
  static const textExtraLarge = TextStyle(
    fontFamily: defaultFontFamily,
    color: defaultColor,
    fontSize: 32,
  );
}
