import 'package:flutter/material.dart';
import 'package:hello_world/screens/login_screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class verify_otp extends StatefulWidget {
  const verify_otp({super.key});

  @override
  State<verify_otp> createState() => _verify_otpState();
}

class _verify_otpState extends State<verify_otp> {
  String currentText = "";

  @override
  Widget build(BuildContext context) {
    bool isCompleted = currentText.length == 4;

    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 50, 25, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Verify Identity',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Enter the 4-digit code sent to your phone\nnumber.',
              textAlign: TextAlign.start,
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            SizedBox(height: 35),
            PinCodeTextField(
              appContext: context,
              length: 4,
              onChanged: (value) {
                setState(() {
                  currentText = value;
                });
              },
              onCompleted: (value) {
                setState(() {
                  currentText = value;
                });
              },
              keyboardType: TextInputType.number,
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(10),
                fieldHeight: 60,
                fieldWidth: 75,
                activeColor: Color(0xff007BFF),
                inactiveColor: Colors.grey.shade300,
              ),
            ),
            SizedBox(height: 8),
            Center(
              child: Text.rich(
                TextSpan(
                  text: "Didn't receive the code? ",
                  children: [
                    TextSpan(
                      text: "Resend",
                      style: TextStyle(
                        color: Color(0xff007BFF),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 70),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed:
                    isCompleted
                        ? () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => login_screen()),
                          );
                        }
                        : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      isCompleted ? Color(0xff007BFF) : Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  "Verify",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
