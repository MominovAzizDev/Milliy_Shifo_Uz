import 'package:flutter/material.dart';

import '../../../../../../../core/utils/app_colors.dart';


class Namesofheads extends StatelessWidget {
  final String names;
  final String alldatabutton;

  const Namesofheads({
    super.key,
    required this.names,
    required this.alldatabutton,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          names,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            alldatabutton,
            style: TextStyle(
              color: AppColors.enterButtonBack,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
