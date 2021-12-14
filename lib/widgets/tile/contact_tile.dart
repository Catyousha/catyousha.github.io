import 'package:flutter/material.dart';
import 'package:reportfolio/config/config.dart';

class ContactTile extends StatelessWidget {
  const ContactTile({
    Key? key,
    required this.imageSrc,
    required this.description,
    required this.title,
  }) : super(key: key);

  final String imageSrc;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 560,
      ),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: AppColor.whiteBright,
        boxShadow: AppShadow.medium,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageSrc),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(width: 24),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: AppText.textMedium.copyWith(
                    fontWeight: AppFontWeight.bold,
                  ),
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: AppText.textNormal,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
