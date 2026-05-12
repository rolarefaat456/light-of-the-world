import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ligthoftheworld/features/settings/presentation/view/setting_view.dart';
import '../../core/utils/app_images.dart';
import '../../core/utils/app_text_styles.dart';
import '../../features/home/presentation/view/home_view.dart';

AppBar customAppBar({
  required BuildContext context,
  required String title,
  required String routeName,
}) {
  return AppBar(
    leading: Image.asset(Assets.imagesSplashLightMode, cacheHeight: 50),
    centerTitle: true,
    title: Text(
      title,
      style: AppTextStyles.style24w700(
        context: context,
        userScale: 1.0,
      ).copyWith(color: Theme.of(context).textTheme.bodyLarge?.color),
    ),
    actions: [
      routeName == SettingView.routeName
          ? IconButton(
              onPressed: () => context.push(HomeView.routeName),
              icon: Icon(CupertinoIcons.back),
            )
          : IconButton(
              onPressed: () => context.push(SettingView.routeName),
              icon: Icon(CupertinoIcons.settings),
            ),
    ],
  );
}
