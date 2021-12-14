import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reportfolio/logic/logic.dart';
import 'package:reportfolio/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.count(
                      primary: false,
                      clipBehavior: Clip.none,
                      mainAxisSpacing: 2,
                      crossAxisSpacing: 2,
                      crossAxisCount: 3,
                      childAspectRatio: getValueForScreenType(
                        context: context,
                        mobile: 0.75,
                        tablet: 3,
                      ),
                      shrinkWrap: true,
                      children: state.skills?.map((e) {
                            return SkillTile(
                              title: e.title!,
                              imgSrc: e.imageSrc!,
                            );
                          }).toList() ??
                          [],
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
