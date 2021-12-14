import 'package:reportfolio/constants/constants.dart';

import '../../repository.dart';

class ExperienceStorage {
  static List<Experience> experienceList = [
    const Experience(
      id: 0,
      title: 'Studi Independen Kampus Merdeka Batch 1',
      position: 'Flutter Apprentice at PT. GITS Indonesia',
      timeDesc: 'Sep 2021 - Dec 2021',
      imageSrc: '${AssetConstant.experienceImageLocation}/SI-GITS.png',
    ),
    const Experience(
      id: 1,
      title: 'Workshop Elektro',
      position: 'Web Subdivision, Person In Charge',
      timeDesc: 'Feb 2020 - 2022',
      imageSrc: '${AssetConstant.experienceImageLocation}/WSE.png',
    ),
  ];
}
