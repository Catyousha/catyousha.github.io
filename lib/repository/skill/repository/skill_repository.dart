import '../../repository.dart';

class SkillRepository {
  List<Skill> getSkills() {
    return SkillStorage.skillList;
  }

  Skill getSkill(int id) {
    return SkillStorage.skillList.firstWhere((skill) => skill.id == id);
  }

  Skill? getSkillByName(String name) {
    return SkillStorage.getSkillByName(name);
  }

  List<Project>? getSkillProjects(int id) {
    return ProjectStorage.projectList
        .where((element) => element.skills?.contains(getSkill(id)) ?? false)
        .toList();
  }
}
