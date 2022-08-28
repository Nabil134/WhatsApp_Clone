import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff075e54),
      ),
      home: MyHomePage(title: 'WhatsApp'),
    );
  }
}
