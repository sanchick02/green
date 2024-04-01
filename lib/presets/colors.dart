import 'package:flutter/material.dart';

class AppColor {
  static Color backgroundColor = Color.fromARGB(255, 220, 242, 220);
  static Color fontColorPrimary = const Color(0xff252525);
  static Color fontColorSecondary = const Color(0xffFFFFFF);

  static Color btnColorPrimary = const Color(0xff589BFF);
  static Color btnColorSecondary = const Color(0xffFFFFFF);
  static Color lightGrey = const Color(0xff252525).withOpacity(0.1);
  static Color extraLightGrey = const Color(0xff252525).withOpacity(0.05);

  static Color switchColor = const Color(0xff71BE86);
  static Color switchOffColor = const Color(0xff000000).withOpacity(0.25);
  // static Color navBarBottom = const Color(0xff6456FF);

  static LinearGradient whiteGradient() {
    return LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      colors: [
        Colors.white.withOpacity(1.0),
        Colors.white.withOpacity(0.7),
        Colors.white.withOpacity(0.1),
      ],
    );
  }

  static LinearGradient whiteGradient2() {
    return LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      colors: [
        Colors.white.withOpacity(0.9),
        Colors.white.withOpacity(0.3),
        Colors.white.withOpacity(0.1),
      ],
    );
  }

  static LinearGradient blackGradient() {
    return LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      colors: [
        Colors.black.withOpacity(0.6),
        Colors.black.withOpacity(0.1),
        Colors.black.withOpacity(0.0),
      ],
    );
  }

  static LinearGradient blackGradient2() {
    return LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      colors: [
        Colors.black.withOpacity(0.9),
        Colors.black.withOpacity(0.4),
        Colors.black.withOpacity(0.0),
      ],
    );
  }
}
