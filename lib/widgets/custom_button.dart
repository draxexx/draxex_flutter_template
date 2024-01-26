import 'package:draxex_flutter_template/utils/size_config.dart';
import 'package:draxex_flutter_template/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.btnHeight = 48,
    this.backgroundColor,
  });

  final void Function()? onPressed;
  final String text;
  final double btnHeight;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateColor.resolveWith((states) {
          return backgroundColor ?? Theme.of(context).colorScheme.primary;
        }),
        minimumSize: MaterialStateProperty.resolveWith((states) {
          return Size.fromHeight(getProportionateScreenWidth(btnHeight));
        }),
      ),
      child: CustomText(
        text: text,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Theme.of(context).colorScheme.background,
              fontWeight: FontWeight.w700,
            ),
      ),
    );
  }
}
