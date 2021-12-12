import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../repository/repository.dart';

part 'skill_state.dart';

class SkillCubit extends Cubit<SkillState> {
  SkillCubit(this._skillRepository) : super(const SkillState());

  final SkillRepository _skillRepository;

  void getSkills() {
    emit(state.copyWith(status: SkillStatus.loading));
    try {
      final skillList = _skillRepository.getSkills();
      emit(state.copyWith(
        status: SkillStatus.loading,
        skills: skillList,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: SkillStatus.error,
      ));
    }
  }

  void selectSkill(int id) {
    emit(state.copyWith(status: SkillStatus.loading));
    try {
      final skill = _skillRepository.getSkill(id);
      emit(state.copyWith(
        status: SkillStatus.loading,
        selectedSkill: skill,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: SkillStatus.error,
      ));
    }
  }
}
