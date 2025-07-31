import 'package:flutter/material.dart';

class Healthadvice extends StatelessWidget {
  final String advice;
  final int drinkeWater;
  final int sleeping;
  const Healthadvice({
    super.key,
    required this.advice,
    required this.drinkeWater,
    required this.sleeping,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.health_and_safety_outlined, color: Colors.white),
                SizedBox(width: 5),
                Text(
                  "Kundalik sog'liq maslahati ",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
            Text(advice, style: TextStyle(color: Colors.white)),
            Row(
              children: [
                Icon(Icons.water_drop, color: Colors.white),
                SizedBox(width: 5),
                Text(
                  "$drinkeWater L suv iching",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 10),
                Icon(Icons.watch_later_outlined, color: Colors.white),
                SizedBox(width: 5),
                Text(
                  "$sleeping soat uxlang",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
