import 'package:flutter/material.dart';
import 'package:milliy_shifo/features/pages/doctors/domain/entities/doctor_model.dart';

class CardofdoctorsWidgets extends StatelessWidget {
  final String fullnames;
  final String place;
  final VoidCallback? onTap;
  final DoctorModel? doctor;

  const CardofdoctorsWidgets({
    super.key,
    required this.fullnames,
    required this.place,
    required this.doctor,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset("assets/doctors/cardimage.jpg"),
        title: Text(fullnames),
        subtitle: Text(place),
        trailing: ElevatedButton(onPressed: (){
          Navigator.pop(context,doctor);
        }, child:Text("Booking")),
      ),
    );
  }
}
