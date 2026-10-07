import 'package:first_flutter/pages/confirm_registration_page.dart';
import 'package:first_flutter/pages/list_makanan_page.dart';
import 'package:first_flutter/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {

  static const String registration = "/registration";
  static const String confirmreg = "/confirm_reg";
  static const String list_makanan = "/list_makanan";

  static final myPages=[
    GetPage(name: registration, page: ()=> RegistrationPage()),
    GetPage(name: confirmreg, page: ()=> ConfirmRegistrationPage()),
    GetPage(name: list_makanan, page: ()=> ListMakananPage()),
  ];


}