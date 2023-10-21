import 'package:flutter/material.dart';
import 'package:numbers_in_english/pages/login_page.dart';
import 'package:numbers_in_english/pages/main_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder<bool?>(
        future: checkFirstSeen(),
        builder: (BuildContext context, AsyncSnapshot<bool?> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Container(); // You can show a loading indicator here
          } else if (snapshot.hasError) {
            return Container(); // You can show an error message here
          } else {
            bool? seen = snapshot.data;
            return seen == true ? const MainPage() : LoginPage();
          }
        },
      ),
    );
  }

  Future<bool?> checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? seen = prefs.getBool('seen');
    if (seen == null || !seen) {
      await prefs.setBool('seen', true);
      return false;
    }
    return seen;
  }
}
