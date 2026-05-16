import 'package:hive/hive.dart';

import '../../features/settings/data/font_size_level.dart';

class HiveFontSize {
  static const _boxName = 'settings';
  static const _key = 'fontSize';

  static Box get _box => Hive.box(_boxName);

  static Future<FontSizeLevel> getLevel() async {
    final value = _box.get(_key, defaultValue: FontSizeLevel.medium.index);
    return FontSizeLevel.values[value];
  }

  static Future<void> setLevel(FontSizeLevel level) async {
    await _box.put(_key, level.index);
  }
}