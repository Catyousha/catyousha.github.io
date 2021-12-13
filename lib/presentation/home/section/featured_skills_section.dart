import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../logic/logic.dart';
import '../../../widgets/widgets.dart';
import '../../../config/config.dart';

class FeaturedSkillsSection extends StatelessWidget {
  const FeaturedSkillsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      color: AppColor.whiteBright,
      child: Column(
        children: <Widget>[
          SectionHeaderText(
            icon: Icons.code,
            title: 'Featured Skills',
            isDetailed: true,
            onTapDetails: () {},
          ),
          const SizedBox(height: 24),
          BlocConsumer<SkillCubit, SkillState>(
            listener: (context, state) {
              if (state.status.isInitial) {
                context.read<SkillCubit>().getSkills();
              }
            },
            builder: (context, state) => HorizontalCarouselScroller(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: state.skills?.map((skill) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 9.0),
                        child: SkillTile(
                          title: skill.title!,
                          imgSrc: skill.imageSrc!,
                          isPinned: true,
                        ),
                      );
                    }).toList() ??
                    [],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
