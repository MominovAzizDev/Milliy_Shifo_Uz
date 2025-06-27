import 'package:flutter/material.dart';
import 'package:milliy_shifo/core/utils/app_colors.dart';
import 'package:milliy_shifo/core/utils/mediaquery_meneger.dart';

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
    MediaqueryMeneger.init(context);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.enterButtonBack,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      onPressed: onPressed,
      child: Text(
        labels,
        style: TextStyle(
          fontSize: MediaqueryMeneger.fontSize(15),
          color: AppColors.enterButtonText,
        ),
      ),
    );
  }
}
