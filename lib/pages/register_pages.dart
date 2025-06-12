import 'package:flutter/material.dart';
import 'package:chatbot/components/my_text_field.dart';
import 'package:chatbot/components/my_button.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? ontap;
  const RegisterPage({super.key, this.ontap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmedpassword = TextEditingController();

  void signup() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                SizedBox(height: 100),
                Icon(Icons.message, size: 100),
                // Register title
                Text(
                  'Lets Register You',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 40),
                // Email textfieled
                MyTextField(
                  controller: emailController,
                  hintText: 'Email/Number',
                  obscureText: false,
                ),
                SizedBox(height: 20),
                // Password textfieled
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
                SizedBox(height: 20),
                //Confirmed Password textfieled
                MyTextField(
                  controller: confirmedpassword,
                  hintText: 'Confirm Password',
                  obscureText: true,
                ),
                // sign in button
                SizedBox(height: 20),
                MyButton(onTap: signup, text: 'Sign up'),
                // Register now
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already a member?'),
                    SizedBox(width: 4),
                    GestureDetector(
                      child: Text(
                        'Login now',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
