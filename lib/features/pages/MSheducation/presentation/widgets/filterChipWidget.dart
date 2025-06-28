import 'package:flutter/material.dart';

class FilterChipWidget extends StatelessWidget {
  final String label;
  final bool selected;

  const FilterChipWidget({
    required this.label,
    required this.selected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: selected ? Colors.green : Colors.white,
      labelStyle: TextStyle(color: selected ? Colors.white : Colors.black),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: selected ? Colors.green : Colors.grey.shade300),
      ),
    );
  }
}