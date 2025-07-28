import 'package:flutter/material.dart';

import '../../../../../../../core/utils/app_colors.dart';
class NotificationWidget extends StatelessWidget {
  final IconData icons;
  final String title;
  final String subtitle;

  const NotificationWidget({
    super.key,
    required this.icons,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: AppColors.enterButtonBack,
        child: Icon(icons, color: AppColors.enterButtonText),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(fontSize: 15),
      ),
    );
  }
}
