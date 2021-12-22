import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../config/config.dart';
import '../../../logic/logic.dart';
import '../../../widgets/widgets.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<SkillCubit>().getSkills();
    return SafeArea(
      child: Scaffold(
        appBar: const TopBar(titleIcon: Icons.code),
        body: PageContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const PageHeaderContainer(
                title: "My Skills",
                headSubtitle: "Welcome to warehouse of",
                description:
                    "Personally, I don’t really like to measure skill with level or scale due to it’s subjectivity and bias.",
                hintText: "Click on each icon for details",
              ),
              BlocConsumer<SkillCubit, SkillState>(
                listener: (context, state) {},
                builder: (context, state) {
                  if (state.skills == null) {
                    return const CircularProgressIndicator();
                  }
                  return Padding(
                    padding: EdgeInsets.all(getValueForScreenType(
                      context: context,
                      mobile: 8,
                      tablet: 24,
                    )),
                    child: Center(
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        runAlignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: getValueForScreenType(
                          context: context,
                          mobile: 10,
                          desktop: 18,
                        ),
                        runSpacing: getValueForScreenType(
                          context: context,
                          mobile: 10,
                          desktop: 18,
                        ),
                        children: AnimationConfiguration.toStaggeredList(
                          duration: const Duration(milliseconds: 300),
                          childAnimationBuilder: (widget) => SlideAnimation(
                            verticalOffset: -50.0,
                            child: FadeInAnimation(
                              child: widget,
                            ),
                          ),
                          children: state.skills?.map((e) {
                                return SkillTile(
                                  title: e.title!,
                                  imgSrc: e.imageSrc!,
                                  callback: () {
                                    Navigator.pushNamed(
                                      context,
                                      "${Routes.skillDetail}/${e.id}",
                                    );
                                  },
                                );
                              }).toList() ??
                              [],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
