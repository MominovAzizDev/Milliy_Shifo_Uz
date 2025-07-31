import 'package:flutter/material.dart';

class Ambulance extends StatelessWidget {
  const Ambulance({super.key});
  @override
  Widget build(BuildContext context) {
    Color white = Colors.white;
    return Card(
      color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Shoshilinch yordam",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.phone),
                  color: Colors.white,
                ),
              ],
            ),
            Text("24/7 xizmat", style: TextStyle(color: Colors.white)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  label: const Text(
                    "103 qo'ng'iroq",
                    style: TextStyle(color: Colors.red),
                  ),
                  style: ElevatedButton.styleFrom(
                    maximumSize: Size(130, 80),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: () {},
                ),

                ElevatedButton.icon(
                  label: const Text(
                    "Joylashuv yuborish",
                    style: TextStyle(color: Colors.red),
                  ),
                  style: ElevatedButton.styleFrom(
                    maximumSize: Size(130, 80),
                    backgroundColor: Colors.white.withOpacity(0.6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
