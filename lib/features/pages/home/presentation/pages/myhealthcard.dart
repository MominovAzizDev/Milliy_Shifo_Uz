import 'package:flutter/material.dart';

class Myhealthcard extends StatelessWidget {
  const Myhealthcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 173, 145, 252),
      child: Column(
        children: [
          ListTile(
            title: Text("Sog'lik holatim", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),),
            subtitle: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite_border, color: Colors.red,),
                    SizedBox(width: 5,),
                    Text("Yurak urishi: 72 bpm", style: TextStyle(color: Colors.white,),)
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.thermostat, color: Colors.yellow,),
                    SizedBox(width: 5,),
                    Text("Harorat: 36.6°C", style: TextStyle(color: Colors.white),)
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.water_drop_outlined, color: Colors.blue,),
                    SizedBox(width: 5,),
                    Text("Bosim: 120/80", style: TextStyle(color: Colors.white),)
                  ],
                ),
              ],
            ),
            trailing: Icon(Icons.energy_savings_leaf_sharp, color: Colors.white,),
          )
        ],
      ),
    );
  }
}