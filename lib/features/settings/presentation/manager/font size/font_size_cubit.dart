import 'package:bloc/bloc.dart';
part 'font_size_state.dart';

class FontSizeCubit extends Cubit<FontSizeState> {
  FontSizeCubit() : super(FontSizeChanged(1.0));

  void changeSize(double value) {
    final scale = value.clamp(0.8, 1.5);
    emit(FontSizeChanged(scale));
  }
}
