import 'package:first_flutter/components/custom_button_login.dart';
import 'package:first_flutter/controllers/confirm_registration_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  ConfirmRegistrationPage({super.key});

  final controller = Get.put(ConfirmRegController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Confirm Registration")),
      body: Column(
        children: [
          Text(
            "Nama : ${controller.nama}",
            style: TextStyle(fontSize: 16,),
          ),
          Text(
            "Jenis Kelamin : ${controller.jenisKelamin}",
            style: TextStyle(fontSize: 16,),
          ),
          Text(
            "Email : ${controller.email}",
            style: TextStyle(fontSize: 16,),
          ),
          Text(
            "No WA : ${controller.noWA}",
            style: TextStyle(fontSize: 16,),
          ),
          Text(
            "Alamat : ${controller.alamat}",
            style: TextStyle(fontSize: 16,),
          ),
          
          CustomButtonLogin(
            text: "Back",
            onPressed: () {
              Get.back();
            },
          ),
        ],
      ),
    );
  }
}
