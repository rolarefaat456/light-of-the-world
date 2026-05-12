import 'package:bloc/bloc.dart';

part 'page_state.dart';

class PageCubit extends Cubit<PageState> {
  PageCubit() : super(PageInitial());

  void changePage({required int pageIndex}) {
    emit(PageChanged(pageIndex));
  }
  
}
