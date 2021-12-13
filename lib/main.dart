import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'config/config.dart';
import 'logic/logic.dart';

import 'repository/repository.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: AppColor.blueBase,
    statusBarColor: AppColor.blueBase,
    statusBarBrightness: Brightness.dark,
  ));
  runApp(DevicePreview(
    enabled: true,
    builder: (context) {
      return const ReportfolioApp();
    },
  ));
  // await SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]).then((value) => runApp(const ReportfolioApp()));
}

class ReportfolioApp extends StatelessWidget {
  const ReportfolioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SkillCubit>(
          create: (context) => SkillCubit(SkillRepository())..getSkills(),
        ),
      ],
      child: const MaterialApp(
        title: 'Jaka Asa Baldan Ahmad | Portfolio',
        useInheritedMediaQuery: true,
        builder: DevicePreview.appBuilder,
        onGenerateRoute: RouteController.controller,
        initialRoute: Routes.initial,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
