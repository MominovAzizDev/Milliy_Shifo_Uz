import 'package:flutter/material.dart';
import 'package:milliy_shifo/features/pages/login/presentation/pages/verificationcode.dart';
import '../../../buttons/widgets/enter_main_button.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
              child: Text(
                "Forgot password?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(height: 2),
            SizedBox(
              height: 11,
              child: Text(
                "Please enter your email to initiate the password reset process. A 4-digit verification code will be sent to your email, and then you can create a new password.",
                style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(height: 2),
            Text(
              "Email",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "alex.johnson78@examplemail.com",
              ),
            ),
            SizedBox(height: 6),
            SizedBox(
              width: 80,
              height:5,
              child: EnterMainButtonPage(
                labels: "Reset password",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Verificationcode()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
