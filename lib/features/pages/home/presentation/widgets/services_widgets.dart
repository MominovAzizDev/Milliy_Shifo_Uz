import 'package:flutter/material.dart';
import 'package:milliy_shifo/core/utils/app_colors.dart';
class ServicesWidgets extends StatelessWidget {
  final IconData icones;
  final String jobs;
  final String numdoctors;

  const ServicesWidgets({
    super.key,
    required this.icones,
    required this.jobs,
    required this.numdoctors,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icones, color: AppColors.enterButtonBack),
        title: Text(
          jobs,
          style: TextStyle(fontSize: 18),
        ),
        trailing: Text(
          numdoctors,
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}
