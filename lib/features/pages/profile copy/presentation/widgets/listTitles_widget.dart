import 'package:flutter/material.dart';
import 'package:milliy_shifo/core/utils/app_colors.dart';

class ListtitlesWidget extends StatelessWidget {
  final IconData icons;
  final String names;
  final VoidCallback onTap;

  const ListtitlesWidget({
    super.key,
    required this.icons,
    required this.names,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        leading: Icon(icons, color: AppColors.enterButtonBack),
        title: Text(names, style: TextStyle(fontSize: 20)),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
