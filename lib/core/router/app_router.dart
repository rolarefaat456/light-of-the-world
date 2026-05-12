import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ligthoftheworld/features/home/presentation/view/home_view.dart';
import 'package:ligthoftheworld/features/main/presentation/view/main_view.dart';
import '../../features/settings/presentation/view/setting_view.dart';

class AppRouter {
static final GoRouter router = GoRouter(
  initialLocation: MainView.routeName,errorBuilder: (context, state) {
    return Scaffold(
      body: Center(
        child: Text(
          'Page Not Found',
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  },
  routes: [
    GoRoute(
      path: MainView.routeName,
      builder: (context, state) => const MainView(),
      ),
    GoRoute(
      path: HomeView.routeName,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: SettingView.routeName,
      builder: (context, state) => const SettingView(),
    ),

  ]
);
  }