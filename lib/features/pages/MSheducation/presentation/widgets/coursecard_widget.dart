import 'package:flutter/material.dart';

class CoursecardWidget extends StatelessWidget {
  final String title;
  final String price;
  final String rating;
  final String students;

  const CoursecardWidget({
    required this.title,
    required this.price,
    required this.rating,
    required this.students,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 6,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                image: AssetImage('assets/logos/onlayn.png'),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.center,
          ),
          const SizedBox(height: 8),
          const Text(
            'Graphic Design',
            style: TextStyle(color: Colors.orange, fontSize: 12),
          ),
          const SizedBox(height: 4),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Row(
            children: [
              Text(price, style: const TextStyle(color: Colors.blue)),
              const SizedBox(width: 6),
              const Icon(Icons.star, size: 14, color: Colors.amber),
              Text(rating),
            ],
          ),
          const SizedBox(width: 6),
              Text(students, style: const TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}