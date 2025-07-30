import 'package:flutter/material.dart';

class Doctorcard extends StatelessWidget {
  final String images;
  final String name;
  final String jobs;
  final String day;
  // uchrashuv turi
  final String typeofmeeting;
  // yozuv joyi 
  final String typeplace;
  final String time;

  const Doctorcard({
    super.key,
    required this.images,
    required this.name,
    required this.jobs,
    required this.day,
    required this.typeofmeeting,
    required this.typeplace,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: Card(
        color: Colors.white,
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                maxRadius: 40,
                backgroundImage: AssetImage(images),
              ),
              title: Text(name, style: TextStyle(fontSize: 20)),
              subtitle: Text(jobs, style: TextStyle(fontSize: 15)),
              trailing: Text(typeplace, style: TextStyle(color: Colors.blue)),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      SizedBox(width: 5),
                      Text(typeofmeeting, style: TextStyle(fontSize: 15)),
                    ],
                  ),
                  SizedBox(width: 15),
                  Row(
                    children: [
                      Icon(Icons.person, color: Colors.black),
                      SizedBox(width: 5),
                      Text(day, style: TextStyle(fontSize: 13)),
                    ],
                  ),
                  SizedBox(width: 15),
                  Row(
                    children: [
                      Icon(Icons.watch_later_outlined, color: Colors.blueGrey),
                      SizedBox(width: 5),
                      Text(time, style: TextStyle(fontSize: 15)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
