import 'package:draxex_flutter_template/widgets/custom_icon.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
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
      child: CustomIcon(
        icon: icon,
        color: color,
      ),
    );
  }
}
