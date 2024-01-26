import 'package:flutter/material.dart';

class DraxexText extends StatelessWidget {
  const DraxexText({
    super.key,
    required this.text,
    this.style,
    this.textAlign = TextAlign.start,
  });

  final String text;
  final TextStyle? style;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ?? Theme.of(context).textTheme.bodyMedium!,
      textAlign: textAlign,
    );
  }
}
