import 'package:flutter/material.dart';
import 'package:ligthoftheworld/core/router/app_router.dart';

import 'core/themes/app_themes.dart';

class LightOfTheWorld extends StatelessWidget {
  const LightOfTheWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: AppRouter.router,
    );
  }
}
