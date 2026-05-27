import 'package:go_router/go_router.dart';
import 'package:production_ready_app/feature/home/presentation/presentation_home.dart';

class AppRouter {
  static var router = GoRouter(
    initialLocation: MyHomePage.route,

    routes: [
      GoRoute(
        path: MyHomePage.route,
        builder: (context, state) {
          return MyHomePage();
        },
      ),
    ],
  );
}
