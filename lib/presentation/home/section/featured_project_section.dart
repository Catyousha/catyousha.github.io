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
    return Container(
      // constraints: BoxConstraints(
      //   maxWidth: getValueForScreenType<double>(
      //     context: context,
      //     mobile: MediaQuery.of(context).size.width,
      //     tablet: MediaQuery.of(context).size.width * 0.45,
      //     desktop: MediaQuery.of(context).size.width * 0.45,
      //   ),
      // ),
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
            listener: (context, state) {
              if (state.status.isInitial) {
                context.read<ProjectCubit>().getProjects();
              }
            },
            builder: (context, state) {
              return HorizontalCarouselScroller(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: state.projects?.map((project) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: ProjectTile(
                            isPinned: true,
                            type: project.type!.text,
                            imageSrc: project.images!.first,
                            title: project.title!,
                            overview: project.overview!,
                            skills: project.skills!
                                .map((skill) => skill!.title!)
                                .toList(),
                          ),
                        );
                      }).toList() ??
                      [],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}