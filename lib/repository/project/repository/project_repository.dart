import '../../repository.dart';

class ProjectRepository {
  List<Project> getProjects() {
    return ProjectStorage.projectList;
  }

  /// dateAdded descend
  List<Project> getProjectsSortedByDate() {
    final sortedProjectList = ProjectStorage.projectList.toList()
      ..sort((a, b) => b.dateStarted!.isAfter(a.dateStarted!) ? 1 : -1);
    return sortedProjectList;
  }

  Project getProject(int id) {
    return ProjectStorage.projectList.firstWhere((project) => project.id == id);
  }
}
