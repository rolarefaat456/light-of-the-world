import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/settings/data/font_size_level.dart';
import '../../features/settings/presentation/manager/font size/font_size_cubit.dart';
import '../constants/strings.dart';
import 'app_responsive.dart';

double responsiveFont(BuildContext context, double fontSize) {
  final level = context.watch<FontSizeCubit>().state;

  final userScale = fontScaleFromLevel(level);
  final screenScale = AppResponsive.getScaleFactor(context);

  return (fontSize * userScale * screenScale).clamp(
    fontSize * 0.6,
    fontSize * 1.4,
  );
}

class AppTextStyles {
  static TextStyle style32w800({required BuildContext context}) {
    return TextStyle(
      fontSize: responsiveFont(context, 32),
      fontWeight: FontWeight.w800,
      fontFamily: Strings.almarai,
      color: Theme.of(context).textTheme.bodyMedium?.color,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle style24w700({required BuildContext context}) {
    return TextStyle(
      fontSize: responsiveFont(context, 24),
      fontWeight: FontWeight.w700,
      fontFamily: Strings.almarai,
      color: Theme.of(context).textTheme.bodyMedium?.color,
    );
  }

  static TextStyle style18w700({required BuildContext context}) {
    return TextStyle(
      fontSize: responsiveFont(context, 18),
      fontWeight: FontWeight.w700,
      fontFamily: Strings.almarai,
      color: Theme.of(context).textTheme.bodyLarge?.color,
    );
  }

  static TextStyle style18w500({required BuildContext context}) {
    return TextStyle(
      fontSize: responsiveFont(context, 18),
      fontWeight: FontWeight.w500,
      fontFamily: Strings.almarai,
      color: Theme.of(context).textTheme.bodyMedium?.color,
    );
  }

  static TextStyle style16w500({required BuildContext context}) {
    return TextStyle(
      fontSize: responsiveFont(context, 16),
      fontWeight: FontWeight.w500,
      fontFamily: Strings.almarai,
      color: Theme.of(context).textTheme.bodyMedium?.color,
    );
  }

  static TextStyle style16w400({required BuildContext context}) {
    return TextStyle(
      fontSize: responsiveFont(context, 16),
      fontWeight: FontWeight.w400,
      fontFamily: Strings.almarai,
      color: Theme.of(context).textTheme.bodyMedium?.color,
    );
  }

  static TextStyle style14w700({required BuildContext context}) {
    return TextStyle(
      fontSize: responsiveFont(context, 14),
      fontWeight: FontWeight.w700,
      fontFamily: Strings.almarai,
      color: Theme.of(context).textTheme.bodyMedium?.color,
    );
  }

  static TextStyle style14w500({required BuildContext context}) {
    return TextStyle(
      fontSize: responsiveFont(context, 14),
      fontWeight: FontWeight.w500,
      fontFamily: Strings.almarai,
      color: Theme.of(context).textTheme.bodyMedium?.color,
    );
  }

  static TextStyle style14w400({required BuildContext context}) {
    return TextStyle(
      fontSize: responsiveFont(context, 14),
      fontWeight: FontWeight.w400,
      fontFamily: Strings.almarai,
      color: Theme.of(context).textTheme.bodyMedium?.color,
    );
  }

  static TextStyle style12w400({required BuildContext context}) {
    return TextStyle(
      fontSize: responsiveFont(context, 12),
      fontWeight: FontWeight.w400,
      fontFamily: Strings.almarai,
      color: Theme.of(context).textTheme.bodyMedium?.color,
    );
  }
}
