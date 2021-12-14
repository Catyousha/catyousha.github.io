import '../../repository.dart';

class ExperienceRepository {
  List<Experience> getExperiences() {
    return ExperienceStorage.experienceList;
  }

  Experience getExperience(int id) {
    return ExperienceStorage.experienceList.firstWhere((exp) => exp.id == id);
  }
}
