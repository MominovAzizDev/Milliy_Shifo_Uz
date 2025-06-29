import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecordscardWidget extends StatelessWidget {
  final String title;
  final String image;

  const RecordscardWidget({
    super.key,
    required this.title,
    required this.image,
  });

  bool get isSvg => image.toLowerCase().endsWith('.svg');

  @override
  Widget build(BuildContext context) {
    final Widget imageWidget = isSvg
        ? SvgPicture.asset(
            image,
            height: 50,
            width: 50,
            fit: BoxFit.cover,
            color: Colors.blueGrey,
          )
        : Image.asset(
            image,
            height: 50,
            width: 50,
            fit: BoxFit.cover,
            color: Colors.blueGrey,
          );

    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: imageWidget,
            ),
            SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
