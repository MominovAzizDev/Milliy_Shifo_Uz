import 'package:flutter/material.dart';
import 'package:milliy_shifo/core/utils/mediaquery_meneger.dart';

import '../../../register/presentation/widgets/enter_main_button.dart';
import '../../../register/presentation/widgets/outline_button_page.dart';
import 'new_password.dart';

class Verificationcode extends StatelessWidget {
  final int smslength;

  Verificationcode({Key? key, this.smslength = 4});

  @override
  Widget build(BuildContext context) {
    MediaqueryMeneger.init(context);
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaqueryMeneger.height(4),
                child: Text(
                  "Enter the 4-digit code",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaqueryMeneger.fontSize(25),
                  ),
                ),
              ),
              SizedBox(height: MediaqueryMeneger.height(2)),
              SizedBox(
                height: MediaqueryMeneger.height(6),
                child: Text(
                  "We've sent the code to your email, check your inbox.",
                  style: TextStyle(fontSize: MediaqueryMeneger.fontSize(13)),
                ),
              ),
              SizedBox(height: MediaqueryMeneger.height(1)),
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
              SizedBox(height: MediaqueryMeneger.height(2)),
              SizedBox(
                height: MediaqueryMeneger.height(6),
                child: Text(
                  "This OTP will be available during 00:59sec",
                  style: TextStyle(fontSize: MediaqueryMeneger.fontSize(15)),
                ),
              ),
              SizedBox(
                width: MediaqueryMeneger.width(80),
                height: MediaqueryMeneger.height(5),
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
              SizedBox(height: MediaqueryMeneger.height(2)),
              SizedBox(
                width: MediaqueryMeneger.width(80),
                height: MediaqueryMeneger.height(5),
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
