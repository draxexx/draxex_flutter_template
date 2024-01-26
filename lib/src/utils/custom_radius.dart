import 'package:flutter/material.dart';

class DraxexRadius {
  final double _small = 4;
  final double _medium = 8;
  final double _large = 16;
  final double _large2x = 32;

  BorderRadius get allSmall => BorderRadius.circular(_small);
  BorderRadius get allMedium => BorderRadius.circular(_medium);
  BorderRadius get allLarge => BorderRadius.circular(_large);

  // bottom circular
  BorderRadius get bottomSmall => BorderRadius.only(
        bottomLeft: Radius.circular(_small),
        bottomRight: Radius.circular(_small),
      );
  BorderRadius get bottomMedium => BorderRadius.only(
        bottomLeft: Radius.circular(_medium),
        bottomRight: Radius.circular(_medium),
      );
  BorderRadius get bottomLarge => BorderRadius.only(
        bottomLeft: Radius.circular(_large),
        bottomRight: Radius.circular(_large),
      );

  // top circular
  BorderRadius get topSmall => BorderRadius.only(
        topLeft: Radius.circular(_small),
        topRight: Radius.circular(_small),
      );
  BorderRadius get topMedium => BorderRadius.only(
        topLeft: Radius.circular(_medium),
        topRight: Radius.circular(_medium),
      );
  BorderRadius get topLarge => BorderRadius.only(
        topLeft: Radius.circular(_large),
        topRight: Radius.circular(_large),
      );
  BorderRadius get topLarge2x => BorderRadius.only(
        topLeft: Radius.circular(_large2x),
        topRight: Radius.circular(_large2x),
      );
}
