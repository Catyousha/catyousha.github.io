import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../widgets/widgets.dart';
import '../../../config/config.dart';

class ProjectKnowledgeSection extends StatelessWidget {
  const ProjectKnowledgeSection({
    Key? key,
    required this.knowledges,
  }) : super(key: key);

  final List<String> knowledges;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 56,
        horizontal: 24,
      ),
      color: AppColor.blueLight,
      child: Column(
        crossAxisAlignment: getValueForScreenType(
          context: context,
          mobile: CrossAxisAlignment.start,
          tablet: CrossAxisAlignment.center,
        ),
        children: <Widget>[
          Align(
            alignment: getValueForScreenType(
              context: context,
              mobile: Alignment.topLeft,
              tablet: Alignment.topCenter,
            ),
            child: Text(
              "Implemented knowledges...",
              style: AppText.textLarge.copyWith(
                color: AppColor.whiteBright,
                fontWeight: AppFontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: getValueForScreenType(
              context: context,
              mobile: 18,
              tablet: 36,
            ),
          ),
          Wrap(
            spacing: 56,
            runSpacing: 8,
            children: knowledges
                .map(
                  (knowledge) => BulletedIconText(
                    text: knowledge,
                    icon: Icons.source,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
