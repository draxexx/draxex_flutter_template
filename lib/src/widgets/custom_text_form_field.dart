import 'package:flutter/material.dart';
import 'package:draxex_flutter_template/src/constants/enums/size_enum.dart';
import 'package:draxex_flutter_template/src/constants/enums/space_enum.dart';
import 'package:draxex_flutter_template/src/utils/custom_space_copy.dart';
import 'package:draxex_flutter_template/src/widgets/custom_icon.dart';
import 'package:draxex_flutter_template/src/widgets/custom_text.dart';

class DraxexTextFormField extends StatelessWidget {
  const DraxexTextFormField({
    super.key,
    required this.label,
    this.controller,
    this.initialValue,
    this.focusNode,
    this.nextFocusNode,
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.textInputAction,
    this.margin,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.onTapSuffixIcon,
  });

  final TextEditingController? controller;
  final String? initialValue;
  final FocusNode? focusNode, nextFocusNode;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final TextInputAction? textInputAction;
  final EdgeInsets? margin;
  final String label;
  final IconData? prefixIcon, suffixIcon;
  final bool obscureText;
  final void Function()? onTapSuffixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? DraxexSpaceCopy(Space.vertical, AppSize.medium).space,
      child: TextFormField(
        controller: controller,
        initialValue: initialValue,
        focusNode: focusNode,
        onFieldSubmitted: (_) {
          if (nextFocusNode != null) {
            FocusScope.of(context).requestFocus(nextFocusNode);
          }
        },
        decoration: InputDecoration(
          label: DraxexText(
            text: label,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color:
                    Theme.of(context).inputDecorationTheme.labelStyle!.color),
          ),
          prefixIcon: prefixIcon != null ? DraxexIcon(icon: prefixIcon!) : null,
          suffixIcon: suffixIcon != null
              ? DraxexIcon(icon: suffixIcon!, onTap: onTapSuffixIcon)
              : null,
        ),
        keyboardType: keyboardType,
        textCapitalization: textCapitalization,
        textInputAction: textInputAction,
        obscureText: obscureText,
      ),
    );
  }
}
