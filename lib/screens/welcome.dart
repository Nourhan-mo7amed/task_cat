// Splash Screen
import 'package:flutter/material.dart';
import 'package:hello_world/screens/language_selection.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => language_screen()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          width: 300,
          height: 300,
          child: Image.asset('images/logo_cat.png'),
        ),
      ),
    );
  }
}
