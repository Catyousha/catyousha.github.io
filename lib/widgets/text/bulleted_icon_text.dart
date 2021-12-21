import 'package:flutter/material.dart';
import 'package:reportfolio/config/config.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BulletedIconText extends StatelessWidget {
  const BulletedIconText({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getValueForScreenType(
        context: context,
        mobile: 360,
        tablet: 240,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            icon,
            color: AppColor.whiteBright,
            size: 24,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: AppText.textMedium.copyWith(
                color: AppColor.whiteBright,
                fontWeight: AppFontWeight.medium,
              ),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
