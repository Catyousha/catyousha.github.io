part of 'project_cubit.dart';

enum ProjectStateStatus {
  initial,
  loading,
  loaded,
  error,
}

extension ProjectStateStatusExt on ProjectStateStatus {
  bool get isInitial => this == ProjectStateStatus.initial;
  bool get isLoading => this == ProjectStateStatus.loading;
  bool get isLoaded => this == ProjectStateStatus.loaded;
  bool get isError => this == ProjectStateStatus.error;
}

class ProjectState extends Equatable {
  ProjectStateStatus status;
  List<Project>? projects;
  Project? selectedProject;

  ProjectState({
    this.status = ProjectStateStatus.initial,
    this.projects,
    this.selectedProject,
  });

  //copywith
  ProjectState copyWith({
    ProjectStateStatus? status,
    List<Project>? projects,
    Project? selectedProject,
  }) {
    return ProjectState(
      status: status ?? this.status,
      projects: projects ?? this.projects,
      selectedProject: selectedProject ?? this.selectedProject,
    );
  }

  //props
  @override
  List<Object?> get props => [
        status,
        projects,
        selectedProject,
      ];
}
