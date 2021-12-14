import 'package:fluro/fluro.dart';
import 'package:reportfolio/presentation/home/home.dart';
import 'route_handlers.dart';

class Routes {
  static const initial = home;
  static const home = '/';

  static void configureRoutes(FluroRouter router) {
    router.define(
      home,
      handler: RouteHandlers.staticPageHandler(
        const HomeScreen(),
      ),
    );
  }
}
