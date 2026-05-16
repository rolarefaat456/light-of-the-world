import 'package:hive/hive.dart';

import '../../features/settings/data/app_mode_model.dart';


class HiveMode {
  static const String _boxName = 'settings';
  static const String _key = 'mode';

  static Box get _box => Hive.box(_boxName);

  static AppMode getMode() {
    final value = _box.get(_key, defaultValue: 'system');

    return AppMode.values.firstWhere(
      (e) => e.name == value,
      orElse: () => AppMode.system,
    );
  }

  static Future<void> setMode(AppMode mode) async {
    await _box.put(_key, mode.name);
  }
}