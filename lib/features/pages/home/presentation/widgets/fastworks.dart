import 'package:flutter/material.dart';

class Fastworks extends StatelessWidget {
  final String title;
  final String bottomtext;
  final IconData icontext;
  final Color iconcolor;
  final Color backColor;

  Fastworks({
    super.key,
    required this.title,
    required this.bottomtext,
    required this.icontext,
    required this.iconcolor,
    required this.backColor
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backColor,
      child: Container(
        margin: EdgeInsets.only(top: 15, bottom: 15, left: 10,right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icontext, color: iconcolor,size: 20,),
            Text(
              title,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Text(bottomtext, style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
