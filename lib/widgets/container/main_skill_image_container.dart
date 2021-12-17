import 'package:flutter/material.dart';
import '../../config/config.dart';

class MainSkillImageContainer extends StatelessWidget {
  const MainSkillImageContainer({
    Key? key,
    required this.mainSkillImageSrc,
  }) : super(key: key);

  final String mainSkillImageSrc;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 65,
      decoration: BoxDecoration(
        color: AppColor.whiteBright,
        image: DecorationImage(
          image: AssetImage(mainSkillImageSrc),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: AppShadow.medium,
      ),
    );
  }
}