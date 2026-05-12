import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/settings/presentation/manager/font size/font_size_cubit.dart';
import '../constants/strings.dart';
import 'app_responsive.dart';

double responsiveFont(BuildContext context, double fontSize) {
  final state = context.watch<FontSizeCubit>().state;

  final userScale = state is FontSizeChanged ? state.scale : 1.0;

  double screenScale = AppResponsive.getScaleFactor(context);

  double result = fontSize * screenScale * userScale;

  return result.clamp(fontSize * 0.7, fontSize * 1.4);
}

class AppTextStyles {
  static TextStyle style32w800({
    required BuildContext context,
    required double userScale,
  }) {
    return TextStyle(
      fontSize: responsiveFont(context, 32 * userScale),
      fontWeight: FontWeight.w800,
      fontFamily: Strings.almarai,
      color: Theme.of(context).textTheme.bodyMedium?.color,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle style24w700({
    required BuildContext context,
    required double userScale,
  }) {
    return TextStyle(
      fontSize: responsiveFont(context, 24 * userScale),
      fontWeight: FontWeight.w700,
      fontFamily: Strings.almarai,
    );
  }

  static TextStyle style18w700({
    required BuildContext context,
    required double userScale,
  }) {
    return TextStyle(
      fontSize: responsiveFont(context, 18 * userScale),
      fontWeight: FontWeight.w700,
      fontFamily: Strings.almarai,
      color: Theme.of(context).textTheme.bodyLarge?.color,
    );
  }

  static TextStyle style18w500({
    required BuildContext context,
    required double userScale,
  }) {
    return TextStyle(
      fontSize: responsiveFont(context, 18 * userScale),
      fontWeight: FontWeight.w500,
      fontFamily: Strings.almarai,
    );
  }

  static TextStyle style16w500({
    required BuildContext context,
    required double userScale,
  }) {
    return TextStyle(
      fontSize: responsiveFont(context, 16 * userScale),
      fontWeight: FontWeight.w500,
      fontFamily: Strings.almarai,
    );
  }
  static TextStyle style16w400({
    required BuildContext context,
    required double userScale,
  }) {
    return TextStyle(
      fontSize: responsiveFont(context, 16 * userScale),
      fontWeight: FontWeight.w400,
      fontFamily: Strings.almarai,
    );
  }

  static TextStyle style14w700({
    required BuildContext context,
    required double userScale,
  }) {
    return TextStyle(
      fontSize: responsiveFont(context, 14 * userScale),
      fontWeight: FontWeight.w700,
      fontFamily: Strings.almarai,
    );
  }

  static TextStyle style14w500({
    required BuildContext context,
    required double userScale,
  }) {
    return TextStyle(
      fontSize: responsiveFont(context, 14 * userScale),
      fontWeight: FontWeight.w500,
      fontFamily: Strings.almarai,
    );
  }
  static TextStyle style14w400({
    required BuildContext context,
    required double userScale,
  }) {
    return TextStyle(
      fontSize: responsiveFont(context, 14 * userScale),
      fontWeight: FontWeight.w400,
      fontFamily: Strings.almarai,
    );
  }
}
