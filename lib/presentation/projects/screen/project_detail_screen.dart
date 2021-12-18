import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../section/section.dart';
import '../../../config/config.dart';
import '../../../logic/logic.dart';
import '../../../widgets/widgets.dart';

class ProjectDetailScreen extends StatelessWidget {
  const ProjectDetailScreen({
    Key? key,
    required this.id,
  }) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context) {
    context.read<ProjectCubit>().selectProject(int.tryParse(id) ?? -1);

    return SafeArea(
      child: Scaffold(
        appBar: const TopBar(
          titleIcon: Icons.source,
        ),
        body: PageContainer(
          child: BlocConsumer<ProjectCubit, ProjectState>(
              listener: (context, state) {},
              builder: (context, state) {
                return (state.selectedProject != null)
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ProjectHeaderSection(
                            title: state.selectedProject!.title!,
                            overview: state.selectedProject!.overview!,
                            fullDescription:
                                state.selectedProject!.fullDescription!,
                            time: state.selectedProject!.time!,
                            skills: state.selectedProject!.skills!
                                .map((e) => e!.title!)
                                .toList(),
                            repoUrl: state.selectedProject!.repoUrl,
                            mainSkillImageSrc:
                                state.selectedProject!.skills![0]!.imageSrc!,
                          ),
                          const SizedBox(height: 8),
                          ProjectGallerySection(
                            imagesSrc: state.selectedProject!.images ?? [],
                          ),
                          ProjectKnowledgeSection(
                            knowledges: state.selectedProject!.knowledges!,
                          ),
                        ],
                      )
                    : Center(
                        child: Text('Project not found!',
                            style: AppText.textMedium.copyWith(
                              fontWeight: AppFontWeight.bold,
                            )),
                      );
              }),
        ),
      ),
    );
  }
}
