import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../config/config.dart';
import '../../../widgets/widgets.dart';

class SkillCapabilitySection extends StatelessWidget {
  const SkillCapabilitySection({
    Key? key,
    required this.icon,
    required this.capabilities,
  }) : super(key: key);

  final IconData icon;
  final List<String> capabilities;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 56,
        horizontal: 24,
      ),
      decoration: BoxDecoration(
        color: AppColor.blueLight,
        boxShadow: AppShadow.medium,
      ),
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
              "I'm capable of...",
              style: AppText.textLarge.copyWith(
                color: AppColor.whiteBright,
                fontWeight: AppFontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 18),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: capabilities
                .map(
                  (capability) => BulletedIconText(
                    text: capability,
                    icon: icon,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
