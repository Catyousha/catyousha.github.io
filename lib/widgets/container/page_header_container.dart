import 'package:flutter/material.dart';
import 'package:reportfolio/config/config.dart';

class PageHeaderContainer extends StatelessWidget {
  const PageHeaderContainer({
    Key? key,
    required this.title,
    required this.headSubtitle,
    required this.description,
    required this.hintText,
  }) : super(key: key);

  final String title;
  final String headSubtitle;
  final String description;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColor.whiteBright,
        boxShadow: AppShadow.medium,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(headSubtitle,
              style: AppText.textMedium.copyWith(
                fontWeight: AppFontWeight.medium,
              )),
          const SizedBox(height: 8),
          Text(title,
              style: AppText.textExtraLarge.copyWith(
                fontWeight: AppFontWeight.bold,
              )),
          const SizedBox(height: 8),
          Text(
            description,
            softWrap: true,
            style: AppText.textMedium,
          ),
          const SizedBox(height: 16),
          Row(
            children: <Widget>[
              const Icon(
                Icons.info_outline,
                color: AppColor.blackBright,
                size: 24,
              ),
              const SizedBox(width: 8),
              Text(
                hintText,
                style: AppText.textNormal,
              ),
            ],
          )
        ],
      ),
    );
  }
}
