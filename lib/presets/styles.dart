import 'package:flutter/material.dart';

class AppStyles {
  // BORDER RADIUS
  static const BorderRadius borderRadiusBottom = BorderRadius.only(
    bottomLeft: Radius.circular(5),
    bottomRight: Radius.circular(5),
  );

  static const BorderRadius borderRadiusTop = BorderRadius.only(
    topLeft: Radius.circular(5),
    topRight: Radius.circular(5),
  );

  static const BorderRadius borderRadiusAll = BorderRadius.all(
    Radius.circular(5),
  );

  // MARGIN AND PADDING
  static const EdgeInsets edgeInsetsLR = EdgeInsets.only(left: 15, right: 15);
}
