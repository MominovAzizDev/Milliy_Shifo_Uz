import 'package:flutter/material.dart';
import 'package:milliy_shifo/core/utils/app_colors.dart';
import 'package:milliy_shifo/features/pages/doctors/presentation/pages/doctorspage.dart';
import 'package:milliy_shifo/features/pages/home/presentation/widgets/functionShowDialog.dart';
import 'package:milliy_shifo/features/pages/home/presentation/widgets/popularspecialisations.dart';
import 'package:milliy_shifo/features/pages/home/presentation/widgets/services_widgets.dart';

import '../../../../../../core/utils/mediaquery_meneger.dart';
import '../widgets/doctorcard.dart';
import '../widgets/neardoctors.dart';
import '../widgets/namesofheads.dart';
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
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Hello, Alexander!",
                      style: TextStyle(
                        fontSize: MediaqueryMeneger.fontSize(25),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Notifications(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.add_alert_outlined,
                        color: AppColors.enterButtonBack,
                        size: MediaqueryMeneger.fontSize(30),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search),
                      hintText: "Start typing",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Namesofheads(
                  names: "Coming consultations",
                  alldatabutton: "See all",
                ),
                SizedBox(height: 15),
                Doctorcard(
                  images: "assets/doctors/cardimage.jpg",
                  name: "Dr. John Smith",
                  jobs: "Cardiologist",
                  day: "12 Nov, 12:00 - 12:45 PM",
                  typeofmeeting: "Virtual visit",
                ),
                SizedBox(height: 15,),
                Namesofheads(
                  names: "Popular specialisations",
                  alldatabutton: "See all",
                ),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                Popularspecialisations( icones: Icons.ac_unit_sharp,
                  jobs: "Neurosurgeon",
                  numdoctors: "21 doctors",
                  linkpages: Doctorspage(),),
               Popularspecialisations( icones: Icons.access_time_rounded,
                  jobs: "Pulmonologist",
                  numdoctors: "19 doctors ",
                  linkpages: Doctorspage(),),
                Popularspecialisations(
                  icones: Icons.add_card,
                  jobs: "Gastroenterologist",
                  numdoctors: "8 doctors ",
                  linkpages: Doctorspage(),
                ),
                Popularspecialisations(
                  icones: Icons.adb_sharp,
                  jobs: "Cardiologist",
                  numdoctors: "15 doctors ",
                  linkpages: Doctorspage(),
                ),
                ],
              ),
                SizedBox(height: 15,),
                Namesofheads(
                  names: "Doctors near you",
                  alldatabutton: "See all",
                ),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    Neardoctors(
                      images: "assets/doctors/doctorimage.jpg",
                      name: "Dr. Mia Miller",
                      jobs: "Neurologist",
                      stars: "5.0",
                    ),
                    Neardoctors(
                      images: "assets/doctors/doctorimagetwo.png",
                      name: "Dr. Norah Still",
                      jobs: "Cardiologist",
                      stars: "4.9",
                    ),
                    Neardoctors(
                      images: "assets/doctors/doctorimagethree.png",
                      name: "Dr. Helena Fox",
                      jobs: "Radiologist",
                      stars: "4.8",
                    ),
                    Neardoctors(
                      images: "assets/doctors/doctorimagefour.jpg",
                      name: "Dr. Andrew Miller",
                      jobs: "Neurologist",
                      stars: "5.0",
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                 Text(
                  "Services",
                  style: TextStyle(
                    fontSize: MediaqueryMeneger.fontSize(20),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () => showMyDialog(
                    context,
                    "Appointments",
                    "Book and manage your medical appointments easily. Choose a time slot, select a doctor, and confirm your visit — all in one place.",
                  ),
                  child: ServicesWidgets(
                    icones: Icons.schedule,
                    jobs: "Appointments",
                    numdoctors: "↗️",
                  ),
                ),
                GestureDetector(
                  onTap: () => showMyDialog(
                    context,
                    "Vaccination Calendar",
                    "Stay on track with your immunization schedule. View upcoming vaccine dates and get reminders for your next dose.",
                  ),
                  child: ServicesWidgets(
                    icones: Icons.calendar_month_sharp,
                    jobs: "Vaccination calendar",
                    numdoctors: "↗️",
                  ),
                ),
                GestureDetector(
                  onTap: () => showMyDialog(
                    context,
                    "FAQ",
                    "Find quick answers to the most common questions about appointments, vaccinations, and using the app effectively.",
                  ),
                  child: ServicesWidgets(
                    icones: Icons.help_outline,
                    jobs: "FAQ",
                    numdoctors: "↗️",
                  ),
                ),
                GestureDetector(
                  onTap: () => showMyDialog(
                    context,
                    "Support Chat",

                    "Need help? Our support team is ready to assist you with any issues or questions you may have. Start a chat now!",
                  ),
                  child: ServicesWidgets(
                    icones: Icons.chat,
                    jobs: "Support chat",
                    numdoctors: "↗️",
                  ),
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
