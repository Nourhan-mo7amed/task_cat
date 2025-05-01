import 'package:flutter/material.dart';
import 'package:hello_world/screens/verify_otp.dart';

class create_account extends StatelessWidget {
  const create_account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 70, 25, 8),
          child: Column(
            children: [
              Container(
                width: 100,
                height: 40,
                color: Colors.grey,
                alignment: Alignment.center,
                child: Text("Logo"),
              ),
              SizedBox(height: 35),
              Text(
                'Create Your Account',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Join the community of designers\nand clients.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone_outlined),
                  hintText: "Phone number",
                  prefixIconColor: Colors.grey,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[50],
                ),
              ),
              SizedBox(height: 50),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff007BFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => verify_otp()),
                    );
                  },
                  child: Text(
                    'Send OTP',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),

              TextButton(
                onPressed: () {},
                child: Text.rich(
                  TextSpan(
                    text: 'Already have an account? ',
                    style: TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                        text: 'Log In',
                        style: TextStyle(
                          color: Color(0xff007BFF),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
