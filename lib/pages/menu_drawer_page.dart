import 'package:flutter/material.dart';
import 'package:first_flutter/controllers/menu_drawer_controller.dart';
import 'package:get/get.dart';

class MenuDrawerPage extends StatelessWidget {
  MenuDrawerPage({super.key});

  final menuDrawerController = Get.put(MenuDrawerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Menu Drawer")),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Home'),
              onTap: () {
                menuDrawerController.changePage(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('History'),
              onTap: () {
                menuDrawerController.changePage(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                menuDrawerController.changePage(2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Obx(() => menuDrawerController.pages[menuDrawerController.selectedIndex.value]),
    );
  }
}