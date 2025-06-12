import 'package:chatbot/pages/register_pages.dart';
import 'package:flutter/material.dart';
import 'package:chatbot/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: RegisterPage());
  }
}
