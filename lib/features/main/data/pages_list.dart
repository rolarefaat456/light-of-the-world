import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ligthoftheworld/features/agbya/presentation/view/agbya_view.dart';
import 'package:ligthoftheworld/features/bible/presentation/view/bible_view.dart';
import 'package:ligthoftheworld/features/katamars/presentation/view/katamars_view.dart';
import 'package:ligthoftheworld/features/kholagy/presentation/view/kholagy_view.dart';
import 'package:ligthoftheworld/features/library/presentation/manager/library_view.dart';
import 'package:ligthoftheworld/features/streak/presentation/view/streak_view.dart';
import '../../home/presentation/view/home_view.dart';

const List<Widget> pagesList = [
  HomeView(),
  AgbyaView(),
  BibleView(),
  KholagyView(),
  KatamarsView(),
  StreakView(),
  LibraryView(),
];
const List<String> pagesTitles = [
  'الرئيسية',
  'الاجنية',
  'الكتاب المقدس',
  'الخولاجي',
  'القطمارس',
  'رحلتي الروحية',
  'المكتبة',
];

List<BottomNavigationBarItem> bottomNavigationBarItems = [
  BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: 'الرئيسيه'),
  BottomNavigationBarItem(icon: Icon(CupertinoIcons.book), label: 'الاجنية'),
  BottomNavigationBarItem(
    icon: Icon(CupertinoIcons.book_fill),
    label: 'الكتاب المقدس',
  ),
  BottomNavigationBarItem(icon: Icon(Icons.church), label: 'الخولاجي'),
  BottomNavigationBarItem(
    icon: Icon(Icons.menu_book_rounded),
    label: 'القطمارس',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.local_fire_department),
    label: 'الستريك',
  ),
  BottomNavigationBarItem(icon: Icon(Icons.local_library), label: 'المكتبة'),
];
