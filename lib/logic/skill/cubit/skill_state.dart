part of 'skill_cubit.dart';

enum SkillStatus {
  initial,
  loading,
  loaded,
  error,
}

extension SkillStatusExt on SkillStatus {
  bool get isInitial => this == SkillStatus.initial;
  bool get isLoading => this == SkillStatus.loading;
  bool get isLoaded => this == SkillStatus.loaded;
  bool get isError => this == SkillStatus.error;
}

class SkillState extends Equatable {
  final SkillStatus status;
  final List<Skill>? skills;
  final Skill? selectedSkill;

  const SkillState({
    this.status = SkillStatus.initial,
    this.skills,
    this.selectedSkill,
  });

  //copywith
  SkillState copyWith({
    SkillStatus? status,
    List<Skill>? skills,
    Skill? selectedSkill,
  }) {
    return SkillState(
      status: status ?? this.status,
      skills: skills ?? this.skills,
      selectedSkill: selectedSkill ?? this.selectedSkill,
    );
  }
  

  @override
  List<Object?> get props => [
        status,
        skills,
        selectedSkill,
      ];
}
