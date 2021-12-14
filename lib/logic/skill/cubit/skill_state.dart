part of 'skill_cubit.dart';

enum SkillStateStatus {
  initial,
  loading,
  loaded,
  error,
}

extension SkillStateStatusExt on SkillStateStatus {
  bool get isInitial => this == SkillStateStatus.initial;
  bool get isLoading => this == SkillStateStatus.loading;
  bool get isLoaded => this == SkillStateStatus.loaded;
  bool get isError => this == SkillStateStatus.error;
}

class SkillState extends Equatable {
  final SkillStateStatus status;
  final List<Skill>? skills;
  final List<Skill?>? featuredSkills;
  final Skill? selectedSkill;

  const SkillState({
    this.status = SkillStateStatus.initial,
    this.skills,
    this.featuredSkills,
    this.selectedSkill,
  });

  //copywith
  SkillState copyWith({
    SkillStateStatus? status,
    List<Skill>? skills,
    List<Skill?>? featuredSkills,
    Skill? selectedSkill,
  }) {
    return SkillState(
      status: status ?? this.status,
      skills: skills ?? this.skills,
      featuredSkills: featuredSkills ?? this.featuredSkills,
      selectedSkill: selectedSkill ?? this.selectedSkill,
    );
  }

  @override
  List<Object?> get props => [
        status,
        skills,
        featuredSkills,
        selectedSkill,
      ];
}
