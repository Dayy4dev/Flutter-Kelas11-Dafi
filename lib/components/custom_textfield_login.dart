import 'package:flutter/material.dart';

const Color _fieldColor = Color(0xFF32353C);
const Color _accentBlue = Color(0xFF66C0F4);
const Color _textMuted = Color(0xFF8F98A0);

class CustomTextFieldLogin extends StatelessWidget {
  final String label;
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;

  const CustomTextFieldLogin({
    super.key,
    required this.label,
    required this.hintText,
    this.obscureText = false,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(color: _textMuted, fontSize: 13)),
        SizedBox(height: 6),
        TextField(
          controller: controller,
          obscureText: obscureText,
          style: TextStyle(color: Colors.white, fontSize: 14),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.white24, fontSize: 14),
            filled: true,
            fillColor: _fieldColor,
            contentPadding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(3)),
              borderSide: BorderSide(color: Color(0xFF3D5A73)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(3)),
              borderSide: BorderSide(color: Color(0xFF3D5A73)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(3)),
              borderSide: BorderSide(color: _accentBlue, width: 1.5),
            ),
          ),
        ),
      ],
    );
  }
}
