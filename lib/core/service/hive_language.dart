import 'package:hive/hive.dart';

import '../../features/settings/data/language_model.dart';

class HiveLanguage {
  static const String _boxName = 'settings';
  static const String _key = 'language';

  static Box get _box => Hive.box(_boxName);

  static AppLanguage getLanguage() {
    final code = _box.get(_key, defaultValue: 'ar');
    return AppLanguage.values.firstWhere(
      (e) => e.code == code,
      orElse: () => AppLanguage.arabic,
    );
  }

  static Future<void> setLanguage(AppLanguage lang) async {
    await _box.put(_key, lang.code);
  }
}