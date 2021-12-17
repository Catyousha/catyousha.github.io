import '../../../constants/constants.dart';
import '../../repository.dart';

class ProjectStorage {
  static List<Project> projectList = [
    Project(
      id: 0,
      title: 'Dorplas - Donor Plasma',
      type: ProjectType.project,
      overview: 'Done this project on Studi Independent at GITS.',
      fullDescription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lorem tellus, interdum nec fringilla sit amet, congue sit amet nibh. Vivamus fringilla consequat purus vulputate feugiat. Nunc tellus nibh, convallis ac hendrerit nec, varius a turpis. Morbi ac sapien in nunc porttitor mattis quis ac neque. Phasellus a fringilla tortor.',
      time: 'October 2021 - December 2021',
      knowledges: const [
        'UI designing & slicing.',
        'State management with GetX.',
        'Fetching and manipulating data with REST API.',
        'Coordinate with other division and practicing SCRUM framework.',
      ],
      images: const [
        '${AssetConstant.projectImageLocation}/Dorplas - 1.png',
      ],
      skills: [
        SkillStorage.getSkillByName('Flutter'),
      ],
      repoUrl: 'http://example.com',
    ),
    Project(
      id: 1,
      title: 'Dorplas - Donor Plasma',
      type: ProjectType.project,
      overview: 'Done this project on Studi Independent at GITS.',
      fullDescription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lorem tellus, interdum nec fringilla sit amet, congue sit amet nibh. Vivamus fringilla consequat purus vulputate feugiat. Nunc tellus nibh, convallis ac hendrerit nec, varius a turpis. Morbi ac sapien in nunc porttitor mattis quis ac neque. Phasellus a fringilla tortor.',
      time: 'October 2021 - December 2021',
      knowledges: const [
        'UI designing & slicing.',
        'State management with GetX.',
        'Fetching and manipulating data with REST API.',
        'Coordinate with other division and practicing SCRUM framework.',
      ],
      images: const [
        '${AssetConstant.projectImageLocation}/Dorplas - 1.png',
      ],
      skills: [
        SkillStorage.getSkillByName('Flutter'),
      ],
      repoUrl: 'http://example.com',
    ),
    Project(
      id: 2,
      title: 'Dorplas - Donor Plasma',
      type: ProjectType.project,
      overview: 'Done this project on Studi Independent at GITS.',
      fullDescription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lorem tellus, interdum nec fringilla sit amet, congue sit amet nibh. Vivamus fringilla consequat purus vulputate feugiat. Nunc tellus nibh, convallis ac hendrerit nec, varius a turpis. Morbi ac sapien in nunc porttitor mattis quis ac neque. Phasellus a fringilla tortor.',
      time: 'October 2021 - December 2021',
      knowledges: const [
        'UI designing & slicing.',
        'State management with GetX.',
        'Fetching and manipulating data with REST API.',
        'Coordinate with other division and practicing SCRUM framework.',
      ],
      images: const [
        '${AssetConstant.projectImageLocation}/Dorplas - 1.png',
      ],
      skills: [
        SkillStorage.getSkillByName('Flutter'),
      ],
      repoUrl: 'http://example.com',
    ),
    Project(
      id: 3,
      title: 'Dorplas - Donor Plasma',
      type: ProjectType.project,
      overview: 'Done this project on Studi Independent at GITS.',
      fullDescription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lorem tellus, interdum nec fringilla sit amet, congue sit amet nibh. Vivamus fringilla consequat purus vulputate feugiat. Nunc tellus nibh, convallis ac hendrerit nec, varius a turpis. Morbi ac sapien in nunc porttitor mattis quis ac neque. Phasellus a fringilla tortor.',
      time: 'October 2021 - December 2021',
      knowledges: const [
        'UI designing & slicing.',
        'State management with GetX.',
        'Fetching and manipulating data with REST API.',
        'Coordinate with other division and practicing SCRUM framework.',
      ],
      images: const [
        '${AssetConstant.projectImageLocation}/Dorplas - 1.png',
      ],
      skills: [
        SkillStorage.getSkillByName('Flutter'),
      ],
      repoUrl: 'http://example.com',
    ),
  ];
}
