import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../logic/logic.dart';
import '../../../widgets/widgets.dart';
import '../../../config/config.dart';

class FeaturedSkillsSection extends StatelessWidget {
  const FeaturedSkillsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<SkillCubit>().getFeaturedSkills();
    return Container(
      color: AppColor.whiteBright,
      padding: const EdgeInsets.all(18),
      child: Column(
        children: <Widget>[
          SectionHeaderText(
            icon: Icons.code,
            title: 'Featured Skills',
            isDetailed: true,
            onTapDetails: () {
              Navigator.pushNamed(context, Routes.skills);
            },
          ),
          const SizedBox(height: 18),
          BlocConsumer<SkillCubit, SkillState>(
            listener: (context, state) {},
            builder: (context, state) => Row(
              mainAxisSize: MainAxisSize.min,
              children: state.featuredSkills?.map((skill) {
                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: SkillTile(
                          title: skill!.title!,
                          imgSrc: skill.imageSrc!,
                          isPinned: true,
                          callback: () {
                            Navigator.pushNamed(
                              context,
                              "${Routes.skillDetail}/${skill.id}",
                            );
                          },
                        ),
                      ),
                    );
                  }).toList() ??
                  [],
            ),
          ),
        ],
      ),
    );
  }
}
