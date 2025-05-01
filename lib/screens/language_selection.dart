// Language Selection Screen
import 'package:flutter/material.dart';
import 'package:hello_world/screens/role.dart';

class language_screen extends StatefulWidget {
  const language_screen({super.key});

  @override
  _language_screenState createState() => _language_screenState();
}

class _language_screenState extends State<language_screen> {
  String selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 50, 25, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "choose your language",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            languageTile("English", '🇺🇸'),
            SizedBox(height: 15),
            languageTile("العربية", '🇪🇬'),
            const SizedBox(height: 20),
            Text(
              "you can change it later from settings",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 50),
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
                    MaterialPageRoute(builder: (_) => RoleScreen()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget languageTile(String title, String flag) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedLanguage = title;
        });
      },
      child: Container(
        // color: Colors.grey[100]!,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(
            color:
                selectedLanguage == title
                    ? Color(0xff007BFF)
                    : Colors.grey[100]!,
          ),
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey[50],
        ),
        child: Row(
          children: [
            Text(flag, style: TextStyle(fontSize: 20)),
            SizedBox(width: 12),
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
