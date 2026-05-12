import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ligthoftheworld/light_of_the_world.dart';

import 'features/main/presentation/manager/page/page_cubit.dart';
import 'features/settings/presentation/manager/font size/font_size_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter(); 
  await Hive.openBox('settings'); // فتح صندوق Hive لتخزين الإعدادات
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // مثال: تحميل بيانات قبل تشغيل التطبيق
  await loadData();

  FlutterNativeSplash.remove(); // بعد ما البيانات تتحمل

  runApp(
    
    MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => PageCubit(),
      ),
      BlocProvider(
        create: (context) => FontSizeCubit(),
      ),
    ],
    child: const LightOfTheWorld(),
  ),
    );
}

Future<void> loadData() async {
  await Future.delayed(const Duration(seconds: 3));
}
