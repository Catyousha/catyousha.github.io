import 'package:flutter/material.dart';
import '../../../widgets/widgets.dart';
import '../../../config/config.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.blueBase,
      padding: const EdgeInsets.only(
        top: 24,
        right: 24,
        left: 24,
        bottom: 48,
      ),
      child: Center(
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: 317,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SectionHeaderText(
                icon: ReportfolioIcons.wavingHand,
                title: 'About Me',
                titleColor: AppColor.whiteBright,
                iconColor: AppColor.whiteBright,
              ),
              const SizedBox(height: 10),
              Text(
                "I'm a fast learner, realistic, and adaptive person. Familiar with many tech stacks. Highly interested in mobile application development especially Flutter. Currently seeking for internship opportunity.",
                style: AppText.textNormal.copyWith(
                  color: AppColor.whiteBright,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
