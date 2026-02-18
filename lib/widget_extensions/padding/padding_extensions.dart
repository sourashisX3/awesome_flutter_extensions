import 'package:flutter/widgets.dart';

extension PaddingExtensions on Widget {
  /// padding on `All Sides`
  Widget paddingAll(double value) =>
      Padding(padding: EdgeInsets.all(value), child: this);

  /// padding on `Horizontal Sides`
  Widget paddingHorizontal(double value) => Padding(
    padding: EdgeInsets.symmetric(horizontal: value),
    child: this,
  );

  /// padding on `Vertical Sides`
  Widget paddingVertical(double value) => Padding(
    padding: EdgeInsets.symmetric(vertical: value),
    child: this,
  );

  /// padding on `Left Side`
  Widget paddingLeft(double value) => Padding(
    padding: EdgeInsets.only(left: value),
    child: this,
  );

  /// padding on `Right Side`
  Widget paddingRight(double value) => Padding(
    padding: EdgeInsets.only(right: value),
    child: this,
  );

  /// padding on `Top Side`
  Widget paddingTop(double value) => Padding(
    padding: EdgeInsets.only(top: value),
    child: this,
  );

  /// padding on `Bottom Side`
  Widget paddingBottom(double value) => Padding(
    padding: EdgeInsets.only(bottom: value),
    child: this,
  );

  /// padding on `Only`
  Widget paddingOnly({
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
  }) => Padding(
    padding: EdgeInsets.only(
      left: left,
      top: top,
      right: right,
      bottom: bottom,
    ),
    child: this,
  );

  /// padding on `Symmetric`
  Widget paddingSymmetric({double vertical = 0, double horizontal = 0}) =>
      Padding(
        padding: EdgeInsets.symmetric(
          vertical: vertical,
          horizontal: horizontal,
        ),
        child: this,
      );

  /// padding on `FromLTRB`
  Widget paddingFromLTRB(
    double left,
    double top,
    double right,
    double bottom,
  ) => Padding(
    padding: EdgeInsets.fromLTRB(left, top, right, bottom),
    child: this,
  );

  /// padding on `Zero`
  Widget paddingZero() => Padding(padding: EdgeInsets.zero, child: this);
}
