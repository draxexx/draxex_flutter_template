import 'package:flutter/material.dart';

class CustomTextStyle {
  final BuildContext context;

  CustomTextStyle(this.context);

  TextStyle style({
    required double fontSize,
    Color? color,
    FontWeight fontWeight = FontWeight.w400,
  }) {
    return TextStyle(
      fontSize: fontSize,
      color: color ?? Theme.of(context).primaryColor,
      fontWeight: fontWeight,
    );
  }
}
