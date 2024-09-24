import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:vpn_client/common/common.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en')],
      path: 'assets/translations',
      startLocale: const Locale('en'),
      fallbackLocale: const Locale('en'),
      child: MainApp(routes: Routes()),
    ),
  );
}

class MainApp extends StatelessWidget {
  final Routes routes;

  const MainApp({required this.routes, super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'App.Title'.tr(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routerConfig: routes.config(),
    );
  }
}
