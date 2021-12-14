import 'package:fluro/fluro.dart';
import 'package:reportfolio/presentation/skills/screen/skills_screen.dart';
import '../../presentation/presentation.dart';
import 'route_handlers.dart';

class Routes {
  static const initial = home;
  static const home = '/';
  static const skills = '/skills';

  static void configureRoutes(FluroRouter router) {
    router.define(home,
        handler: RouteHandlers.staticPageHandler(
          const HomeScreen(),
        ));
    router.define(skills,
        handler: RouteHandlers.staticPageHandler(
          const SkillsScreen(),
        ),
        transitionType: TransitionType.fadeIn);
  }
}
