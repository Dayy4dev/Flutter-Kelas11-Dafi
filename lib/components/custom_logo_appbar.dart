import 'package:flutter/material.dart';

const Color _headerColor = Color(0xFF171A21);

class CustomLogoAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomLogoAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: _headerColor,
      elevation: 0,
      toolbarHeight: 64,
      centerTitle: true,
      title: Image.asset('assets/images/steam_logo.png', height: 50),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(height: 1, color: const Color(0xFF2D3748)),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(65);
}