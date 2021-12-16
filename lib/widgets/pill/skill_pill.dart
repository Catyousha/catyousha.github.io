import 'package:flutter/material.dart';
import '../../config/config.dart';

class SkillPill extends StatelessWidget {
  const SkillPill({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 2,
        ),
        decoration: BoxDecoration(
          color: AppColor.blueLight,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Text(label,
              style: AppText.textExtraSmall.copyWith(
                fontWeight: AppFontWeight.bold,
                color: AppColor.whiteLight,
              )),
        ),
      ),
    );
  }
}
