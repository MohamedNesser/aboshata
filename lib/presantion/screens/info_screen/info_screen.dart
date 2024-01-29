import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Center(
            child: Text(
          "تم التسجيل بنجاح وتم الربط مع قاعده البيانات",
          style: TextStyle(fontSize: 20),
        ))
      ]),
    );
  }
}
