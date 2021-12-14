import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../repository/repository.dart';

part 'experience_state.dart';

class ExperienceCubit extends Cubit<ExperienceState> {
  ExperienceCubit(this._experienceRepository) : super(const ExperienceState());

  final ExperienceRepository _experienceRepository;

  void getExperiences() {
    emit(state.copyWith(status: ExperienceStateStatus.loading));
    try {
      final experiences = _experienceRepository.getExperiences();
      emit(state.copyWith(
        status: ExperienceStateStatus.loaded,
        experiences: experiences,
      ));
    } catch (e) {
      emit(state.copyWith(status: ExperienceStateStatus.error));
    }
  }
}
