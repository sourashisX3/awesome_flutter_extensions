import 'package:flutter/widgets.dart';

extension MarginExtensions on Widget {
  
  /// margin on `All Sides`
  Widget marginAll(double value) =>
      Container(margin: EdgeInsets.all(value), child: this);

  /// margin on `Horizontal Sides`
  Widget marginHorizontal(double value) => Container(
    margin: EdgeInsets.symmetric(horizontal: value),
    child: this,
  );

  /// margin on `Vertical Sides`
  Widget marginVertical(double value) => Container(
    margin: EdgeInsets.symmetric(vertical: value),
    child: this,
  );

  /// margin on `Left Side`
  Widget marginLeft(double value) => Container(
    margin: EdgeInsets.only(left: value),
    child: this,
  );

  /// margin on `Right Side`
  Widget marginRight(double value) => Container(
    margin: EdgeInsets.only(right: value),
    child: this,
  );

  /// margin on `Top Side`
  Widget marginTop(double value) => Container(
    margin: EdgeInsets.only(top: value),
    child: this,
  );

  /// margin on `Bottom Side`
  Widget marginBottom(double value) => Container(
    margin: EdgeInsets.only(bottom: value),
    child: this,
  );

  /// margin on `Only`
  Widget marginOnly({
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
  }) => Container(
    margin: EdgeInsets.only(
      left: left,
      top: top,
      right: right,
      bottom: bottom,
    ),
    child: this,
  );

  /// margin on `Symmetric`
  Widget marginSymmetric({double vertical = 0, double horizontal = 0}) =>
      Container(
        margin:
        EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
        child: this,
      );
}