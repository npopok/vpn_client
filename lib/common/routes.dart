import 'package:auto_route/auto_route.dart';

import 'package:vpn_client/features/features.dart';

part 'routes.gr.dart';

@AutoRouterConfig()
class Routes extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: OnboardingRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page),
      ];
}
