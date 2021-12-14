import 'package:flutter/material.dart';
import 'package:reportfolio/config/config.dart';

class WorkTile extends StatelessWidget {
  const WorkTile({
    Key? key,
    required this.imageSrc,
    required this.position,
    required this.timeDesc,
    required this.title,
    this.additionalDesc,
  }) : super(key: key);

  final String imageSrc;
  final String title;
  final String position;
  final String timeDesc;
  final String? additionalDesc;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imageSrc),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(width: 32),
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
                  position,
                  style: AppText.textNormal,
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  timeDesc,
                  style: AppText.textNormal,
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                if (additionalDesc != null && additionalDesc != '')
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Text(
                      additionalDesc ?? '-',
                      style: AppText.textNormal.copyWith(
                        fontWeight: AppFontWeight.medium,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
