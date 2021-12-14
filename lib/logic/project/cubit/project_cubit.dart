import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../repository/repository.dart';

part 'project_state.dart';

class ProjectCubit extends Cubit<ProjectState> {
  ProjectCubit(this._projectRepository) : super(ProjectState());

  final ProjectRepository _projectRepository;

  void getProjects() {
    emit(state.copyWith(status: ProjectStateStatus.loading));
    try {
      final projects = _projectRepository.getProjects();
      emit(state.copyWith(
        status: ProjectStateStatus.loaded,
        projects: projects,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: ProjectStateStatus.error,
      ));
    }
  }

  void getFeaturedProjects() {
    emit(state.copyWith(status: ProjectStateStatus.loading));
    try {
      emit(state.copyWith(
        status: ProjectStateStatus.loaded,
        featuredProjects: [
          _projectRepository.getProject(0),
          _projectRepository.getProject(0),
          _projectRepository.getProject(0),
        ],
      ));
    } catch (e) {
      emit(state.copyWith(
        status: ProjectStateStatus.error,
      ));
    }
  }

  void selectProject(int id) {
    emit(state.copyWith(status: ProjectStateStatus.loading));
    try {
      final project = _projectRepository.getProject(id);
      emit(state.copyWith(
        status: ProjectStateStatus.loaded,
        selectedProject: project,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: ProjectStateStatus.error,
      ));
    }
  }
}
