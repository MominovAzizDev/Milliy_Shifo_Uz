import 'package:flutter/material.dart';

import '../../../../../../../core/utils/app_colors.dart';
import '../../../../../../../core/utils/mediaquery_meneger.dart';

class Neardoctors extends StatelessWidget {
  final String images;
  final String name;
  final String jobs;
  final String stars;

  const Neardoctors({
    super.key,
    required this.images,
    required this.name,
    required this.jobs,
    required this.stars,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 165,
          height: 250,
          child: Card(
            surfaceTintColor: AppColors.wordColor,
            child: Column(
              children: [
                CircleAvatar(radius: 80, backgroundImage: AssetImage(images)),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: MediaqueryMeneger.fontSize(16),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  jobs,
                  style: TextStyle(fontSize: MediaqueryMeneger.fontSize(15)),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 130,
          left: 110,
          child: Column(
            children: [
              Card(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star, color: AppColors.enterButtonBack),
                    Text(
                      stars,
                      style: TextStyle(
                        fontSize: MediaqueryMeneger.fontSize(15),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 210,
          left: 60,
          child: Column(
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: AppColors.enterButtonBack,
                ),
                onPressed: () {},
                child: Icon(
                  Icons.arrow_upward_outlined,
                  color: AppColors.backColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
