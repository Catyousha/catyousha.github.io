import 'package:flutter/material.dart';
import 'package:reportfolio/constants/constants.dart';
import 'package:reportfolio/widgets/widgets.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          SectionHeaderText(
            icon: Icons.school,
            title: 'Education',
          ),
          SizedBox(height: 10),
          WorkTile(
            imageSrc: '${AssetConstant.experienceImageLocation}/UM.png',
            position: 'Informatics Engineering',
            timeDesc: 'Aug 2019 - 2023 (Expected)',
            title: 'Universitas Negeri Malang',
            additionalDesc: '6th Semester, 3.91 GPA',
          ),
          SizedBox(height: 10),
          WorkTile(
            imageSrc: '${AssetConstant.experienceImageLocation}/Bangkit.jpg',
            position: 'Mobile Development Cohort',
            timeDesc: 'Jan 2022 - Aug 2022',
            title: 'Bangkit Academy 2022',
          ),
        ],
      ),
    );
  }
}
