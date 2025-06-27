import 'package:flutter/cupertino.dart';

class MediaqueryMeneger {
  static late MediaQueryData mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double safeAreaHorizontal;
  static late double safeAreaVertical;
  static late double safeAreaTop;
  static late double safeAreaBottom;

  static void init(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData.size.width;
    screenHeight = mediaQueryData.size.height;
    safeAreaHorizontal =
        mediaQueryData.padding.left + mediaQueryData.padding.right;
    safeAreaVertical =
        mediaQueryData.padding.top + mediaQueryData.padding.bottom;
    safeAreaTop = mediaQueryData.padding.top;
    safeAreaBottom = mediaQueryData.padding.bottom;
  }

  static double width(double percentage) {
    return screenWidth * (percentage / 100);
  }

  static double height(double percentage) {
    return screenHeight * (percentage / 100);
  }

  static double fontSize(double size) {
    return screenWidth * (size / 375);
  }

  static bool isLandscape() {
    return mediaQueryData.orientation == Orientation.landscape;
  }

  static double safeWidth(double percentage) {
    return (screenWidth - safeAreaHorizontal) * (percentage / 100);
  }

  static double safeHeight(double percentage) {
    return (screenHeight - safeAreaVertical) * (percentage / 100);
  }
}
