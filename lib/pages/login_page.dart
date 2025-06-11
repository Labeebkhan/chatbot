import 'package:chatbot/components/my_button.dart';
import 'package:chatbot/components/my_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //textediting controller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                //logo
                SizedBox(height: 100),
                Icon(Icons.message, size: 100),
                // welcome back
                Text(
                  'Welcome back',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 60),
                // Email textfieled
                MyTextField(
                  controller: emailController,
                  hintText: 'Email/Number',
                  obscureText: false,
                ),
                SizedBox(height: 30),
                // Password textfieled
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
                // sign in button
                SizedBox(height: 25),
                MyButton(onTap: () {}, text: 'Sign In'),
                // Register now
              ],
            ),
          ),
        ),
      ),
    );
  }
}
