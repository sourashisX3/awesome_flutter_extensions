import 'package:flutter/widgets.dart';

extension AlignmentExtensions on Widget {

  /// Align on `Top Left`
  Widget alignTopLeft() => Align(alignment: Alignment.topLeft, child: this);

  /// Align on `Top Center`
  Widget alignTopCenter() => Align(alignment: Alignment.topCenter, child: this);

  /// Align on `Top Right`
  Widget alignTopRight() => Align(alignment: Alignment.topRight, child: this);

  /// Align on `Center Left`
  Widget alignCenterLeft() => Align(alignment: Alignment.centerLeft, child: this);

  /// Align on `Center`
  Widget alignCenter() => Align(alignment: Alignment.center, child: this);

  /// Align on `Center Right`
  Widget alignCenterRight() => Align(alignment: Alignment.centerRight, child: this);

  /// Align on `Bottom Left`
  Widget alignBottomLeft() => Align(alignment: Alignment.bottomLeft, child: this);

  /// Align on `Bottom Center`
  Widget alignBottomCenter() => Align(alignment: Alignment.bottomCenter, child: this);

  /// Align on `Bottom Right`
  Widget alignBottomRight() => Align(alignment: Alignment.bottomRight, child: this);

  /// Align on `Only`
  Widget alignOnly({  
    double x = 0,
    double y = 0,
  }) => Align(
    alignment: Alignment(x, y),
    child: this,
  );

  /// Align on `Directional`
  Widget alignDirectional({
    double start = 0,
    double y = 0,
  }) => Align(
    alignment: AlignmentDirectional(start, y),
    child: this,
  );

}