import '../../../config/config.dart';
import '../../../constants/constants.dart';
import '../../repository.dart';

class SkillStorage {
  static Skill? getSkillByName(String name) {
    return skillList.firstWhere(
      (element) => element.title?.toLowerCase() == name.toLowerCase(),
    );
  }

  static List<Skill> skillList = [
    const Skill(
      id: 0,
      title: 'Flutter',
      catchupLine: "And so as I built, unlimited widget works!",
      learnedSince: 'August 2021',
      imageSrc: '${AssetConstant.skillImageLocation}/flutter.png',
      icon: ReportfolioIcons.flutter,
      capabilities: <String>[
        'Turning UI design from Figma into composable widgets & screens.',
        'Managing states with BLoC, Provider, and/or GetX.',
        'Practicing clean architecture by breakdown the application into many layers.',
      ],
    ),
    const Skill(
      id: 1,
      title: 'Figma',
      catchupLine: "Ideas are separated from tools.",
      learnedSince: 'March 2020',
      imageSrc: '${AssetConstant.skillImageLocation}/figma.png',
      icon: ReportfolioIcons.figma,
      capabilities: <String>[
        'Managing text, color, and shadow styles.',
        'Minimizing redundant effort by making reusable components.',
        'Utilizing auto-layout for clean and robust design.',
        'Prototyping UI design.',
      ],
    ),
    const Skill(
      id: 2,
      title: 'Git',
      catchupLine: "Better solution than sharing your code via .rar files.",
      learnedSince: 'June 2019',
      imageSrc: '${AssetConstant.skillImageLocation}/git.png',
      icon: ReportfolioIcons.git,
      capabilities: <String>[
        'Utilizing branch, rebase, and merge features.',
        'Managing version history with commit, revert, and reset.',
        'Pushing and pulling commit requests from/to the existing repository.',
      ],
    ),
    const Skill(
      id: 3,
      title: 'Laravel',
      catchupLine: "Give praise for Artisan has no equal.",
      learnedSince: 'November 2020',
      imageSrc: '${AssetConstant.skillImageLocation}/laravel.png',
      icon: ReportfolioIcons.laravel,
      capabilities: <String>[
        'Using MVC architecture and its routing into a functional website.',
        'Doing CRUD operations with plain data and / or files.',
        'Managing models and make use of eloquent ORM.',
        'Mocking database with factory and seeder.',
      ],
    ),
    const Skill(
      id: 4,
      title: 'Codeigniter',
      catchupLine: "Part of 1st year IT students starter pack.",
      learnedSince: 'April 2020',
      imageSrc: '${AssetConstant.skillImageLocation}/codeigniter.png',
      icon: ReportfolioIcons.codeigniter3,
      capabilities: <String>[
        'Using MVC architecture and its routing into a functional website.',
        'Doing CRUD operations with MySQL database.',
        'Utilizing most of CI3 libraries such as pagination, encryption, form validation, etc.',
      ],
    ),
    const Skill(
      id: 5,
      title: 'ReactJS',
      catchupLine: "Bloated but most loved framework.",
      learnedSince: 'December 2020',
      imageSrc: '${AssetConstant.skillImageLocation}/reactjs.png',
      icon: ReportfolioIcons.react,
      capabilities: <String>[
        'Making composable components.',
        'Managing states with Redux and vanilla hook.',
        'Consuming API using axios.',
      ],
    ),
    const Skill(
      id: 6,
      title: 'Tailwind CSS',
      catchupLine: "Utility above everything!",
      learnedSince: 'December 2020',
      imageSrc: '${AssetConstant.skillImageLocation}/tailwindcss.png',
      icon: ReportfolioIcons.tailwind,
      capabilities: <String>[
        'Designing responsive layout with default breakpoint.',
        'Implementing most of components and states.',
        'Using interactivity properties.',
      ],
    ),
    const Skill(
      id: 7,
      title: 'Bootstrap 4',
      catchupLine: "Classic, traditional, and easy way to make cool buttons.",
      learnedSince: 'January 2020',
      imageSrc: '${AssetConstant.skillImageLocation}/bootstrap4.png',
      icon: ReportfolioIcons.bootstrapLogo,
      capabilities: <String>[
        'Designing responsive layout with default breakpoint.',
        'Implementing most of all components and utilities.',
        'Bridging components with javascript command and event.',
      ],
    ),
    const Skill(
      id: 8,
      title: 'Javascript',
      catchupLine: "Love-hate relationship with this language.",
      learnedSince: '2014',
      imageSrc: '${AssetConstant.skillImageLocation}/javascript.png',
      icon: ReportfolioIcons.javascript,
      capabilities: <String>[
        'Using ES6 syntax and it’s features.',
        'Manipulating DOM elements by event trigger.',
        'Handling future responses with async and promise.',
        'Adapting with many Javascript frameworks.',
      ],
    ),
    const Skill(
      id: 9,
      title: 'Kotlin',
      catchupLine: "Still asserting its dominance natively.",
      learnedSince: 'January 2022',
      imageSrc: '${AssetConstant.skillImageLocation}/kotlin.png',
      icon: ReportfolioIcons.kotlin,
      capabilities: <String>[
        'Using repository pattern architecture as recommended practices.',
        'Turning UI design from Figma into XML views.',
        'Integrating with APIs through retrofit.',
      ],
    ),
  ];
}
