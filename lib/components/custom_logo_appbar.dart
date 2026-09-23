import 'package:flutter/material.dart';
class CustomLogoAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomLogoAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFF171A21),
      elevation: 0,
      toolbarHeight: 64,
      centerTitle: true,
      title: Image.asset('assets/images/steam_logo.png', height: 50),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(1),
        child: Container(height: 1, color: Color(0xFF2D3748)),
      ),
    );
  }

  @override
  Size get preferredSize {
    return Size.fromHeight(65);
  }
}
