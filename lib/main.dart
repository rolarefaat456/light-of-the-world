import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'package:ligthoftheworld/light_of_the_world.dart';

import 'features/main/presentation/manager/page/page_cubit.dart';
import 'features/settings/presentation/manager/font size/font_size_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // تهيئة الـ locale
  await initializeDateFormatting('ar');

  // Hive
  await Hive.initFlutter();
  await Hive.openBox('settings');

  // Splash
  FlutterNativeSplash.preserve(
    widgetsBinding: WidgetsBinding.instance,
  );

  // تحميل البيانات
  await loadData();

  FlutterNativeSplash.remove();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => PageCubit(),
        ),
        BlocProvider(
          create: (_) => FontSizeCubit(),
        ),
      ],
      child: const LightOfTheWorld(),
    ),
  );
}

Future<void> loadData() async {
  await Future.delayed(const Duration(seconds: 3));
}