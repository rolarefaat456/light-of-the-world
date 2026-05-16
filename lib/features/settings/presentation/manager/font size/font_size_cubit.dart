import 'package:bloc/bloc.dart';

import '../../../../../core/service/hive_font_size.dart';
import '../../../data/font_size_level.dart';
part 'font_size_state.dart';

class FontSizeCubit extends Cubit<FontSizeLevel> {
  FontSizeCubit() : super(FontSizeLevel.medium) {
    loadFromHive();
  }

  Future<void> loadFromHive() async {
    final level = await HiveFontSize.getLevel();
    emit(level);
  }

  Future<void> setFromSlider(double value) async {
    final level = valueToLevel(value);

    await HiveFontSize.setLevel(level);
    emit(level);
  }
}