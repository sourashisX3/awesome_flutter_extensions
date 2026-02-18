import 'package:flutter/widgets.dart';

extension FlexExtensions on Widget {
  /// Returns a `Flexible` widget wrapping this widget.
  Flexible toFlexible({int flex = 1, FlexFit fit = FlexFit.loose}) {
    return Flexible(flex: flex, fit: fit, child: this);
  }

  /// Returns an `Expanded` widget wrapping this widget.
  Expanded toExpanded({int flex = 1}) {
    return Expanded(flex: flex, child: this);
  }
}
