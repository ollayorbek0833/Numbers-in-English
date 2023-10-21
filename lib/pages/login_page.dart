import 'package:flutter/material.dart';
import 'package:numbers_in_english/components/my_button.dart';
import 'package:numbers_in_english/components/my_textfield.dart';
import 'package:numbers_in_english/components/square_tile.dart';
import 'main_page.dart';


class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("asset/logo.jpg", height: 350,),
              Text(
                "Welcome back, you've been missed!",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16
                ),
              ),
              const SizedBox(height: 25,),
              MyTextField(
                controller: usernameController,
                hintText: "Username",
                obscureText: false,
              ),
              const SizedBox(height: 25,),
              MyTextField(
                controller: passwordController,
                obscureText: true,
                hintText: "Password",
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                        "Forgot Password?",
                      style: TextStyle(color: Colors.grey[600]),
                    )
                  ],
                ),
              ),
              const SizedBox(height:25),
              MyButton(onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MainPage()),
                );
              },),
              const SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                          "Or continue with",
                        style: TextStyle(
                          color: Colors.grey[700]
                        ),
                      ),
                    ),

                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath: "asset/google.png"),
                ],
              ),
              const SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text(
                    "Not a member?",
                  style: TextStyle(
                    color: Colors.grey[700]
                  ),
                ),
                const SizedBox(width: 4,),
                const Text(
                    "Register now",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],),
              const SizedBox(height: 50,)
              ],
          ),
        ),
      )
    );
  }
}