import 'package:flutter/material.dart';

class CustomProfilePhoto extends StatelessWidget {
  const CustomProfilePhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 105,
          backgroundColor: Color(0xFF667B88),
          child: Icon(Icons.person, size: 150, color: Color(0xFFD0D8DE)),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: CircleAvatar(
            radius: 32,
            backgroundColor: Color(0xFF1FC55E),
            child: Icon(
              Icons.camera_alt_outlined,
              size: 32,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
