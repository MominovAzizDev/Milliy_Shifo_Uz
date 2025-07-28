import 'package:flutter/material.dart';
import '../../../buttons/widgets/enter_main_button.dart';
import '../../../buttons/widgets/outline_button_page.dart';
import 'new_password.dart';

class Verificationcode extends StatelessWidget {
  final int smslength;

  Verificationcode({Key? key, this.smslength = 4});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 4,
                child: Text(
                  "Enter the 4-digit code",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(height: 2),
              SizedBox(
                height: 6,
                child: Text(
                  "We've sent the code to your email, check your inbox.",
                  style: TextStyle(fontSize: 13),
                ),
              ),
              SizedBox(height: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(smslength, (index) {
                  return Container(
                    width: 60,
                    height: 80,
                    margin: EdgeInsets.symmetric(horizontal: 6),
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      decoration: InputDecoration(
                        counterText: '',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  );
                }),
              ),
              SizedBox(height: 2),
              SizedBox(
                height: 6,
                child: Text(
                  "This OTP will be available during 00:59sec",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(
                width: 80,
                height: 5,
                child: EnterMainButtonPage(
                  labels: "Reset password",
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => NewPassword()),
                    );
                  },
                ),
              ),
              SizedBox(height: 2),
              SizedBox(
                width: 80,
                height: 5,
                child: OutlineButtonPage(
                  label: "Resend code",
                  onpressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
