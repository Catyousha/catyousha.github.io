import 'package:flutter/material.dart';
import 'package:reportfolio/config/config.dart';

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
      width: 366,
      child: Row(
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
              textAlign: TextAlign.justify,
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
