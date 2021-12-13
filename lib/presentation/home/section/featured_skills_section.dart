import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../logic/logic.dart';
import '../../../widgets/widgets.dart';
import '../../../config/config.dart';

class FeaturedSkillsSection extends StatelessWidget {
  const FeaturedSkillsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // constraints: BoxConstraints(
      //   maxWidth: getValueForScreenType<double>(
      //     context: context,
      //     mobile: MediaQuery.of(context).size.width,
      //     tablet: MediaQuery.of(context).size.width * 0.45,
      //     desktop: MediaQuery.of(context).size.width * 0.45,
      //   ),
      // ),
      color: AppColor.whiteBright,
      padding: const EdgeInsets.all(18),
      child: Column(
        children: <Widget>[
          SectionHeaderText(
            icon: Icons.code,
            title: 'Featured Skills',
            isDetailed: true,
            onTapDetails: () {},
          ),
          const SizedBox(height: 18),
          BlocConsumer<SkillCubit, SkillState>(
            listener: (context, state) {
              if (state.status.isInitial) {
                context.read<SkillCubit>().getSkills();
              }
            },
            builder: (context, state) => Row(
              mainAxisSize: MainAxisSize.min,
              children: state.skills?.map((skill) {
                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: SkillTile(
                          title: skill.title!,
                          imgSrc: skill.imageSrc!,
                          isPinned: true,
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
