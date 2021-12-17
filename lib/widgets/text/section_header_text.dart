import 'package:flutter/material.dart';
import 'package:reportfolio/config/config.dart';

class SectionHeaderText extends StatelessWidget {
  const SectionHeaderText({
    Key? key,
    required this.icon,
    required this.title,
    this.iconColor = AppColor.blackBase,
    this.titleColor = AppColor.blackBase,
    this.isDetailed = false,
    this.onTapDetails,
  }) : super(key: key);
  
  final IconData icon;
  final Color iconColor;
  final String title;
  final Color titleColor;
  final bool isDetailed;
  final VoidCallback? onTapDetails;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          color: iconColor,
          size: 24,
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            title,
            style: AppText.textSemiLarge.copyWith(
              color: titleColor,
            ),
            softWrap: true,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        if (isDetailed)
          TextButton(
            style: TextButton.styleFrom(
              primary: AppColor.blueLighter,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: onTapDetails,
            child: Text(
              'View All',
              style: AppText.textNormal.copyWith(
                color: AppColor.blueLighter,
                fontWeight: AppFontWeight.bold,
              ),
            ),
          ),
      ],
    );
  }
}
