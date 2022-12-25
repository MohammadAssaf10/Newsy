import 'package:flutter/material.dart';

import 'font_manager.dart';

TextStyle _getTextStyle(
    double fontSize, FontWeight fontWeight, Color color, String fontFamily) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      color: color,
      fontWeight: fontWeight);
}

// raleway regular style
TextStyle getRalewayRegularStyle(
    {required double fontSize, required Color color}) {
  return _getTextStyle(
      fontSize, FontWeightManager.regular, color, FontConstants.ralewayFamily);
}

// josefinSans semi bold style
TextStyle getJosefinSansSemiBoldStyle(
    {required double fontSize, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.semiBold, color,
      FontConstants.josefinSansSemiBoldFamily);
}
// josefinSans bold style
TextStyle getJosefinSansBoldStyle(
    {required double fontSize, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.bold, color,
      FontConstants.josefinSansBoldFamily);
}
