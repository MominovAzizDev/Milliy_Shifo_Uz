import 'package:flutter/material.dart';

class Infowidget extends StatelessWidget {
  final int workExperience;
  final int patient;
  final String language;

  const Infowidget({super.key, required this.workExperience, required this.patient, required this.language});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Ma'lumotlar",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Icon(Icons.schedule),
              SizedBox(width: 5,),
              Text("$workExperience yil tajriba"),
            ],
          ),
          Row(
            children: [
              Icon(Icons.person),
              SizedBox(width: 5,),
              Text("$patient+ bemor"),
            ],
          ),
          Row(
            children: [
              Icon(Icons.language),
              SizedBox(width: 5,),
              Text(language),
            ],
          ),
        ],
      ),
    );
  }
}
