import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../repository/repository.dart';
import '../../../config/config.dart';
import '../../../logic/logic.dart';
import '../../../widgets/widgets.dart';

class FeaturedProjectSection extends StatelessWidget {
  const FeaturedProjectSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<ProjectCubit>().getFeaturedProjects();
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: const BoxDecoration(
          // color: AppColor.whiteBright,
          ),
      clipBehavior: Clip.hardEdge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SectionHeaderText(
            icon: Icons.source,
            title: 'Featured Projects',
            isDetailed: true,
            onTapDetails: () {
              Navigator.of(context).pushNamed(Routes.projects);
            },
          ),
          const SizedBox(height: 18),
          BlocConsumer<ProjectCubit, ProjectState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Wrap(
                spacing: 18,
                runSpacing: 18,
                children: state.featuredProjects?.map((project) {
                      return ProjectTile(
                        callback: () {
                          Navigator.of(context).pushNamed(
                              "${Routes.projectDetail}/${project!.id}");
                        },
                        type: project!.type!.text,
                        imageSrc: project.images!.first,
                        title: project.title!,
                        overview: project.overview!,
                        skills: project.skills!
                            .map((skill) => skill!.title!)
                            .toList(),
                        maxWidth: getValueForScreenType(
                          context: context,
                          mobile: 560,
                          tablet: 250,
                          desktop: 250,
                        ),
                      );
                    }).toList() ??
                    [],
              );
            },
          ),
        ],
      ),
    );
  }
}
