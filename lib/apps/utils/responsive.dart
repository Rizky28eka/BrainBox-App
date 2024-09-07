import 'package:braindbox/apps/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

const double headingFontSize = 26.0;
const double subheadingFontSize = 20.0;
const double bodyFontSize = 16.0;
const double captionFontSize = 12.0;

const TextStyle headingTextStyle = TextStyle(
  fontSize: headingFontSize,
  fontWeight: FontWeight.bold,
  color: primaryColor,
);

const TextStyle subheadingTextStyle = TextStyle(
  fontSize: subheadingFontSize,
  fontWeight: FontWeight.w600,
  color: primaryColor,
);

const TextStyle bodyTextStyle = TextStyle(
  fontSize: bodyFontSize,
  fontWeight: FontWeight.normal,
  color: Colors.black87,
);

const TextStyle captionTextStyle = TextStyle(
  fontSize: captionFontSize,
  fontWeight: FontWeight.normal,
  color: Colors.grey,
);

class ResponsiveUtils extends GetxController {
  static ResponsiveUtils get to => Get.find();


  double get width => Get.size.width;
  double get height => Get.size.height;

  double getWidthPercentage(double percentage) {
    return width * (percentage);
  }

  double getHeightPercentage(double percentage) {
    return height * (percentage);
  }
}
