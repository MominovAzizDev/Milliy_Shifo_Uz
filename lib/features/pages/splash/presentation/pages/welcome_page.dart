import 'package:flutter/material.dart';
import 'package:milliy_shifo/core/utils/images.dart';
import 'package:milliy_shifo/features/pages/login/presentation/pages/login.dart';
import '../../../buttons/widgets/enter_main_button.dart';

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
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(Images.doctors),
                SizedBox(height: 7),
                Text(
                  "Shifokorlar bilan bog'laning",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 2),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      Text(
                        "Eng yaxshi shifokorlar bilan video, audio va chat orqali maslahat oling",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Image.asset(Images.corrects, height: 25),
                          SizedBox(width: 5),
                          Text(
                            "24/7 shifokorlar mavjud",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(height: 2),
                      Row(
                        children: [
                          Image.asset(Images.corrects, height: 25),
                          SizedBox(width: 5),
                          Text(
                            "Barcha mutaxassisliklar",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(height: 2),
                      Row(
                        children: [
                          Image.asset(Images.corrects, height: 25),
                          SizedBox(width: 5),
                          Text(
                            "Xavfsiz va mahfiy",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                SizedBox(
                  width: 300,
                  height: 35,
                  child: EnterMainButtonPage(
                    labels: "Davom etish",
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
            width: 60,
            height: 90,
            child: Column(
              children: [
                SizedBox(height: 120),
                Image.asset(Images.phonecalendar),
                SizedBox(height: 7),
                Text(
                  "Qabulga oson yoziling",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 2),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      Text(
                        "Bir necha bosish bilan shifokor qabuliga yoziling va vaqtingizni rejalashtiring",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Image.asset(Images.corrects, height: 25),
                          SizedBox(width: 5),
                          Text(
                            "Tez va oson yozilish",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(height: 2),
                      Row(
                        children: [
                          Image.asset(Images.corrects, height: 25),
                          SizedBox(width: 5),
                          Text(
                            "Eslatmalar va bildirishnomalar",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(height: 2),
                      Row(
                        children: [
                          Image.asset(Images.corrects, height: 25),
                          SizedBox(width: 5),
                          Text("Qabul tarixi", style: TextStyle(fontSize: 15)),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 90),
                SizedBox(
                  width: 300,
                  height: 35,
                  child: EnterMainButtonPage(
                    labels: "Davom etish",
                    onPressed: () {
                      pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    },
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: 300,
                  height: 35,
                  child: EnterMainButtonPage(
                    labels: "Orqaga",
                    onPressed: () {
                      pageController.previousPage(
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
            width: 60,
            height: 50,
            child: Column(
              children: [
                SizedBox(height: 120),
                Image.asset(Images.drugs),
                SizedBox(height: 7),
                Text(
                  "Dorilarni online xarid qiling",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 2),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      Text(
                        "Kerakli dorilarni uydan chiqmasdan buyurtma qiling va tezda olib keling",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Image.asset(Images.corrects, height: 25),
                          SizedBox(width: 5),
                          Text(
                            "Tez yetkazib berish",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(height: 2),
                      Row(
                        children: [
                          Image.asset(Images.corrects, height: 25),
                          SizedBox(width: 5),
                          Text(
                            "Sifatli dorilar",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(height: 2),
                      Row(
                        children: [
                          Image.asset(Images.corrects, height: 25),
                          SizedBox(width: 5),
                          Text("Qulay narxlar", style: TextStyle(fontSize: 15)),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 80),
                SizedBox(
                  width: 300,
                  height: 35,
                  child: EnterMainButtonPage(
                    labels: "Davom etish",
                    onPressed: () {
                      pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    },
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: 300,
                  height: 35,
                  child: EnterMainButtonPage(
                    labels: "Orqaga",
                    onPressed: () {
                      pageController.previousPage(
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
            width: 60,
            height: 50,
            child: Column(
              children: [
                SizedBox(height: 120),
                Image.asset(Images.learnmed),
                SizedBox(height: 7),
                Text(
                  "Tibbiy bilimlarni o'rganing",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 2),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      Text(
                        "Sog'liq haqida foydali ma'lumotlar, kurslar va shifokorlar maslahatlarini oling",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Image.asset(Images.corrects, height: 25),
                          SizedBox(width: 5),
                          Text(
                            "Professional kurslar",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(height: 2),
                      Row(
                        children: [
                          Image.asset(Images.corrects, height: 25),
                          SizedBox(width: 5),
                          Text(
                            "Kundalik maslahatlar",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(height: 2),
                      Row(
                        children: [
                          Image.asset(Images.corrects, height: 25),
                          SizedBox(width: 5),
                          Text(
                            "Sog'liq nazorati",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                SizedBox(
                  width: 300,
                  height: 35,
                  child: EnterMainButtonPage(
                    labels: "Davom etish",
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: 300,
                  height: 35,
                  child: EnterMainButtonPage(
                    labels: "Orqaga",
                    onPressed: () {
                      pageController.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn,
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
