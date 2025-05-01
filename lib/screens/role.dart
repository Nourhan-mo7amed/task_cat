// Role Selection Screen

import 'package:flutter/material.dart';
import 'package:hello_world/screens/create_account.dart';

class RoleScreen extends StatefulWidget {
  const RoleScreen({super.key});

  @override
  _RoleScreenState createState() => _RoleScreenState();
}

class _RoleScreenState extends State<RoleScreen> {
  String selectedRole = "Designer";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 50, 25, 8),
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Text(
                    "Choose Your Role",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Let us know how you'll be using\nthe platform.",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),

            Row(
              children: [
                Expanded(child: roleTile("Designer", Icons.art_track)),
                SizedBox(width: 15),
                Expanded(child: roleTile("Client", Icons.person_outline)),
              ],
            ),

            SizedBox(height: 70),

           
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff007BFF),
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text("continue", style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => create_account()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget roleTile(String title, IconData icon) {
    bool isSelected = selectedRole == title;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedRole = title;
        });
      },
      child: Container(
        width: double.infinity,
        height: 180,
        padding: EdgeInsets.symmetric(vertical: 20),

        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? Color(0xff007BFF) : Colors.grey[100]!,
          ),
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey[50],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 70, color: Colors.black),

            SizedBox(height: 15),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
