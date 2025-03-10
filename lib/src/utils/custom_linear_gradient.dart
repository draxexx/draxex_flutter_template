import 'package:flutter/material.dart';

class DraxexLinearGradient {
  final BuildContext context;

  DraxexLinearGradient({required this.context});

  LinearGradient linearGradient({
    AlignmentGeometry begin = Alignment.topCenter,
    AlignmentGeometry end = Alignment.bottomCenter,
    List<Color>? colors,
  }) {
    return LinearGradient(
      begin: begin,
      end: end,
      colors: colors ??
          [
            Theme.of(context).colorScheme.secondary,
            Theme.of(context).colorScheme.primary,
          ],
    );
  }
}
