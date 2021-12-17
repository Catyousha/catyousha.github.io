import 'package:device_preview/device_preview.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';

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

  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    const ScreenBreakpoints(
      desktop: 640,
      tablet: 560,
      watch: 200,
    ),
  );

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

class ReportfolioApp extends StatefulWidget {
  const ReportfolioApp({Key? key}) : super(key: key);

  @override
  State<ReportfolioApp> createState() => _ReportfolioAppState();
}

class _ReportfolioAppState extends State<ReportfolioApp> {
  _ReportfolioAppState() {
    /// Fluro Router Initialization
    final router = FluroRouter();
    Routes.configureRoutes(router);
    ApplicationRouter.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ExperienceCubit>(
          create: (context) =>
              ExperienceCubit(ExperienceRepository())..getExperiences(),
        ),
        BlocProvider<ProjectCubit>(
          create: (context) => ProjectCubit(ProjectRepository())..getProjects(),
        ),
        BlocProvider<SkillCubit>(
          create: (context) => SkillCubit(SkillRepository())..getSkills(),
        ),
      ],
      child: MaterialApp(
        title: 'Jaka Asa Baldan Ahmad | Portfolio',
        useInheritedMediaQuery: true,
        builder: DevicePreview.appBuilder,
        onGenerateRoute: ApplicationRouter.router.generator,
        initialRoute: Routes.initial,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
