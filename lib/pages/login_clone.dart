import 'package:flutter/material.dart';

const Color _bgColor     = Color(0xFF212429);
const Color _headerColor = Color(0xFF171A21);
const Color _fieldColor  = Color(0xFFE8F0FD);
const Color _accentBlue  = Color(0xFF66C0F4);
const Color _buttonColor = Color(0xFF4D8FC9);
const Color _textMuted   = Color(0xFF8F98A0);

class LoginClone extends StatefulWidget {
  const LoginClone({super.key});

  @override
  State<LoginClone> createState() => _LoginCloneState();
}

class _LoginCloneState extends State<LoginClone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bgColor,
      appBar: AppBar(
        backgroundColor: _headerColor,
        elevation: 0,
        toolbarHeight: 64,
        centerTitle: true,
        title: Image.asset('assets/images/steam_logo.png', height: 50),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(height: 1, color: const Color(0xFF2D3748)),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Title
              const Text(
                'SIGN IN',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 4,
                ),
              ),

              const SizedBox(height: 32),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Steam account name',
                  style: TextStyle(color: _textMuted, fontSize: 13),
                ),
              ),
              const SizedBox(height: 6),

              const TextField(
                style: TextStyle(color: Colors.black, fontSize: 14),
                decoration: InputDecoration(
                  hintText: 'Input your username',
                  hintStyle: TextStyle(color: Colors.black12, fontSize: 14),
                  filled: true,
                  fillColor: _fieldColor,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 14,
                  ),
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

              const SizedBox(height: 16),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Password',
                  style: TextStyle(color: _textMuted, fontSize: 13),
                ),
              ),
              const SizedBox(height: 6),

              const TextField(
                obscureText: true,
                style: TextStyle(color: Colors.black, fontSize: 14),
                decoration: InputDecoration(
                  hintText: 'Input your password',
                  hintStyle: TextStyle(color: Colors.black12, fontSize: 14),
                  filled: true,
                  fillColor: _fieldColor,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 14,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility_off_outlined,
                    color: Colors.white38,
                    size: 20,
                  ),
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

              const SizedBox(height: 24),

              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _buttonColor,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                    elevation: 0,
                  ),
                  onPressed: () {}, 
                  child: const Text(
                    'Sign In',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
              ),

              const SizedBox(height: 14),

              GestureDetector(
                onTap: () {},
                child: const Text(
                  'Forgot your password?',
                  style: TextStyle(color: _accentBlue, fontSize: 13),
                ),
              ),

              const SizedBox(height: 56),


              const SizedBox(height: 20),

              const Text(
                'Join Steam and discover\nthousands of games to play.',
                textAlign: TextAlign.center,
                style: TextStyle(color: _textMuted, fontSize: 13, height: 1.6),
              ),
              const SizedBox(height: 10),

              GestureDetector(
                onTap: () {},
                child: const Text(
                  'Learn More',
                  style: TextStyle(
                    color: _accentBlue,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}