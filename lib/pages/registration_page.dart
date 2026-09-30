import 'package:first_flutter/components/custom_button_login.dart';
import 'package:first_flutter/components/custom_dropdown.dart';
import 'package:first_flutter/components/custom_textfield_login.dart';
import 'package:first_flutter/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtNoWa = TextEditingController();
    TextEditingController txtAlamat = TextEditingController();
    final selectedGender = Rxn<String>();
    return Scaffold(
      appBar: AppBar(title: Text("Registration Page")),
      body: Column(
        children: [
          CustomTextFieldLogin(
            label: "Nama",
            hintText: "Masukkan Nama",
            controller: txtNama,
          ),
          Obx(
            () => CustomDropdown(
              label: "Jenis Kelamin",
              items: ["Laki-Laki", "Perempuan"],
              value: selectedGender.value,
              onChanged: (val) => selectedGender.value = val,
            ),
          ),
          CustomTextFieldLogin(
            label: "Email",
            hintText: "Masukkan Email",
            controller: txtEmail,
          ),
          CustomTextFieldLogin(
            label: "Nomor WA",
            hintText: "Masukkan Nomor WA",
            controller: txtNoWa,
          ),
          CustomTextFieldLogin(
            label: "Alamat",
            hintText: "Masukkan Alamat",
            controller: txtAlamat,
          ),
          CustomButtonLogin(
            text: "Submit",
            onPressed: () {
              Get.toNamed(
                Routes.confirmreg,
                arguments: {
                  'nama': txtNama.text.toString(),
                  'jenis_kelamin': selectedGender.value ?? "",
                  'email': txtEmail.text.toString(),
                  'nomor_wa': txtNoWa.text.toString(),
                  'alamat': txtAlamat.text.toString(),
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
