import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      decoration: BoxDecoration(
        color: AppColor.whiteBright,
        boxShadow: AppShadow.medium,
      ),
      clipBehavior: Clip.hardEdge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SectionHeaderText(
            icon: Icons.source,
            title: 'Featured Projects',
            isDetailed: true,
            onTapDetails: () {},
          ),
          const SizedBox(height: 18),
          BlocConsumer<ProjectCubit, ProjectState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Wrap(
                spacing: 18,
                runSpacing: 18,
                children: state.projects?.map((project) {
                      return ProjectTile(
                        type: project.type!.text,
                        imageSrc: project.images!.first,
                        title: project.title!,
                        overview: project.overview!,
                        skills: project.skills!
                            .map((skill) => skill!.title!)
                            .toList(),
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
