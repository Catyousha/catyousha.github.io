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
  final ProjectStateStatus status;
  final List<Project>? projects;
  final Project? selectedProject;
  final List<Project?>? featuredProjects;

  const ProjectState({
    this.status = ProjectStateStatus.initial,
    this.projects,
    this.featuredProjects,
    this.selectedProject,
  });

  //copywith
  ProjectState copyWith({
    ProjectStateStatus? status,
    List<Project>? projects,
    List<Project?>? featuredProjects,
    Project? selectedProject,
  }) {
    return ProjectState(
      status: status ?? this.status,
      projects: projects ?? this.projects,
      featuredProjects: featuredProjects ?? this.featuredProjects,
      selectedProject: selectedProject ?? this.selectedProject,
    );
  }

  //props
  @override
  List<Object?> get props => [
        status,
        projects,
        selectedProject,
        featuredProjects,
      ];
}
