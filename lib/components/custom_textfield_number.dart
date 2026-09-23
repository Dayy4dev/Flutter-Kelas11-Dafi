import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextfieldNumber extends StatelessWidget {


  final TextEditingController controller;
  final String hint;

  const CustomTextfieldNumber({super.key, required this.controller, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hint: Text(hint, style: TextStyle(color: Colors.grey)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
        FilteringTextInputFormatter.digitsOnly,
      ]
    );
  }
}