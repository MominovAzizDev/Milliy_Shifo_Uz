import 'package:flutter/material.dart';
import 'package:milliy_shifo/features/pages/home/presentation/widgets/BottomNavigationBar_widget.dart';
import '../../../../../../core/utils/mediaquery_meneger.dart';
import '../widgets/enter_main_button.dart';

class Succesfully extends StatefulWidget {
  const Succesfully({super.key});

  @override
  State<Succesfully> createState() => _SuccesfullyState();
}

class _SuccesfullyState extends State<Succesfully> {
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
                Image.asset("assets/succesfully/succesfull.png"),
                SizedBox(height: MediaqueryMeneger.height(7)),
                Text(
                  "Successfully verified",
                  style: TextStyle(
                    fontSize: MediaqueryMeneger.fontSize(25),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: MediaqueryMeneger.height(2)),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Text(
                    "Fill in your personal information to simplify doctor communication, book appointments faster, and get personalized care.",
                    style: TextStyle(fontSize: MediaqueryMeneger.fontSize(15)),
                  ),
                ),
                SizedBox(height: MediaqueryMeneger.height(4)),
                SizedBox(
                  width: MediaqueryMeneger.width(80),
                  height: MediaqueryMeneger.height(5),
                  child: EnterMainButtonPage(
                    labels: "Complete patient card",
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => BottomnavigationbarWidget()),
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
