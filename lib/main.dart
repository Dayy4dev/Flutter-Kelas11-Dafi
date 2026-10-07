import 'package:first_flutter/pages/login_clone_page.dart';
import 'package:first_flutter/routes.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter/pages/calculator_page.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "My Learning App",
      initialRoute: Routes.list_makanan,
      getPages: Routes.myPages,
    );
  }
}