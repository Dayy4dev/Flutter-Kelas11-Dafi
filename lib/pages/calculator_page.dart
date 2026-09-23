import 'package:first_flutter/components/custom_button.dart';
import 'package:first_flutter/components/custom_button_login.dart';
import 'package:first_flutter/components/custom_textfield.dart';
import 'package:first_flutter/components/custom_textfield_number.dart';
import 'package:first_flutter/controllers/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final controller = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtAngka1 = TextEditingController();
    TextEditingController txtAngka2 = TextEditingController();
    return Scaffold(
      backgroundColor: Color(0xFF212429),
      appBar: AppBar(title: Text("Kalkulator")),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            // child: Text(
            //   "Kalkulator",
            //   style: TextStyle(
            //     fontSize: 30,
            //     fontFamily: "Times New Roman",
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: Row(
              children: [
                Expanded(
                  child: CustomTextfieldNumber(
                    controller: txtAngka1,
                    hint: "Angka 1",
                  ),
                ),
                SizedBox(width: 40),
                Expanded(
                  child: CustomTextfieldNumber(
                    controller: txtAngka2,
                    hint: "Angka 2",
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  onPressed: () {
                    double angka1 = double.parse(txtAngka1.text);
                    double angka2 = double.parse(txtAngka2.text);
                    controller.tambah(angka1, angka2);
                  },
                  text: "+",
                ),
                CustomButton(
                  onPressed: () {
                    double angka1 = double.parse(txtAngka1.text);
                    double angka2 = double.parse(txtAngka2.text);
                    controller.kurang(angka1, angka2);
                  },
                  text: "-",
                ),
                CustomButton(
                  onPressed: () {
                    double angka1 = double.parse(txtAngka1.text);
                    double angka2 = double.parse(txtAngka2.text);
                    controller.kali(angka1, angka2);
                  },
                  text: "*",
                ),
                CustomButton(
                  onPressed: () {
                    double angka1 = double.parse(txtAngka1.text);
                    double angka2 = double.parse(txtAngka2.text);
                    controller.bagi(angka1, angka2);
                  },
                  text: "/",
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: Obx(() => Text(controller.hasil.toString(), style: TextStyle(color: Colors.white, fontSize: 24))),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: CustomButton(
              onPressed: () {
                txtAngka1.clear();
                txtAngka2.clear();
                controller.hasil.value = 0.0;
              },
              text: "Reset",
            ),
          ),
        ],
      ),
    );
  }
}
