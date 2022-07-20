import '../../../constants/constants.dart';
import '../../repository.dart';

class ProjectStorage {
  static List<Project> projectList = [
    Project(
      id: 0,
      title: 'Dorplas - Yuk Peduli Sesama',
      type: ProjectType.project,
      overview:
          'For a better plasma donation system in order to minimize the death rate due to COVID-19.',
      fullDescription:
          'Dorplas - Donor Plasma is an android application developed by two of my colleagues and me as a final project/capstone project from an independent study that we participated in at GITS Indonesia. Dorplas provides various features to enable users to apply as blood plasma donors and applicants.',
      time: 'October 2021 - December 2021',
      knowledges: const [
        'State management with GetX',
        'Prototype and slice UI from design into application.',
        'Work as a team of 3 and collaborate with other divisions, especially the backend division within a SCRUM framework.',
      ],
      images: const [
        '${AssetConstant.projectImageLocation}/Dorplas - 1.png',
        '${AssetConstant.projectImageLocation}/Dorplas - 2.png',
        '${AssetConstant.projectImageLocation}/Dorplas - 3.png',
      ],
      skills: [
        SkillStorage.getSkillByName('Flutter'),
        SkillStorage.getSkillByName('Figma'),
        SkillStorage.getSkillByName('Git'),
      ],
      dateStarted: DateTime(2021, 10, 1),
    ),
    Project(
      id: 1,
      title: 'Wisecrypto Slicing',
      type: ProjectType.scratch,
      overview: 'Just a scratch.',
      fullDescription:
          'This is just a prototype application of the Wisecrypto UI design designed by Inagata Technosmith. In the prototyping process of this application, I tried to implement a clean architecture by splitting several important parts of the application into separate layers.',
      time: 'December 2021',
      knowledges: const [
        'State management with BLoC Cubit',
        'Usability of persistent_bottom_bar package.',
        'Separate services, repository, logic, and presentation layer.',
      ],
      images: const [
        '${AssetConstant.projectImageLocation}/Wisecrypto - 1.png',
        '${AssetConstant.projectImageLocation}/Wisecrypto - 2.png',
      ],
      skills: [
        SkillStorage.getSkillByName('Flutter'),
        SkillStorage.getSkillByName('Figma'),
        SkillStorage.getSkillByName('Git'),
      ],
      dateStarted: DateTime(2021, 12, 1),
      repoUrl: 'https://github.com/Catyousha/wisecrypto-slicing',
    ),
    Project(
      id: 2,
      title: 'UTBK Brightscholarship Tryout UM',
      type: ProjectType.project,
      overview:
          'The most challenging project with massive features, but only used for one day.',
      fullDescription:
          "UTBK Brightscholarship Tryout UM is a platform used to carry out tryout exams and ranking activities followed by more than 130 participants on March 27, 2021, in rumbelbsum.com. The platform's feature is that it allows participants to work on a tryout exam within a period divided by section, view ranking, and the management of weight value for scoring and making questions on the admin side. All systems on this platform, including database design, are done by myself.",
      time: 'January - March 2021',
      knowledges: const [
        'Tons of CRUD method using Laravel & MySQL',
        'Session & cookie management.',
        'Database mocking using factory & seeder for tryout question & its answer for development testing stage.',
      ],
      images: const [
        '${AssetConstant.projectImageLocation}/Brighter - 1.png',
        '${AssetConstant.projectImageLocation}/Brighter - 2.png',
      ],
      skills: [
        SkillStorage.getSkillByName('Laravel'),
        SkillStorage.getSkillByName('Bootstrap 4'),
        SkillStorage.getSkillByName('Git'),
      ],
      dateStarted: DateTime(2021, 1, 14),
      repoUrl: "https://github.com/Catyousha/brightscholarship-tryout",
    ),
    Project(
      id: 3,
      title: 'SIOTANG',
      type: ProjectType.project,
      overview:
          'This project aims to make ask-for-hand-signature in the name of formalities & bureaucracy easier during pandemics.',
      fullDescription:
          "SIOTANG - Sistem Informasi Tanda Tangan, is an information system for signing the approval sheet for industrial work practice proposals for students majoring in Electrical Engineering at UM class 2018.",
      time: 'January 2021',
      knowledges: const [
        'Bunch of CRUD method using Laravel & MySQL',
        'Laravel fortify for auth.',
        'Handsign word documents and convert it to pdf files with fabric.js, jspdf, and html2canvas.',
      ],
      images: const [
        '${AssetConstant.projectImageLocation}/Siotang - 1.png',
        '${AssetConstant.projectImageLocation}/Siotang - 2.png',
      ],
      skills: [
        SkillStorage.getSkillByName('Laravel'),
        SkillStorage.getSkillByName('Bootstrap 4'),
        SkillStorage.getSkillByName('Git'),
        SkillStorage.getSkillByName('Javascript'),
      ],
      dateStarted: DateTime(2021, 1, 4),
      repoUrl: "https://github.com/myxzlpltk/praktekindustri",
    ),
    Project(
      id: 4,
      title: 'ICEEIE 2021',
      type: ProjectType.project,
      overview:
          'It is an honor to take part in the development of an international conference website.',
      fullDescription:
          "ICEEIE website serves as a landing page and information about the 7th International Conference on Electrical, Electronics, And Information Engineering. This site can be visited at iceeie.um.ac.id.",
      time: 'November - December 2020',
      knowledges: const [
        'Bootstrap 4 utilization and responsiveness.',
        'Codeigniter 4 for page section composing.',
      ],
      images: const [
        '${AssetConstant.projectImageLocation}/ICEEIE - 1.png',
        '${AssetConstant.projectImageLocation}/ICEEIE - 2.png',
      ],
      skills: [
        SkillStorage.getSkillByName('Codeigniter'),
        SkillStorage.getSkillByName('Bootstrap 4'),
        SkillStorage.getSkillByName('Git'),
        SkillStorage.getSkillByName('Javascript'),
      ],
      dateStarted: DateTime(2020, 11, 1),
      repoUrl: "https://github.com/Catyousha/iceeie2021",
    ),
    Project(
      id: 5,
      title: 'Karyaku',
      type: ProjectType.project,
      overview: 'Works gathering and patreon-like subscribing.',
      fullDescription:
          "Aplikasi Repositori Karya Berbasis Website Untuk Pelajar SMK (KARYAKU) is a web-based information system that serves as a place to accommodate student's works. In this project, I work on some vital CRUD features like profile account, the student's works management, and subscription. However, this project is not available in production because it was made for our final Web Development and Database II course project.",
      time: 'October - December 2020',
      knowledges: const [
        'Tons of CRUD method using Codeigniter 3 & MySQL',
        'Notification by email using PHPMailer',
        'File uploading and management.',
        "Reactive 'like' button using AJAX",
      ],
      images: const [
        '${AssetConstant.projectImageLocation}/Karyaku - 1.png',
        '${AssetConstant.projectImageLocation}/Karyaku - 2.png',
        '${AssetConstant.projectImageLocation}/Karyaku - 3.png',
      ],
      skills: [
        SkillStorage.getSkillByName('Codeigniter'),
        SkillStorage.getSkillByName('Bootstrap 4'),
        SkillStorage.getSkillByName('Git'),
        SkillStorage.getSkillByName('Javascript'),
      ],
      dateStarted: DateTime(2020, 10, 1),
    ),
    Project(
      id: 6,
      title: 'Coinsleek',
      type: ProjectType.project,
      overview: 'Made cryptobros life easier.',
      fullDescription:
      "As one of two Flutter developers in team, this is a challenging project for both of us. Coinsleek is an application to manage  crypto assets and automatically doing transaction using bots through API binding which provided by each crypto platforms (ex: Binance). In 4 months, i’ve worked on some features such as: account verification, assets deposit and withdrawal, also profile and API binding.",
      time: 'January - April 2022',
      knowledges: const [
        'Implement Auth0 for Authentication',
        'State management with BLoC Cubit',
        'Implement Dynamic Link with Firebase.',
      ],
      images: const [
        '${AssetConstant.projectImageLocation}/Coinsleek - 1.png',
        '${AssetConstant.projectImageLocation}/Coinsleek - 2.png',
        '${AssetConstant.projectImageLocation}/Coinsleek - 3.png',
      ],
      skills: [
        SkillStorage.getSkillByName('Flutter'),
        SkillStorage.getSkillByName('Git'),
      ],
      dateStarted: DateTime(2022, 01, 10),
    ),
    Project(
      id: 7,
      title: 'HotelBli',
      type: ProjectType.project,
      overview: 'Enjoy best hotel that suits you well.',
      fullDescription:
      "Along side with other 9 Bangkit cohorts, I create a hotel recommendation application built with 5 different types of algorithm to provide user the best experiences to stay in Bali, and also help Traveloka to solve hotel ranking problems as part of Bangkit 2022 Company Capstone Project. Team consist of 3 divisions which are: Machine Learning, Cloud Computing, and Mobile Development. In Mobile Development, i work on several features such as: authentication, for you, and profile.",
      time: 'May - June 2022',
      knowledges: const [
        'Implement Repository Pattern architecture',
        'Authentication using Google Sign In',
        'Utilize Material 3 Design System.',
        'Collaborate with other teams with different tech stack in SCRUM environment.',
      ],
      images: const [
        '${AssetConstant.projectImageLocation}/HotelBli - 1.png',
        '${AssetConstant.projectImageLocation}/HotelBli - 2.png',
        '${AssetConstant.projectImageLocation}/HotelBli - 3.png',
        '${AssetConstant.projectImageLocation}/HotelBli - 4.png',
      ],
      skills: [
        SkillStorage.getSkillByName('Kotlin'),
        SkillStorage.getSkillByName('Figma'),
        SkillStorage.getSkillByName('Git'),
      ],
      dateStarted: DateTime(2022, 05, 14),
    ),
  ];
}
