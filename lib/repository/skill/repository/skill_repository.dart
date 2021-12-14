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
}
