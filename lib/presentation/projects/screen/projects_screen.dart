import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../repository/repository.dart';
import '../../../logic/logic.dart';
import '../../../widgets/widgets.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const TopBar(
          titleIcon: Icons.source,
        ),
        body: PageContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const PageHeaderContainer(
                title: "Projects & Scratches",
                headSubtitle: "There goes my",
                description:
                    "Projects mean serious work I've ever done, and scratches are 'perfunctory' repositories used to learn.",
                hintText: "Click on each tile for details",
              ),
              BlocConsumer<ProjectCubit, ProjectState>(
                builder: (context, state) {
                  return Padding(
                    padding: EdgeInsets.all(getValueForScreenType(
                      context: context,
                      mobile: 8,
                      tablet: 18,
                    )),
                    child: Center(
                      child: Wrap(
                        spacing: 18,
                        runSpacing: getValueForScreenType(
                          context: context,
                          mobile: 8,
                          tablet: 18,
                        ),
                        children: state.projects?.map((project) {
                              return ProjectTile(
                                type: project.type!.text,
                                imageSrc: project.images![0],
                                title: project.title!,
                                overview: project.overview!,
                                skills: project.skills!
                                    .map((e) => e!.title!)
                                    .toList(),
                              );
                            }).toList() ??
                            [],
                      ),
                    ),
                  );
                },
                listener: (context, state) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
