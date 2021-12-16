import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../config/config.dart';
import '../../../repository/repository.dart';
import '../../../widgets/widgets.dart';

class SkillFeaturedProjectSection extends StatelessWidget {
  const SkillFeaturedProjectSection({
    Key? key,
    required this.skillTitle,
    required this.projects,
  }) : super(key: key);

  final String skillTitle;
  final List<Project> projects;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColor.whiteBright,
        boxShadow: AppShadow.medium,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SectionHeaderText(
            icon: Icons.source,
            title: "Projects and Scratches using $skillTitle",
          ),
          const SizedBox(height: 18),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: projects.map((project) {
              return ProjectTile(
                imageSrc: project.images![0],
                skills: project.skills!.map((e) => e!.title ?? '-').toList(),
                overview: project.overview!,
                type: project.type!.text,
                title: project.title!,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
