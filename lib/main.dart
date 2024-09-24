import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:vpn_client/common/common.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GoogleFonts.config.allowRuntimeFetching = false;

  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en')],
      path: 'assets/translations',
      startLocale: const Locale('en'),
      fallbackLocale: const Locale('en'),
      child: MainApp(
        themes: Themes(),
        routes: Routes(),
      ),
    ),
  );
}

class MainApp extends StatelessWidget {
  final Themes themes;
  final Routes routes;

  const MainApp({
    required this.themes,
    required this.routes,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'App.Title'.tr(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: themes.lightTheme,
      darkTheme: themes.darkTheme,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routerConfig: routes.config(),
    );
  }
}
