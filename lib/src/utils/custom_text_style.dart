import 'package:flutter/material.dart';

class DraxexTextStyle {
  final BuildContext context;

  DraxexTextStyle(this.context);

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
