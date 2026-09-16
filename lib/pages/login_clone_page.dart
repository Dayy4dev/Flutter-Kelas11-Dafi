import 'package:first_flutter/components/custom_logo_appbar.dart';
import 'package:flutter/material.dart';

import '../components/custom_textfield_login.dart';
import '../components/custom_button_login.dart';

Color _bgColor = Color(0xFF212429);
Color _textMuted = Color(0xFF8F98A0);

class LoginClonePage extends StatelessWidget {
  const LoginClonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bgColor,
      appBar: CustomLogoAppBar(),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SIGN IN',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 4,
                ),
              ),
              SizedBox(height: 32),

              CustomTextFieldLogin(
                controller: TextEditingController(),
                label: 'Steam account name',
                hintText: 'Input your username',
              ),
              SizedBox(height: 16),

              CustomTextFieldLogin(
                controller: TextEditingController(),
                label: 'Password',
                hintText: 'Input your password',
                obscureText: true,
              ),
              SizedBox(height: 24),

              CustomButtonLogin(text: 'Sign In', onPressed: () {}),
              SizedBox(height: 14),

              Text(
                "Forgot your password?",
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
              SizedBox(height: 56),

              Text(
                'Join Steam and discover\nthousands of games to play.',
                textAlign: TextAlign.center,
                style: TextStyle(color: _textMuted, fontSize: 13, height: 1.6),
              ),
              SizedBox(height: 10),

              Text(
                "Learn More",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
