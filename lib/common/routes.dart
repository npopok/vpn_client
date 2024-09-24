import 'package:auto_route/auto_route.dart';

import 'package:vpn_client/screens/screens.dart';

part 'routes.gr.dart';

class SlideLeftRoute extends CustomRoute {
  SlideLeftRoute({
    required super.page,
    super.initial,
    super.transitionsBuilder = TransitionsBuilders.slideLeft,
  });
}

@AutoRouterConfig()
class Routes extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: OnboardingRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page),
      ];
}
