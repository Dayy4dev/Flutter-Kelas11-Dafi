import 'package:flutter/material.dart';

class KalkulatorPage extends StatefulWidget {
  const new({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kalkulator")),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: Text(
              "Kalkulator",
              style: TextStyle(
                fontSize: 30,
                fontFamily: "Times New Roman",
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(hintText: "Angka 1"),
                  ),
                ),
                SizedBox(width: 40),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(hintText: "Angka 2"),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){}, child: Text("+")),
                ElevatedButton(onPressed: (){}, child: Text("-")),
                ElevatedButton(onPressed: (){}, child: Text("*")),
                ElevatedButton(onPressed: (){}, child: Text("/")),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: Text("Hasil"),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: ElevatedButton(onPressed: (){}, child: Text("Reset")),
          ),
        ],
      ),
    );
  }
}
