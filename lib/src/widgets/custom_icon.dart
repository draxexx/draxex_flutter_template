import 'package:flutter/material.dart';

class DraxexIcon extends StatelessWidget {
  const DraxexIcon({
    super.key,
    required this.icon,
    this.color,
    this.size = 20,
    this.onTap,
  });

  final IconData icon;
  final Color? color;
  final double size;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        icon,
        color: color ?? Theme.of(context).colorScheme.surface,
        size: size,
      ),
    );
  }
}
