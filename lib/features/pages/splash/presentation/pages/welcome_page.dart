import 'package:flutter/material.dart';
import 'package:milliy_shifo/core/utils/mediaquery_meneger.dart';

import '../../../register/presentation/widgets/enter_main_button.dart';
import '../../../register/presentation/widgets/outline_button_page.dart';
import '../../../login/presentation/pages/login.dart';
import '../../../register/presentation/pages/create_accaunt.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    MediaqueryMeneger.init(context);
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          SizedBox(
            width: MediaqueryMeneger.width(60),
            height: MediaqueryMeneger.height(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/Splash/Splash1.png"),
                SizedBox(height: MediaqueryMeneger.height(7)),
                Text(
                  "Healthcare Made Easy",
                  style: TextStyle(
                    fontSize: MediaqueryMeneger.fontSize(25),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: MediaqueryMeneger.height(2)),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Text(
                    "Choose from a wide range of specialists and book appointments with ease. Personalized care is just a click away.",
                    style: TextStyle(fontSize: MediaqueryMeneger.fontSize(15)),
                  ),
                ),
                SizedBox(height: MediaqueryMeneger.height(4)),
                SizedBox(
                  width: MediaqueryMeneger.width(80),
                  height: MediaqueryMeneger.height(5),
                  child: EnterMainButtonPage(
                    labels: "Next",
                    onPressed: () {
                      pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaqueryMeneger.width(60),
            height: MediaqueryMeneger.height(90),
            child: Column(
              children: [
                SizedBox(height: 130,),
                Image.asset("assets/Splash/Splash2.png"),
                SizedBox(
                  height: MediaqueryMeneger.height(7),
                  child: Text(
                    "Here for You, Always",
                    style: TextStyle(
                      fontSize: MediaqueryMeneger.fontSize(25),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Text(
                    "Save your test results, access prescriptions,get medication delivered, manage appointments —all in one place.",
                    style: TextStyle(fontSize: MediaqueryMeneger.fontSize(15)),
                  ),
                ),
                SizedBox(height: MediaqueryMeneger.height(4)),
                SizedBox(
                  width: MediaqueryMeneger.width(80),
                  height: MediaqueryMeneger.height(5),
                  child: EnterMainButtonPage(
                    labels: "Get started",
                    onPressed: () {
                      pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaqueryMeneger.width(60),
            height: MediaqueryMeneger.height(50),
            child: Column(
              children: [
                SizedBox(height: 120,),
                Image.asset("assets/Splash/Splash3.png"),
                SizedBox(
                  height: MediaqueryMeneger.height(7),
                  child: Text(
                    "Wellcome to Milliy Shifo!",
                    style: TextStyle(
                      fontSize: MediaqueryMeneger.fontSize(25),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Text(
                    "Connect with doctors, manage appointments,  access care whenever you need it.",
                    style: TextStyle(fontSize: MediaqueryMeneger.fontSize(15)),
                  ),
                ),
                SizedBox(height: MediaqueryMeneger.height(4)),
                SizedBox(
                  width: MediaqueryMeneger.width(80),
                  height: MediaqueryMeneger.height(5),
                  child: EnterMainButtonPage(
                    labels: "Create an account",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CreateAccaunt(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: MediaqueryMeneger.height(2)),
                SizedBox(
                  width: MediaqueryMeneger.width(80),
                  height: MediaqueryMeneger.height(5),
                  child: OutlineButtonPage(
                    label: "Log in",
                    onpressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
