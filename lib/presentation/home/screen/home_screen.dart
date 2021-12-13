import 'package:flutter/material.dart';
import 'package:reportfolio/presentation/home/section/section.dart';
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
            children: const <Widget>[
              HomeHeaderSection(),
              AboutMeSection(),
              FeaturedSkillsSection(),
              FeaturedProjectSection(),
            ],
          ),
        ),
      ),
    );
  }
}
