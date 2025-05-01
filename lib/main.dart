import 'package:flutter/material.dart';
import 'package:hello_world/screens/welcome.dart';

void main() {
  runApp(login_app());
}

class login_app extends StatelessWidget {
  const login_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
