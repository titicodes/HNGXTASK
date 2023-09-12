import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Dimens {
  static Size screenSize = WidgetsBinding.instance.window.physicalSize;
  static double screenWidth = screenSize.width;
  static double screenHeight = screenSize.height;

  static SizedBox boxHeight4 = SizedBox(height: four);
  static SizedBox boxHeight10 = SizedBox(height: ten);
  static SizedBox boxHeight12 = SizedBox(height: twelve);
  static SizedBox boxHeight8 = SizedBox(height: eight);
  static SizedBox boxHeight16 = SizedBox(height: sixTeen);
  static SizedBox boxHeight20 = SizedBox(height: twenty);
  static SizedBox boxHeight30 = SizedBox(height: thirty);

  static SizedBox boxWidth4 = SizedBox(width: four);
  static SizedBox boxWidth12 = SizedBox(width: twelve);
  static SizedBox boxWidth16 = SizedBox(width: sixTeen);

  static EdgeInsets edgeInsetsHorizDefault = EdgeInsets.symmetric(
    vertical: zero,
    horizontal: twelve,
  );

  static EdgeInsets edgeInsets0 = EdgeInsets.zero;
  static EdgeInsets edgeInsets0_12 = EdgeInsets.symmetric(
    vertical: zero,
    horizontal: twelve,
  );

  static EdgeInsets edgeInsets12_0 = EdgeInsets.symmetric(
    vertical: twelve,
    horizontal: zero,
  );
  static EdgeInsets edgeInsets12 = EdgeInsets.all(twelve);
  static EdgeInsets edgeInsets16 = EdgeInsets.all(sixTeen);

  static double zero = 0.r;
  static double four = 4.r;
  static double seven = 7.r;
  static double eight = 8.r;
  static double ten = 10.r;
  static double twelve = 12.r;
  static double sixteen = 16.r;
  static double twenty = 20.r;
  static double thirty = 30.r;
  static double fourty = 40.r;
  static double fourteen = 14.r;
  static double fourtyEight = 48.r;
  static SizedBox shrinkedBox = const SizedBox.shrink();
  static double six = 6.r;
  static double pointEight = 0.8.r;
  static double sixTeen = 16.r;
  static double fiftyFive = 55.r;
  static double fiftyFour = 54.r;
  static double fiftySix = 56.r;
}
