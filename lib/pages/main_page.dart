import 'package:flutter/material.dart';
import 'package:numbers_in_english/pages/login_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Main Page'),
    ),
    body: Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },
        child: const Text('Start'),
      ),
    ),
  );
}
}
