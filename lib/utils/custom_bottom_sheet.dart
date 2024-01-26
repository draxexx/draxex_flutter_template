import 'package:draxex_flutter_template/utils/custom_padding.dart';
import 'package:draxex_flutter_template/utils/custom_radius.dart';
import 'package:draxex_flutter_template/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomSheet {
  final BuildContext context;

  CustomBottomSheet({required this.context});

  void showCustomBottomSheet(Widget child,
      {bool ignoreSafeArea = true,
      bool isScrollControlled = true,
      bool isDismissible = true,
      Color? backgroundColor}) {
    Get.bottomSheet(
      ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: Get.height * .8,
        ),
        child: Container(
          width: SizeConfig.screenWidth,
          padding: CustomPadding().symmetricLarge2x,
          decoration: BoxDecoration(
            borderRadius: CustomRadius().topLarge2x,
            color: backgroundColor ?? Theme.of(context).colorScheme.background,
          ),
          child: SingleChildScrollView(child: child),
        ),
      ),
      ignoreSafeArea: ignoreSafeArea,
      isScrollControlled: isScrollControlled,
      isDismissible: isDismissible,
    );
  }
}
