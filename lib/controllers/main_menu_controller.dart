import 'package:first_flutter/menu/home_page.dart';
import 'package:first_flutter/menu/history_page.dart';
import 'package:first_flutter/menu/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  // list of page inside menu
  List<Widget> pages = [HomePage(), HistoryPage(), ProfilePage()];
}
