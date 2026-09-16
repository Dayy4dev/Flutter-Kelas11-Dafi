import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {


  final TextEditingController controller;
  final String hint;

  const CustomTextfield({super.key, required this.controller, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hint: Text(hint),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}