import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:milliy_shifo/core/utils/mediaquery_meneger.dart';
import 'package:milliy_shifo/features/pages/notifications/presentation/pages/notifications.dart';
import 'package:milliy_shifo/features/pages/profile/presentation/widgets/listTitles_widget.dart';
import 'package:milliy_shifo/features/pages/profile/presentation/widgets/personal_information_widget.dart';
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
                  fontSize: MediaqueryMeneger.fontSize(25),
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
              nextPage: Notifications(),
            ),
            ListtitlesWidget(
              icons: Icons.perm_contact_calendar,
              names: "Emergency contact",
              nextPage: Notifications(),
            ),
            ListtitlesWidget(
              icons: Icons.medical_information_sharp,
              names: "Insurance information",
              nextPage: Notifications(),
            ),
            ListtitlesWidget(
              icons: Icons.notifications,
              names: "Notification settings ",
              nextPage: Notifications(),
            ),
            ListtitlesWidget(
              icons: Icons.payment_sharp,
              names: "Payment settings",
              nextPage: Notifications(),
            ),
            ListtitlesWidget(
              icons: Icons.email,
              names: "Change email",
              nextPage: Notifications(),
            ),
            ListtitlesWidget(
              icons: Icons.password,
              names: "Security settings",
              nextPage: Notifications(),
            ),
            ListtitlesWidget(
              icons: Icons.logout_sharp,
              names: "out",
              nextPage: Notifications(),
            ),
          ],
        ),
      ),
    );
  }
}
