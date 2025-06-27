import 'package:flutter/material.dart';
import 'package:milliy_shifo/core/utils/mediaquery_meneger.dart';
import 'package:milliy_shifo/features/pages/register/presentation/pages/succesfully.dart';

import '../widgets/enter_main_button.dart';
import '../widgets/outline_button_page.dart';

class Verification extends StatelessWidget {
  final int smslength;

  Verification({Key? key, this.smslength = 4});

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
                  "Code sent to email",
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
                  "A verification code has been sent to your email. Please enter it to verify your profile.",
                  style: TextStyle(fontSize: MediaqueryMeneger.fontSize(15)),
                ),
              ),
              SizedBox(height: MediaqueryMeneger.height(4)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(smslength, (index) {
                  return Container(
                    width: 40,
                    height: 50,
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
                  labels: "Confirm",
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Succesfully()),
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
