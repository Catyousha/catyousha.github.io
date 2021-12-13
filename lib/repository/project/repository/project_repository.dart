import '../../repository.dart';

class ProjectRepository {
  List<Project> getProjects() {
    return ProjectStorage.projectList;
  }

  Project getProject(int id) {
    return ProjectStorage.projectList.firstWhere((project) => project.id == id);
  }
}
