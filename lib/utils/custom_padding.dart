import 'package:flutter/material.dart';

class CustomPadding {
  final double small = 4;
  final double medium = 8;
  final double large = 16;
  final double large2x = 32;

  // all
  EdgeInsets get allMedium => EdgeInsets.all(medium);
  EdgeInsets get allLarge => EdgeInsets.all(large);

  // symmetric
  EdgeInsets get symmetricMedium =>
      EdgeInsets.symmetric(horizontal: medium, vertical: small);
  EdgeInsets get symmetricLarge =>
      EdgeInsets.symmetric(horizontal: large, vertical: medium);
  EdgeInsets get symmetricLarge2x =>
      EdgeInsets.symmetric(horizontal: large2x, vertical: large2x);

  // horizontal
  EdgeInsets get horizontalMedium => EdgeInsets.symmetric(horizontal: medium);
  EdgeInsets get horizontalLarge => EdgeInsets.symmetric(horizontal: large);

  // vertical
  EdgeInsets get verticalSmall => EdgeInsets.symmetric(vertical: small);
  EdgeInsets get verticalMedium => EdgeInsets.symmetric(vertical: medium);
  EdgeInsets get verticalLarge => EdgeInsets.symmetric(vertical: large);

  // right
  EdgeInsets get rightSmall => EdgeInsets.only(right: small);
  EdgeInsets get rightMedium => EdgeInsets.only(right: medium);
  EdgeInsets get rightLarge => EdgeInsets.only(right: large);

  // bottom
  EdgeInsets get bottomSmall => EdgeInsets.only(bottom: small);
  EdgeInsets get bottomMedium => EdgeInsets.only(bottom: medium);
  EdgeInsets get bottomLarge => EdgeInsets.only(bottom: large);

  // except bottom
  EdgeInsets get exceptBottomSmall =>
      EdgeInsets.only(top: small, right: small, left: small);
  EdgeInsets get exceptBottomMedium =>
      EdgeInsets.only(top: medium, right: medium, left: medium);
  EdgeInsets get exceptBottomLarge =>
      EdgeInsets.only(top: large, right: large, left: large);

  // except top
  EdgeInsets get exceptTopSmall =>
      EdgeInsets.only(bottom: small, right: small, left: small);
  EdgeInsets get exceptTopMedium =>
      EdgeInsets.only(bottom: medium, right: medium, left: medium);
  EdgeInsets get exceptTopLarge =>
      EdgeInsets.only(bottom: large, right: large, left: large);
}
