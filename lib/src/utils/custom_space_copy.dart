import 'package:draxex_flutter_template/src/constants/enums/size_enum.dart';
import 'package:draxex_flutter_template/src/constants/enums/space_enum.dart';
import 'package:flutter/material.dart';

class DraxexSpaceCopy {
  final AppSize appSize;
  final Space spaceType;

  DraxexSpaceCopy(this.spaceType, this.appSize);

  EdgeInsets get space {
    final value = _size;

    switch (spaceType) {
      case Space.all:
        return EdgeInsets.all(value);
      case Space.horizontal:
        return EdgeInsets.symmetric(horizontal: value);
      case Space.vertical:
        return EdgeInsets.symmetric(vertical: value);
      case Space.symmetric:
        return EdgeInsets.symmetric(horizontal: value, vertical: value);
      case Space.top:
        return EdgeInsets.only(top: value);
      case Space.bottom:
        return EdgeInsets.only(bottom: value);
      case Space.left:
        return EdgeInsets.only(left: value);
      case Space.right:
        return EdgeInsets.only(right: value);
      case Space.left_side:
        return EdgeInsets.only(top: value, bottom: value, left: value);
      case Space.right_side:
        return EdgeInsets.only(top: value, bottom: value, right: value);
      default:
        return EdgeInsets.all(value);
    }
  }

  double get _size {
    switch (appSize) {
      case AppSize.tiny:
        return TINY;
      case AppSize.small:
        return SMALL;
      case AppSize.medium:
        return MEDIUM;
      case AppSize.large:
        return LARGE;
      case AppSize.large2x:
        return LARGE2x;
      case AppSize.enormous:
        return ENORMOUS;
      default:
        return MEDIUM;
    }
  }
}
