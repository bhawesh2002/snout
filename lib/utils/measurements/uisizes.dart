import 'package:flutter/material.dart';

class UiSizes {
  static late double _width;
  static late double _height;

  void init(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;
    debugPrint('UiSizes.init(): Height: $height, Width: $width');
  }

  double get width => _width;
  double get height => _height;
}
