import 'package:flutter/material.dart';
import 'package:milliy_shifo/core/utils/app_colors.dart';
import 'package:milliy_shifo/core/utils/images.dart';
import 'package:milliy_shifo/features/pages/home/presentation/pages/myhealthcard.dart';
import 'package:milliy_shifo/features/pages/home/presentation/widgets/ambulance.dart';
import 'package:milliy_shifo/features/pages/home/presentation/widgets/doctorProfileCard.dart';
import 'package:milliy_shifo/features/pages/home/presentation/widgets/doctorcard.dart';
import 'package:milliy_shifo/features/pages/home/presentation/widgets/fastworks.dart';
import 'package:milliy_shifo/features/pages/home/presentation/widgets/healthAdvice.dart';
import '../../../notifications/presentation/pages/notifications.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Image.asset(Images.logo, height: 30),
              Text(
                "Milliy Shifo",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Notifications()),
                );
              },
              icon: Icon(
                Icons.notifications_none_rounded,
                color: AppColors.wordColor,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Notifications()),
                );
              },
              icon: Icon(
                Icons.person_outline_sharp,
                color: AppColors.wordColor,
                size: 30,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Xush kelibsiz!",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Sog'ligingizni saqlash uchun barcha xizmatlar bir joyda",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 15),
                Text(
                  "Tez xizmatlar",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Wrap(
                  runSpacing: 2,
                  spacing: 2,
                  children: [
                    Fastworks(
                      title: "Qabulga yozilish",
                      bottomtext: "Shifokor qabuliga tez\n va qulay yozilish",
                      icontext: Icons.calendar_month_sharp,
                      iconcolor: Colors.blueAccent,
                      backColor: const Color.fromARGB(255, 154, 210, 235),
                    ),
                    Fastworks(
                      title: "Online maslahat",
                      bottomtext: "Shifokor bilan video\n orqali maslahat",
                      icontext: Icons.play_circle_outline_sharp,
                      iconcolor: Colors.lightGreen,
                      backColor: const Color.fromARGB(255, 219, 244, 190),
                    ),
                    Fastworks(
                      title: "Dorixona",
                      bottomtext: "Dori-darmonlarni\n online buyurtma\n qilish",
                      icontext: Icons.pie_chart_outline_sharp,
                      iconcolor: Colors.deepPurpleAccent,
                      backColor: const Color.fromARGB(255, 216, 202, 255),
                    ),
                    Fastworks(
                      title: "Ta'lim",
                      bottomtext: "Tibbiy bilimlar va \nkurslar",
                      icontext: Icons.edit_document,
                      iconcolor: Colors.orangeAccent,
                      backColor: const Color.fromARGB(255, 240, 212, 176),
                    ),
                  ],
                ),
                Myhealthcard(),
                SizedBox(height: 15),
                Text(
                  "Kasalxonalar va sanatoriyalar",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Doctorcard(
                  images: "assets/doctors/cardimage.jpg",
                  name: "Toshkent tibbiyot markazi",
                  jobs: "Chilonzor tumani, Bunyodkor ko'chasi 34",
                  day: "1250 sharh",
                  typeofmeeting: "4.8",
                  typeplace: "Kasalxona",
                  time: "24/7",
                ),
                Doctorcard(
                  images: "assets/doctors/cardimage.jpg",
                  name: "Dr. John Smith",
                  jobs: "Yunusobod tumani, Amir Temur ko'chasi 78",
                  day: "890 sharh",
                  typeofmeeting: "Virtual visit",
                  typeplace: "Sanatoriya",
                  time: "08:00-20:00",
                ),
                Doctorcard(
                  images: "assets/doctors/cardimage.jpg",
                  name: "Toshkent tibbiyot markazi",
                  jobs: "Chilonzor tumani, Bunyodkor ko'chasi 34",
                  day: "1250 sharh",
                  typeofmeeting: "4.8",
                  typeplace: "Kasalxona",
                  time: "24/7",
                ),
                Doctorcard(
                  images: "assets/doctors/cardimage.jpg",
                  name: "Dr. John Smith",
                  jobs: "Yunusobod tumani, Amir Temur ko'chasi 78",
                  day: "890 sharh",
                  typeofmeeting: "Virtual visit",
                  typeplace: "Sanatoriya",
                  time: "08:00-20:00",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text("Mashhur shifokorlar", style: TextStyle()),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("Barchasini korsatish", style: TextStyle()),
                    ),
                  ],
                ),
                DoctorProfileCard(
                  doctorName: 'Dr. Aziz Karimov',
                  specialty: 'Kardiolog',
                  imageUrl: 'assets/doctors/cardimage.jpg',
                  rating: '4.9',
                  reviewCount: '1,200+',
                  isFavorite: true,
                  about:
                      "Yurak-qon tomir kasalliklari boyicha 15 yillik tajribaga ega bilan mutaxassis. Zamonaviy usullar bilan davolash. Yurak transplantatsiyasi boyicha Yevropa sertifikati.",
                  onderwijs:
                      "Toshkent tibbiyot instituti (2008),\nSankt-Peterburg kardiologiya akademiyasi (2012)",
                  prestaties: [
                    "💡Yurak jarrohligi boyicha 500+ operatsiya",
                    "💡   Tibbiy fanlar nomzodi",
                    "💡   Tibbiy fanlar nomzodi",
                  ],
                  workTime: 'Dush-Juma:9:00 - 23:00',
                ),
                DoctorProfileCard(
                  doctorName: 'Dr. Aziz Karimov',
                  specialty: 'Kardiolog',
                  imageUrl: 'assets/doctors/cardimage.jpg',
                  rating: '4.9',
                  reviewCount: '1,200+',
                  isFavorite: false,
                  about:
                      "Yurak-qon tomir kasalliklari boyicha 15 yillik tajribaga ega bilan mutaxassis. Zamonaviy usullar bilan davolash. Yurak transplantatsiyasi boyicha Yevropa sertifikati.",
                  onderwijs:
                      "Toshkent tibbiyot instituti (2008),\nSankt-Peterburg kardiologiya akademiyasi (2012)",
                  prestaties: [
                    "💡Yurak jarrohligi boyicha 500+ operatsiya",
                    "💡Tibbiy fanlar nomzodi",
                    "💡Tibbiy fanlar nomzodi",
                  ],
                  workTime: 'Dush-Juma:9:00 - 23:00',
                ),
                Text(
                  "Sog'liq maslahatlari",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                Healthadvice(
                  advice:
                      "Lorem Ipsum，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑",
                  drinkeWater: 3,
                  sleeping: 8,
                ),
                Ambulance(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
