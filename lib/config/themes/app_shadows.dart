import 'package:flutter/material.dart';

import '../config.dart';

class AppShadow {
  static final small = [
    BoxShadow(
      color: AppColor.blackBase.withOpacity(0.7),
      blurRadius: 0,
    ),
  ];

  static final medium = [
    BoxShadow(
      color: AppColor.blackBase.withOpacity(0.08),
      blurRadius: 1,
    ),
    BoxShadow(
      color: AppColor.blackBase.withOpacity(0.08),
      blurRadius: 8,
      spreadRadius: 2,
      offset: const Offset(0, 1),
    ),
  ];

  static final mediumBlue = [
    BoxShadow(
      color: AppColor.blueBase.withOpacity(0.08),
      blurRadius: 1,
    ),
    BoxShadow(
      color: AppColor.blueBase.withOpacity(0.08),
      blurRadius: 8,
      spreadRadius: 2,
      offset: const Offset(0, 1),
    ),
  ];

  static final mediumInner = [
    BoxShadow(
      color: AppColor.blueBase.withOpacity(0.03),
    ),
    const BoxShadow(
      color: AppColor.whiteBright,
      blurRadius: 2,
      spreadRadius: -8,
    ),
  ];

  static final large = [
    BoxShadow(
      color: AppColor.blackBase.withOpacity(0.08),
      blurRadius: 1,
    ),
    BoxShadow(
      color: AppColor.blackBase.withOpacity(0.08),
      blurRadius: 24,
      spreadRadius: 8,
      offset: const Offset(0, 1),
    ),
  ];
}
