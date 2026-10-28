import 'package:flutter/material.dart';
import 'package:first_flutter/controllers/menu_drawer_controller.dart';
import 'package:get/get.dart';

class MenuDrawerPage extends StatelessWidget {
  MenuDrawerPage({super.key});

  final menuDrawerController = Get.put(MenuDrawerController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(title: Text("My App")),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
                onTap: () {
                  menuDrawerController.changePage(0);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('History'),
                leading: Icon(Icons.history),
                onTap: () {
                  menuDrawerController.changePage(1);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Profile'),
                leading: Icon(Icons.person),
                onTap: () {
                  menuDrawerController.changePage(2);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: IndexedStack(
          index: menuDrawerController.selectedIndex.value,
          children: menuDrawerController.pages,
        ),
      ),
    );
  }
}
