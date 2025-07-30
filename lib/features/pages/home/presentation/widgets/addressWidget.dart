import 'package:flutter/material.dart';

class AddressWidget extends StatelessWidget {
  final String hospitalLoc;
  final String location;
  final int phone;

  const AddressWidget({super.key, required this.hospitalLoc, required this.location, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "Manzil",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Icon(Icons.local_hospital_outlined),
              SizedBox(width: 5),
              Text(hospitalLoc),
            ],
          ),
          Row(
            children: [
              Icon(Icons.location_on),
              SizedBox(width: 5),
              Text(location),
            ],
          ),
          Row(
            children: [
              Icon(Icons.phone),
              SizedBox(width: 5),
              Text("+$phone"),
            ],
          ),
        ],
      ),
    );
  }
}
