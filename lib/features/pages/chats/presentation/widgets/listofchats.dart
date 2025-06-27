import 'package:flutter/material.dart';

class Listofchats extends StatelessWidget {
  final String names;
  final String surename;
  final Widget linkofpage;

  const Listofchats({
    super.key,
    required this.names,
    required this.surename,
    required this.linkofpage,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => linkofpage),
        );
      },
      child: ListTile(
        leading: CircleAvatar(radius: 30, backgroundImage: AssetImage("assets/doctors/cardimage.jpg")),
        title: Text(names),
        subtitle: Text(surename),
      ),
    );
  }
}
