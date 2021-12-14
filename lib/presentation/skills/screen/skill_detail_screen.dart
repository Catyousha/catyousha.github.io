import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reportfolio/config/config.dart';
import '../../../logic/logic.dart';
import '../../../widgets/widgets.dart';

class SkillDetailScreen extends StatelessWidget {
  const SkillDetailScreen({
    Key? key,
    required this.id,
  }) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context) {
    if (context.watch<SkillCubit>().state.selectedSkill == null) {
      context.read<SkillCubit>().selectSkill(int.tryParse(id) ?? -1);
    }
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
                    ? Column()
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
