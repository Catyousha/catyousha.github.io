import 'package:equatable/equatable.dart';

import '../../repository.dart';

enum ProjectType {
  project,
  scratch,
}

extension ProjectTypeExtension on ProjectType {
  String get name {
    switch (this) {
      case ProjectType.project:
        return 'Project';
      case ProjectType.scratch:
        return 'Scratch';
    }
  }

  bool get isProject => this == ProjectType.project;
  bool get isScratch => this == ProjectType.scratch;
}

class Project extends Equatable {
  final int? id;
  final String? title;
  final ProjectType? type;
  final List<Skill?>? skills;
  final String? overview;
  final String? fullDescription;
  final String? time;
  final List<String>? knowledges;
  final List<String>? images;
  final String? repoUrl;

  //constructor
  const Project({
    this.id,
    this.title,
    this.type,
    this.skills,
    this.overview,
    this.fullDescription,
    this.time,
    this.knowledges,
    this.images,
    this.repoUrl,
  });

  static Project get empty => const Project();

  //copywith
  Project copyWith({
    int? id,
    String? title,
    ProjectType? type,
    List<Skill?>? skills,
    String? overview,
    String? fullDescription,
    String? time,
    List<String>? knowledges,
    List<String>? images,
    String? repoUrl,
  }) {
    return Project(
      id: id ?? this.id,
      title: title ?? this.title,
      type: type ?? this.type,
      skills: skills ?? this.skills,
      overview: overview ?? this.overview,
      fullDescription: fullDescription ?? this.fullDescription,
      time: time ?? this.time,
      knowledges: knowledges ?? this.knowledges,
      images: images ?? this.images,
      repoUrl: repoUrl ?? this.repoUrl,
    );
  }

  //props
  @override
  List<Object?> get props => [
        id,
        title,
        type,
        skills,
        overview,
        fullDescription,
        time,
        knowledges,
        images,
        repoUrl,
      ];
}
