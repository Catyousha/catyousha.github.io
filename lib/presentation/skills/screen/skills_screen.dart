import 'package:flutter/material.dart';
import 'package:reportfolio/widgets/widgets.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: TopBar(titleIcon: Icons.code),
        body: PageContainer(
          child: Text('p'),
        ),
      ),
    );
  }
}
