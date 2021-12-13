import '../../../config/config.dart';
import '../../../constants/constants.dart';
import '../../repository.dart';


class SkillStorage {
  static List<Skill> skillList = [
    const Skill(
      id: 0,
      title: 'Flutter',
      catchupLine: "And so as I built, unlimited widget works!",
      learnedSince: 'August 2021',
      imageSrc: '${AssetConstant.skillImageLocation}/flutter.png',
      icon: ReportfolioIcons.flutter,
      capabilities: <String>[
        'Turn UI design from Figma into composable widgets & screens.',
        'Manage states with BLoC, Provider, and / or GetX.',
        'Separate one layer with another and practicing clean architecture.',
      ],
    ),
    const Skill(
      id: 0,
      title: 'Flutter',
      catchupLine: "And so as I built, unlimited widget works!",
      learnedSince: 'August 2021',
      imageSrc: '${AssetConstant.skillImageLocation}/flutter.png',
      icon: ReportfolioIcons.flutter,
      capabilities: <String>[
        'Turn UI design from Figma into composable widgets & screens.',
        'Manage states with BLoC, Provider, and / or GetX.',
        'Separate one layer with another and practicing clean architecture.',
      ],
    ),
    const Skill(
      id: 0,
      title: 'Flutter',
      catchupLine: "And so as I built, unlimited widget works!",
      learnedSince: 'August 2021',
      imageSrc: '${AssetConstant.skillImageLocation}/flutter.png',
      icon: ReportfolioIcons.flutter,
      capabilities: <String>[
        'Turn UI design from Figma into composable widgets & screens.',
        'Manage states with BLoC, Provider, and / or GetX.',
        'Separate one layer with another and practicing clean architecture.',
      ],
    ),
  ];
}
