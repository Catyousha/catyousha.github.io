import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../repository/repository.dart';

part 'skill_state.dart';

class SkillCubit extends Cubit<SkillState> {
  SkillCubit(this._skillRepository) : super(const SkillState());

  final SkillRepository _skillRepository;

  void getSkills() {
    emit(state.copyWith(status: SkillStateStatus.loading));
    try {
      final skillList = _skillRepository.getSkills();
      emit(state.copyWith(
        status: SkillStateStatus.loading,
        skills: skillList,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: SkillStateStatus.error,
      ));
    }
  }

  void getFeaturedSkills() {
    emit(state.copyWith(status: SkillStateStatus.loading));
    try {
      emit(state.copyWith(
        status: SkillStateStatus.loading,
        featuredSkills: [
          _skillRepository.getSkillByName('Flutter'),
          _skillRepository.getSkillByName('Kotlin'),
          _skillRepository.getSkillByName('Figma'),
        ],
      ));
    } catch (e) {
      emit(state.copyWith(
        status: SkillStateStatus.error,
      ));
    }
  }

  void selectSkill(int id) {
    emit(state.copyWith(status: SkillStateStatus.loading));
    try {
      final skill = _skillRepository.getSkill(id);
      final projects = _skillRepository.getSkillProjects(id);
      emit(state.copyWith(
        status: SkillStateStatus.loading,
        selectedSkill: skill,
        skillProjects: projects,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: SkillStateStatus.error,
      ));
    }
  }
}
