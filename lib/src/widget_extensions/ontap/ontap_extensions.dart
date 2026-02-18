import 'package:flutter/material.dart';

extension OntapExtensions on Widget {
  /// gesture detector onTap extension `GestureDetector`
  Widget onTap(VoidCallback? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: this,
    );
  }

  /// InkWell onTap extension `InkWell`
  Widget onTapInkWell(VoidCallback? onTap, {BorderRadius? borderRadius}) {
    return InkWell(
      onTap: onTap,
      borderRadius: borderRadius,
      child: this,
    );
  }

  /// gesture detector onDoubleTap extension `GestureDetector`
  Widget onDoubleTap(VoidCallback? onDoubleTap) {
    return GestureDetector(
      onDoubleTap: onDoubleTap,
      child: this,
    );
  }

  /// gesture detector onLongPress extension `GestureDetector`
  Widget onLongPress(VoidCallback? onLongPress) {
    return GestureDetector(
      onLongPress: onLongPress,
      child: this,
    );
  }

  /// gesture detector onTapDown extension `GestureDetector`
  Widget onTapDown(GestureTapDownCallback? onTapDown) {
    return GestureDetector(
      onTapDown: onTapDown,
      child: this,
    );
  }

  /// gesture detector onTapUp extension `GestureDetector`
  Widget onTapUp(GestureTapUpCallback? onTapUp) {
    return GestureDetector(
      onTapUp: onTapUp,
      child: this,
    );
  }

  /// gesture detector onTapCancel extension `GestureDetector`
  Widget onTapCancel(VoidCallback? onTapCancel) {
    return GestureDetector(
      onTapCancel: onTapCancel,
      child: this,
    );
  }
}
