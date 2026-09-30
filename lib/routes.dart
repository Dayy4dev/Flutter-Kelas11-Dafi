import 'package:first_flutter/pages/calculator_page.dart';
import 'package:first_flutter/pages/confirm_registration_page.dart';
import 'package:first_flutter/pages/login_clone_page.dart';
import 'package:first_flutter/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {

  static const String registration = "/registration";
  static const String confirmreg = "/confirm_reg";

  static final myPages=[
    GetPage(name: registration, page: ()=> RegistrationPage()),
    GetPage(name: confirmreg, page: ()=> ConfirmRegistrationPage()),
  ];


}