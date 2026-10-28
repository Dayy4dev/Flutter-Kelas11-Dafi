import 'package:first_flutter/components/profile/custom_profile_item.dart';
import 'package:first_flutter/components/profile/custom_profile_photo.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0B1014),
      appBar: AppBar(
        title: Text("Profile"),
        foregroundColor: Colors.white,
        // centerTitle: true,
        backgroundColor: Color(0xFF0B1014),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(child: CustomProfilePhoto()),
            SizedBox(height: 40),
            CustomProfileItem(icon: Icons.person_outline, title: "Name", value: "Dafi"),
            CustomProfileItem(icon: Icons.info_outline, title: "About", value: "Hi"),
            CustomProfileItem(icon: Icons.alternate_email, title: "Reserved username", value: "dppai"),
            CustomProfileItem(icon: Icons.phone_outlined, title: "Phone", value: "+62 882-2543-3933"),
            CustomProfileItem(icon: Icons.link, title: "Link", value: "-"),
          ],
        ),
      ),
    );
  }
}