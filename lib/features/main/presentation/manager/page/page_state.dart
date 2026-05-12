part of 'page_cubit.dart';

sealed class PageState {}

class PageInitial extends PageState {}

class PageChanged extends PageState {
  final int pageIndex;

  PageChanged(this.pageIndex);
}