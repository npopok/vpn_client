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
        SlideLeftRoute(page: OnboardingStep1Route.page, initial: true),
        SlideLeftRoute(page: OnboardingStep2Route.page),
        SlideLeftRoute(page: OnboardingStep3Route.page),
        AutoRoute(page: HomeRoute.page),
      ];
}
