import 'package:flutter/material.dart';

class CustomBoxShadow {
  BoxShadow boxShadow({
    Color color = Colors.black26,
    double blurRadius = 10,
    double dx = 0,
    double dy = 5,
  }) {
    return BoxShadow(
      color: color,
      blurRadius: blurRadius,
      offset: Offset(dx, dy),
    );
  }
}
