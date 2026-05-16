import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ligthoftheworld/core/router/app_router.dart';
import 'package:ligthoftheworld/features/settings/presentation/manager/darkmode/darkmode_cubit.dart';
import 'core/themes/app_themes.dart';
import 'features/settings/data/app_mode_model.dart';
import 'features/settings/data/language_model.dart';
import 'features/settings/presentation/manager/language/language_cubit.dart';

class LightOfTheWorld extends StatelessWidget {
  const LightOfTheWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DarkmodeCubit, AppMode>(
      builder: (context, themeMode) {
        return BlocBuilder<LanguageCubit, AppLanguage>(
          builder: (context, lang) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,

              locale: mapLocale(lang),
              theme: AppThemes.lightTheme,
              darkTheme: AppThemes.darkTheme,
              themeMode: mapTheme(themeMode),

              routerConfig: AppRouter.router,
            );
          },
        );
      },
    );
  }
}