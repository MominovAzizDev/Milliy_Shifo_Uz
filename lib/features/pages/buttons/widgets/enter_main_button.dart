import 'package:flutter/material.dart';
import 'package:milliy_shifo/core/utils/app_colors.dart';

class EnterMainButtonPage extends StatelessWidget {
  final String labels;
  final VoidCallback onPressed;

  const EnterMainButtonPage({
    super.key,
    required this.labels,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.enterButtonBack,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      onPressed: onPressed,
      child: Text(
        labels,
        style: TextStyle(
          fontSize: 15,
          color: AppColors.enterButtonText,
        ),
      ),
    );
  }
}
