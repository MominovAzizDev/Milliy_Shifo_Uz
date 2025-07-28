import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:milliy_shifo/features/pages/home/presentation/widgets/functionShowDialog.dart';
import 'package:milliy_shifo/features/pages/profile%20copy/presentation/widgets/listTitles_widget.dart';
import 'package:milliy_shifo/features/pages/profile%20copy/presentation/widgets/personal_information_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profiles extends StatefulWidget {
  const Profiles({super.key});

  @override
  State<Profiles> createState() => _ProfilesState();
}

class _ProfilesState extends State<Profiles> {
  String? name;
  String? lastname;
  String? date;
  String? imageUrl;

  @override
  void initState() {
    super.initState();
    fetchProfile();
  }

  void fetchProfile() async {
    final uid = FirebaseAuth.instance.currentUser?.uid;
    final prefs = await SharedPreferences.getInstance();

    if (uid != null) {
      final doc = await FirebaseFirestore.instance
          .collection("profile")
          .doc(uid)
          .get();
      final data = doc.data();
      setState(() {
        name = data?['name'] ?? prefs.getString("name") ?? "";
        lastname = data?['lastname'] ?? prefs.getString("lastname") ?? "";
        date = data?['date'] ?? prefs.getString("date") ?? "";
        imageUrl = data?['imageUrl'] ?? prefs.getString('imageUrl');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30, top: 20),
              child: Text(
                "Profile",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: imageUrl != null
                      ? NetworkImage(imageUrl!)
                      : AssetImage("assets/doctors/cardimage.jpg")
                            as ImageProvider,
                  radius: 30,
                ),
                title: Text(
                  "$name $lastname",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("$date", style: TextStyle(fontSize: 13)),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PersonalInformationWidget(),
                      ),
                    );
                    fetchProfile();
                  },
                  icon: Icon(Icons.arrow_forward_ios_outlined, size: 18),
                ),
              ),
            ),
            ListtitlesWidget(
              icons: Icons.favorite,
              names: "Favorite doctors",
              onTap: () {
                showMyDialog(
                  context,
                  "Sevimli shifokorlar",
                  "Sizda hozircha hech qanday sevimli shifokor mavjud emas. Ro‘yxatga qo‘shish uchun shifokorni tanlang.",
                );
              },
            ),
            ListtitlesWidget(
              icons: Icons.perm_contact_calendar,
              names: "Emergency contact",
              onTap: () {
                showMyDialog(
                  context,
                  "Favqulodda kontakt",
                  "Favqulodda bog‘lanish uchun 103 raqamamiga bog'laning!",
                );
              },
            ),
            ListtitlesWidget(
              icons: Icons.medical_information_sharp,
              names: "Insurance information",
              onTap: () {
                showMyDialog(
                  context,
                  "Sug'urta ma'lumotlari",
                  "Hozircha hech qanday sug'urta ma'lumotlari topilmadi. Qo‘shish uchun sug'urta raqamingizni kiriting.",
                );
              },
            ),
            ListtitlesWidget(
              icons: Icons.notifications,
              names: "Notification settings",
              onTap: () {
                showMyDialog(
                  context,
                  "Bildirishnoma sozlamalari",
                  "Bildirishnomalarni yoqish yoki o‘chirish uchun mos sozlamalarni tanlang.",
                );
              },
            ),
            ListtitlesWidget(
              icons: Icons.payment_sharp,
              names: "Payment settings",
              onTap: () {
                showMyDialog(
                  context,
                  "To‘lov sozlamalari",
                  "Hozircha hech qanday to‘lov usuli kiritilmagan. To‘lov kartangizni qo‘shish uchun sozlamalarga o‘ting.",
                );
              },
            ),
            ListtitlesWidget(
              icons: Icons.email,
              names: "Change email",
              onTap: () {
                showMyDialog(
                  context,
                  "Emailni o‘zgartirish",
                  "Amaldagi email manzilingizni yangilash uchun yangi email kiriting.",
                );
              },
            ),
            ListtitlesWidget(
              icons: Icons.password,
              names: "Security settings",
              onTap: () {
                showMyDialog(
                  context,
                  "Xavfsizlik sozlamalari",
                  "Parolingizni yangilash yoki ikki bosqichli tasdiqlashni sozlash uchun bu bo‘limga kiring.",
                );
              },
            ),
            ListtitlesWidget(
              icons: Icons.logout_sharp,
              names: "Log out",
              onTap: () {
                showMyDialog(
                  context,
                  "Ilovadan chiqish",
                  "Rostdan ham ilovadan chiqmoqchimisiz? Barcha seans ma’lumotlari bekor qilinadi.",
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}