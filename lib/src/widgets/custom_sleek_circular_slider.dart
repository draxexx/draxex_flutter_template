import 'package:draxex_flutter_template/src/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class CustomSleekCircularSlider extends StatelessWidget {
  const CustomSleekCircularSlider({
    super.key,
    required this.initialValue,
    this.min = 0,
    this.max = 100,
    this.size = 90,
    this.trackColor,
    this.progressBarColor,
    this.dotColor,
    this.trackWidth = 15,
    this.progressBarWidth = 10,
  });

  final double initialValue, size, trackWidth, progressBarWidth, min, max;
  final Color? trackColor, progressBarColor, dotColor;

  @override
  Widget build(BuildContext context) {
    return SleekCircularSlider(
      initialValue: initialValue,
      min: min,
      max: max,
      appearance: CircularSliderAppearance(
        size: getProportionateScreenWidth(size),
        startAngle: 100,
        angleRange: 360,
        customColors: CustomSliderColors(
          trackColor: trackColor ?? Theme.of(context).colorScheme.tertiary,
          progressBarColor:
              progressBarColor ?? Theme.of(context).colorScheme.primary,
          dotColor: dotColor ?? Theme.of(context).colorScheme.tertiary,
        ),
        customWidths: CustomSliderWidths(
          trackWidth: trackWidth,
          progressBarWidth: progressBarWidth,
        ),
        infoProperties: InfoProperties(
          mainLabelStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(context).colorScheme.tertiary,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
