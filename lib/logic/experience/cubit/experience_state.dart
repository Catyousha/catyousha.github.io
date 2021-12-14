part of 'experience_cubit.dart';

enum ExperienceStateStatus {
  initial,
  loading,
  loaded,
  error,
}

class ExperienceState extends Equatable {
  final List<Experience>? experiences;
  final ExperienceStateStatus status;

  const ExperienceState({
    this.experiences,
    this.status = ExperienceStateStatus.initial,
  });

  //copywith
  ExperienceState copyWith({
    List<Experience>? experiences,
    ExperienceStateStatus? status,
  }) {
    return ExperienceState(
      experiences: experiences ?? this.experiences,
      status: status ?? this.status,
    );
  }

  //equatable
  @override
  List<Object?> get props => [experiences, status];
}
