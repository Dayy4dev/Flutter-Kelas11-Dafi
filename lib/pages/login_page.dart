import 'package:first_flutter/components/custom_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  String statusLogin = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Column(
        children: [
          Text(
            "Welcome, " + statusLogin,
            style: TextStyle(
              fontSize: 30,
              fontFamily: "Times New Roman",
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: CustomTextfield(
              controller: txtUsername,
              hint: "Input your username",
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: TextField(
              controller: txtPassword,
              decoration: InputDecoration(
                hintText: "Enter your password",
                suffixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    String username = txtUsername.text.toString();
                    String password = txtPassword.text.toString();
                    if (username == "admin" && password == "admin") {
                      print("Login Success");
                      statusLogin = username;
                    } else {
                      print("Login Failed");
                      statusLogin = "Gagal Login";
                    }
                  });
                },
                child: Text("Sign In"),
              ),
              ElevatedButton(onPressed: () {}, child: Text("Sign Up")),
            ],
          ),
        ],
      ),
    );
  }
}
