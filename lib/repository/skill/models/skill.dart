import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

class Skill extends Equatable {
  final int? id;
  final String? title;
  final String? catchupLine;
  final IconData? icon;
  final String? imageSrc;
  final String? learnedSince;
  final List<String>? capabilities;

  //constructor
  const Skill({
    this.id,
    this.title,
    this.catchupLine,
    this.icon,
    this.imageSrc,
    this.learnedSince,
    this.capabilities,
  });

  static Skill get empty => const Skill();

  //copywith
  Skill copyWith({
    int? id,
    String? title,
    String? catchupLine,
    IconData? icon,
    String? imageSrc,
    String? learnedSince,
    List<String>? capabilities,
  }) {
    return Skill(
      id: id ?? this.id,
      title: title ?? this.title,
      catchupLine: catchupLine ?? this.catchupLine,
      icon: icon ?? this.icon,
      imageSrc: imageSrc ?? this.imageSrc,
      learnedSince: learnedSince ?? this.learnedSince,
      capabilities: capabilities ?? this.capabilities,
    );
  }

  //props
  @override
  List<Object?> get props => [
        id,
        title,
        catchupLine,
        icon,
        imageSrc,
        learnedSince,
        capabilities,
      ];
}
