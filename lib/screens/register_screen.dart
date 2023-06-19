import 'package:chat_app/services/auth/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/my_button.dart';
import '../components/my_text_field.dart';

class RegisterScreen extends StatefulWidget {
  final void Function()? onTap;
  const RegisterScreen({super.key, this.onTap});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController rePasswordController = TextEditingController();

  //sign up user
  void signUp() async {
    if (passwordController.text != rePasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Password do not match!'),
        ),
      );
      return;
    }

    //get the auth service
    final authService = Provider.of<AuthService>(context, listen: false);

    try {
      authService.signUpWithEmailandPassword(
        emailController.text,
        passwordController.text,
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: SingleChildScrollView(
              // reverse: true,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //logo
                  Image.asset(
                    'assets/Messenger_logo_2020.svg',
                    fit: BoxFit.cover,
                    height: 100,
                  ),

                  const SizedBox(height: 50),

                  //create account message
                  Text(
                    'Let\'s create an account for you',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 25),

                  //email textfield
                  MyTextField(
                    controller: emailController,
                    obscureText: false,
                    hintText: 'Email',
                  ),

                  const SizedBox(height: 10),

                  //password textfield
                  MyTextField(
                    controller: passwordController,
                    obscureText: true,
                    hintText: 'Password',
                  ),

                  const SizedBox(height: 10),

                  //password textfield
                  MyTextField(
                    controller: rePasswordController,
                    obscureText: true,
                    hintText: 'Confirm Password',
                  ),

                  const SizedBox(height: 25),

                  //sign in button
                  MyButton(
                    onTap: signUp,
                    text: 'Sign Up',
                  ),

                  const SizedBox(height: 50),

                  //Already a member? register now
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already a member?'),
                      const SizedBox(width: 4),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: const Text(
                          'Login now',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
