import 'package:bloc/bloc.dart';

import '../../../../../core/service/hive_language.dart';
import '../../../data/language_model.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<AppLanguage> {
  LanguageCubit() : super(AppLanguage.arabic) {
    load();
  }

  Future<void> load() async {
    final lang = HiveLanguage.getLanguage();
    emit(lang);
  }

  Future<void> toggle(AppLanguage lang) async {
    await HiveLanguage.setLanguage(lang);
    emit(lang);
  }
}