import 'package:flutter/material.dart';
import 'package:milliy_shifo/core/utils/app_colors.dart';

class OutlineButtonPage extends StatelessWidget {
  final String label;
  final VoidCallback onpressed;

  const OutlineButtonPage({
    super.key,
    required this.label,
    required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      onPressed: onpressed,
      child: Text(label, style: TextStyle(color: AppColors.enterButtonBack)),
    );
  }
}
