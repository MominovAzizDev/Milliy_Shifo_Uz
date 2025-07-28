import 'package:flutter/material.dart';
import 'package:milliy_shifo/core/utils/images.dart';
import 'package:milliy_shifo/features/pages/home/presentation/pages/homepage.dart';
import 'package:milliy_shifo/features/pages/home/presentation/widgets/BottomNavigationBar_widget.dart';
import 'package:milliy_shifo/services/auth_service.dart';

import '../../../buttons/widgets/enter_main_button.dart';
import 'forgot_password.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController loginEmailController = TextEditingController();
  final TextEditingController loginPasswordController = TextEditingController();
  final TextEditingController registerEmailController = TextEditingController();
  final TextEditingController registerPasswordController =
      TextEditingController();
  final TextEditingController registerNameController = TextEditingController();
  final TextEditingController registerPhoneController = TextEditingController();

  final AuthService _auth = AuthService();

  bool _obsecure = true;
  bool _checkbutton = false;

  bool isLogin = true;

  void buttonCheck() {
    setState(() {
      _checkbutton = !_checkbutton;
    });
  }

  void checkEye() {
    setState(() {
      _obsecure = !_obsecure;
    });
  }

  Widget _buildLoginForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        TextField(
          controller: loginEmailController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Emainni kiriting",
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Password",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        TextField(
          controller: loginPasswordController,
          obscureText: _obsecure,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Passwordni kiriting",
            suffixIcon: IconButton(
              onPressed: checkEye,
              icon: Icon(_obsecure ? Icons.visibility_off : Icons.visibility),
            ),
          ),
        ),
        Row(
          children: [
            Checkbox(value: _checkbutton, onChanged: (value) => buttonCheck()),
            Text("Meni eslab qol", style: TextStyle(fontSize: 13)),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgotPassword()),
                );
              },
              child: Text(
                "Parolni unutdingizmi?",
                style: TextStyle(fontSize: 13),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: EnterMainButtonPage(
            labels: "Kirish",
            onPressed: () async {
              final user = await _auth.signIn(
                loginEmailController.text.trim(),
                loginPasswordController.text.trim(),
              );
              if (user != null) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BottomnavigationbarWidget(),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Email yoki Parol xato")),
                );
              }
            },
          ),
        ),
      ],
    );
  }

  Widget _buildRegisterForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "To'liq ism",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        TextField(
          controller: registerNameController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Ismingizni kiriting",
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Telefon raqami",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        TextField(
          controller: registerPhoneController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Raqamni kiriting",
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Email",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        TextField(
          controller: registerEmailController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Emailni kiriting",
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Password",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        TextField(
          controller: registerPasswordController,
          obscureText: _obsecure,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Passwordni kiriting",
            suffixIcon: IconButton(
              onPressed: checkEye,
              icon: Icon(_obsecure ? Icons.visibility_off : Icons.visibility),
            ),
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: EnterMainButtonPage(
            labels: "Hisob yaratish",
            onPressed: () async {
              final user = await _auth.signUp(
                registerEmailController.text.trim(),
                registerPasswordController.text.trim(),
              );
              if (user != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homepage()),
                );
              }
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(Images.logo, height: 150),
              Text("Hisobingizga kiring", style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isLogin = true;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: isLogin ? Colors.white : Colors.grey[300],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Kirish",
                          style: TextStyle(
                            color: isLogin ? Colors.blue : Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isLogin = false;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: !isLogin ? Colors.white : Colors.grey[300],
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Ro'yxatdan o'tish",
                          style: TextStyle(
                            color: !isLogin ? Colors.blue : Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              isLogin ? _buildLoginForm() : _buildRegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}
