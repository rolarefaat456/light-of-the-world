import 'package:flutter/material.dart';
import '../../../../shared/functions/custom_app_bar.dart';
import '../../data/pages_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../manager/page/page_cubit.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});
  static const String routeName = '/main';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageCubit, PageState>(
      builder: (context, state) {
        final currentIndex = state is PageChanged ? state.pageIndex : 0;
        return Scaffold(
          appBar: customAppBar(context: context, title: pagesTitles[currentIndex], routeName: MainView.routeName),
          body: IndexedStack(index: currentIndex, children: pagesList),

          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,

            currentIndex: currentIndex,
            onTap: (index) {
              context.read<PageCubit>().changePage(pageIndex: index);
            },
            items: bottomNavigationBarItems
          ),
        );
      },
    );
  }
}
