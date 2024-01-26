import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.icon,
    this.color,
    this.size = 20,
  });

  final IconData icon;
  final Color? color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: color ?? Theme.of(context).colorScheme.surface,
      size: size,
    );
  }
}
