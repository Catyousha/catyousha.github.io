import 'package:reportfolio/constants/constants.dart';

import '../../repository.dart';

class ExperienceStorage {
  static List<Experience> experienceList = [
    const Experience(
      id: 3,
      title: 'Traveloka Singapore',
      position: 'Android Developer, Capstone Student',
      timeDesc: 'May 2022 - Jun 2022',
      imageSrc: '${AssetConstant.experienceImageLocation}/Traveloka.jpg',
    ),
    const Experience(
      id: 2,
      title: 'Signals99',
      position: 'Flutter Developer',
      timeDesc: 'Jan 2022 - Apr 2022',
      imageSrc: '${AssetConstant.experienceImageLocation}/Signals99.jpg',
    ),
    const Experience(
      id: 1,
      title: 'Studi Independen Kampus Merdeka Batch 1',
      position: 'Flutter Apprentice at PT. GITS Indonesia',
      timeDesc: 'Sep 2021 - Dec 2021',
      imageSrc: '${AssetConstant.experienceImageLocation}/SI-GITS.png',
    ),
    const Experience(
      id: 0,
      title: 'Workshop Elektro',
      position: 'Web Subdivision, Person In Charge',
      timeDesc: 'Feb 2020 - 2022',
      imageSrc: '${AssetConstant.experienceImageLocation}/WSE.png',
    ),
  ];
}
