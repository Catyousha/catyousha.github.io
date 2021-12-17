import 'package:flutter/material.dart';
import '../../../widgets/widgets.dart';
import '../../../config/config.dart';

class SkillHeaderSection extends StatelessWidget {
  const SkillHeaderSection({
    Key? key,
    required this.imageSrc,
    required this.title,
    required this.catchupLine,
    required this.learnedSince,
  }) : super(key: key);

  final String imageSrc;
  final String title;
  final String catchupLine;
  final String learnedSince;

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
          Row(
            children: <Widget>[
              Hero(
                tag: title,
                child: MainSkillImageContainer(
                  mainSkillImageSrc: imageSrc,
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(title,
                        style: AppText.textExtraLarge.copyWith(
                          fontWeight: AppFontWeight.bold,
                        )),
                    const SizedBox(height: 8),
                    Text('"$catchupLine"', style: AppText.textMedium),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Divider(
            color: AppColor.blackBright,
            thickness: 1.5,
          ),
          Row(
            children: <Widget>[
              const Icon(
                Icons.history,
                color: AppColor.blackBright,
                size: 18,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  "Learned since $learnedSince",
                  style: AppText.textSmall,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
