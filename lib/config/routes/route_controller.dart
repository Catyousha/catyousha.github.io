import 'package:flutter/material.dart';
import '../../presentation/presentation.dart';

import 'route_names.dart';

class RouteController {
  static const dummyPage = Scaffold(
    body: Center(),
  );

  static Route<dynamic> controller(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(builder: (_) => dummyPage);
    }
  }
}
