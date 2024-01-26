import 'package:draxex_flutter_template/src/utils/custom_box_shadow.dart';
import 'package:draxex_flutter_template/src/utils/custom_linear_gradient.dart';
import 'package:draxex_flutter_template/src/utils/size_config.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.child,
    this.width = .7,
    this.marginTop = 60,
    this.borderRadius = 30,
  });

  final Widget child;
  final double width, marginTop, borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marginTop),
      width: SizeConfig.screenWidth! * width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        gradient: CustomLinearGradient(context: context).linearGradient(),
        boxShadow: [
          CustomBoxShadow().boxShadow(),
        ],
      ),
      child: child,
    );
  }
}
