import 'package:flutter/material.dart';

import '../../../buttons/widgets/enter_main_button.dart';
import 'login.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool _obsecure = true;
  bool _newobsecure = true;
  TextEditingController firstPassword = TextEditingController();
  TextEditingController secondPassword = TextEditingController();

  void checkEye() {
    setState(() {
      _obsecure = !_obsecure;
    });
  }

  void checkEyes() {
    setState(() {
      _newobsecure = !_newobsecure;
    });
  }

  void CheckPasswords() {
    if (firstPassword.text == secondPassword.text) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    }
  }

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
              height: 4,
              child: Text(
                "Enter new password",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(height: 2),
            Text(
              "Password",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              controller: firstPassword,
              obscureText: _obsecure,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter new password",
                suffixIcon: IconButton(
                  onPressed: checkEye,
                  icon: Icon(
                    _obsecure ? Icons.visibility_off : Icons.visibility,
                  ),
                ),
              ),
            ),
            SizedBox(height: 2),
            Text(
              "Repeat password",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              controller: secondPassword,
              obscureText: _obsecure,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter new password again",
                suffixIcon: IconButton(
                  onPressed: checkEyes,
                  icon: Icon(
                    _newobsecure ? Icons.visibility_off : Icons.visibility,
                  ),
                ),
              ),
            ),
            SizedBox(height:5),
            SizedBox(
              width: 80,
              height: 5,
              child: EnterMainButtonPage(
                labels: "Save password",
                onPressed: CheckPasswords,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
