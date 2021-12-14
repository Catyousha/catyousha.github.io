import 'package:flutter/material.dart';
import 'package:reportfolio/presentation/home/section/education_section.dart';
import 'package:reportfolio/presentation/home/section/section.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: PageContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const HomeHeaderSection(),
              const AboutMeSection(),
              ScreenTypeLayout.builder(
                mobile: (context) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    FeaturedSkillsSection(),
                    SizedBox(height: 8),
                    FeaturedProjectSection(),
                  ],
                ),
                tablet: (context) => GridView.count(
                  shrinkWrap: true,
                  primary: false,
                  crossAxisCount: 2,
                  childAspectRatio: 16 / 10,
                  children: const [
                    FeaturedSkillsSection(),
                    FeaturedProjectSection(),
                  ],
                ),
              ),
              const EducationSection(),
            ],
          ),
        ),
      ),
    );
  }
}
