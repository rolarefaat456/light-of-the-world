import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/service/hive_mode.dart';
import '../../../data/app_mode_model.dart';

class DarkmodeCubit extends Cubit<AppMode> {
  DarkmodeCubit() : super(AppMode.system) {
    load();
  }

  Future<void> load() async {
    final mode = HiveMode.getMode();
    emit(mode);
  }

  Future<void> setMode(AppMode mode) async {
    await HiveMode.setMode(mode);
    emit(mode);
  }
}