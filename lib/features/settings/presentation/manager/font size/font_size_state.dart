part of 'font_size_cubit.dart';

sealed class FontSizeState {}


class FontSizeChanged extends FontSizeState {
  final double scale;
  FontSizeChanged(this.scale);
}
