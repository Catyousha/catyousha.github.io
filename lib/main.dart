import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:reportfolio/config/config.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: AppColor.blueBase,
    statusBarColor: AppColor.blueBase,
    statusBarBrightness: Brightness.dark,
  ));
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(const ReportfolioApp()));
}

class ReportfolioApp extends StatelessWidget {
  const ReportfolioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Jaka Asa Baldan Ahmad | Portfolio',
      onGenerateRoute: RouteController.controller,
      initialRoute: Routes.initial,
      debugShowCheckedModeBanner: false,
    );
  }
}
