import 'package:equatable/equatable.dart';

class Experience extends Equatable {
  final int? id;
  final String? title;
  final String? position;
  final String? timeDesc;
  final String? imageSrc;
  final String? additionalDesc;

  //constructor
  const Experience({
    this.id,
    this.title,
    this.position,
    this.timeDesc,
    this.imageSrc,
    this.additionalDesc,
  });

  //copywith
  Experience copyWith({
    int? id,
    String? title,
    String? position,
    String? timeDesc,
    String? imageSrc,
    String? additionalDesc,
  }) {
    return Experience(
      id: id ?? this.id,
      title: title ?? this.title,
      position: position ?? this.position,
      timeDesc: timeDesc ?? this.timeDesc,
      imageSrc: imageSrc ?? this.imageSrc,
      additionalDesc: additionalDesc ?? this.additionalDesc,
    );
  }

  //equatable
  @override
  List<Object?> get props => [
        id,
        title,
        position,
        timeDesc,
        imageSrc,
        additionalDesc,
      ];
}
