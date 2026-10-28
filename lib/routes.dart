import 'package:first_flutter/pages/confirm_registration_page.dart';
import 'package:first_flutter/pages/detail_makanan_page.dart';
import 'package:first_flutter/pages/list_makanan_page.dart';
import 'package:first_flutter/pages/main_menu_page.dart';
import 'package:first_flutter/pages/menu_drawer_page.dart';
import 'package:first_flutter/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {

  static const String registration = "/registration";
  static const String confirmreg = "/confirm_reg";
  static const String listMakanan = "/list_makanan";
  static const String detailMakanan = "/detail_makanan";
  static const String mainMenu = "/main_menu";
  static const String menuDrawer = "/menu_drawer";

  static final myPages=[
    GetPage(name: registration, page: ()=> RegistrationPage()),
    GetPage(name: confirmreg, page: ()=> ConfirmRegistrationPage()),
    GetPage(name: listMakanan, page: ()=> ListMakananPage()),
    GetPage(name: detailMakanan, page: ()=> DetailmakananPage()),
    GetPage(name: mainMenu, page: ()=> MainMenuPage()),
    GetPage(name: menuDrawer, page: ()=> MenuDrawerPage()),
  ];
}