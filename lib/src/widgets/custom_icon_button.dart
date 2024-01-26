import 'package:draxex_flutter_template/src/widgets/custom_icon.dart';
import 'package:flutter/material.dart';

class DraxexIconButton extends StatelessWidget {
  const DraxexIconButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.color,
  });

  final IconData icon;
  final void Function()? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: DraxexIcon(
        icon: icon,
        color: color,
      ),
    );
  }
}
