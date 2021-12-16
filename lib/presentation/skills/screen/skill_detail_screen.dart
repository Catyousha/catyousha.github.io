import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../config/config.dart';
import '../../../logic/logic.dart';
import '../../../widgets/widgets.dart';
import '../section/section.dart';

class SkillDetailScreen extends StatelessWidget {
  const SkillDetailScreen({
    Key? key,
    required this.id,
  }) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context) {
    context.read<SkillCubit>().selectSkill(int.tryParse(id) ?? -1);
    return SafeArea(
      child: BlocConsumer<SkillCubit, SkillState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Scaffold(
              appBar: TopBar(
                titleIcon: state.selectedSkill?.icon ?? Icons.error,
              ),
              body: PageContainer(
                child: (state.selectedSkill != null)
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SkillHeaderSection(
                            imageSrc: state.selectedSkill!.imageSrc!,
                            title: state.selectedSkill!.title!,
                            catchupLine: state.selectedSkill!.catchupLine!,
                            learnedSince: state.selectedSkill!.learnedSince!,
                          ),
                          const SizedBox(height: 8),
                          SkillCapabilitySection(
                            icon: state.selectedSkill!.icon!,
                            capabilities: state.selectedSkill!.capabilities!,
                          ),
                          if (state.skillProjects?.isNotEmpty ?? false)
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: SkillFeaturedProjectSection(
                                skillTitle: state.selectedSkill!.title!,
                                projects: state.skillProjects!,
                              ),
                            ),
                        ],
                      )
                    : Center(
                        child: Text('Skill not found!',
                            style: AppText.textMedium.copyWith(
                              fontWeight: AppFontWeight.bold,
                            )),
                      ),
              ),
            );
          }),
    );
  }
}
