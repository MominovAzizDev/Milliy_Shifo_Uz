import 'package:flutter/material.dart';
import 'package:milliy_shifo/features/pages/doctors/domain/entities/doctor_model.dart';
import 'package:milliy_shifo/features/pages/doctors/presentation/widgets/cardofdoctors_widgets.dart';

class Doctorspage extends StatefulWidget {
  const Doctorspage({super.key});

  @override
  State<Doctorspage> createState() => _DoctorspageState();
}

class _DoctorspageState extends State<Doctorspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Doctors"),
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: [
          CardofdoctorsWidgets(
            fullnames: "Dilshod Karimov",
            place: "Urganch, Xorazm viloyati",
            doctor: DoctorModel(name: "Dilshod Karimov", job: "Surgeon"),
          ),
          CardofdoctorsWidgets(
            fullnames: "Malik Yoʻldoshev",
            place: "Gʻijduvon, Buxoro viloyati",
            doctor: DoctorModel(name: "Malik Yoʻldoshev", job: "Surgeon"),
          ),
          CardofdoctorsWidgets(
            fullnames: "Sherzod Tursunov",
            place: "Shahrisabz, Qashqadaryo viloyati",
            doctor: DoctorModel(name: "Sherzod Tursunov", job: "Surgeon"),
          ),
          CardofdoctorsWidgets(
            fullnames: "Nodir Raxmatov",
            place: "Angren, Toshkent viloyati",
            doctor: DoctorModel(name: "Nodir Raxmatov", job: "Surgeon"),
          ),
          CardofdoctorsWidgets(
            fullnames: "Jamshid Islomov",
            place: "Guliston, Sirdaryo viloyati",
            doctor: DoctorModel(name: "Jamshid Islomov", job: "Surgeon"),
          ),
          CardofdoctorsWidgets(
            fullnames: "Sardor Xolmatov",
            place: "Namangan shahri, Namangan viloyati",
            doctor: DoctorModel(name: "Sardor Xolmatov", job: "Surgeon"),
          ),
          CardofdoctorsWidgets(
            fullnames: "Diyorbek Beknazarov",
            place: "Qarshi, Qashqadaryo viloyati",
            doctor: DoctorModel(name: "Diyorbek Beknazarov", job: "Surgeon"),
          ),
          CardofdoctorsWidgets(
            fullnames: "Mirjalol Usmonov",
            place: "Nukus, Qoraqalpogʻiston Respublikasi",
            doctor: DoctorModel(name: "Mirjalol Usmonov", job: "Surgeon"),
          ),
          CardofdoctorsWidgets(
            fullnames: "Sardor Gʻaniyev",
            place: "Fargʻona shahri, Fargʻona viloyati",
            doctor: DoctorModel(name: "Sardor Gʻaniyev", job: "Surgeon"),
          ),
          CardofdoctorsWidgets(
            fullnames: "Ziyodulla Abdumo'minov",
            place: "Andijon shahri, Andijon viloyati",
            doctor: DoctorModel(name: "Ziyodulla Abdumo'minov", job: "Surgeon"),
          ),
          CardofdoctorsWidgets(
            fullnames: "Abbos Bolbekov",
            place: "Jizzax shahri, Jizzax viloyati",
            doctor: DoctorModel(name: "Abbos Bolbekov", job: "Surgeon"),
          ),
          CardofdoctorsWidgets(
            fullnames: "Samandar Saydullayev",
            place: "Xiva shahri,Xorazm viloyati",
            doctor: DoctorModel(name: "Samandar Saydullayev", job: "Surgeon"),
          ),
          CardofdoctorsWidgets(
            fullnames: "Eldor Ravshanov",
            place: "Pop shahri, Andijon viloyati",
            doctor: DoctorModel(name: "Eldor Ravshanov", job: "Surgeon"),
          ),
        ],
      ),
    );
  }
}
