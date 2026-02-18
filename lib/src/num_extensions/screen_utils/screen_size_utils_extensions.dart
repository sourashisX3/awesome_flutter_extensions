import 'package:flutter/widgets.dart';

extension ScreenSizeUtilsExtensions on MediaQueryData {

  /// get full screen size
  Size get fullScreenSize => size;
  /// get screen width
  double get screenWidth => size.width;
  /// get screen height
  double get screenHeight => size.height;

}

extension BuildContextScreenSizeUtilsExtensions on BuildContext {

  /// get full screen size
  Size get fullScreenSize => MediaQuery.of(this).size;
  /// get screen width
  double get screenWidth => MediaQuery.of(this).size.width;
  /// get screen height
  double get screenHeight => MediaQuery.of(this).size.height;

}

extension WidgetScreenSizeUtilsExtensions on Widget {

  /// get full screen size
  Size fullScreenSize(BuildContext context) => MediaQuery.of(context).size;
  /// get screen width
  double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
  /// get screen height
  double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

}

extension ScreenResponsiveUtilsExtensions on num {

  num h (BuildContext context) => (MediaQuery.of(context).size.height * this) / 100;
  num w (BuildContext context) => (MediaQuery.of(context).size.width * this) / 100;
  num sp (BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final shortestSide = mediaQuery.size.shortestSide;
    return (shortestSide * this) / 100;
  }

  num r (BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final shortestSide = mediaQuery.size.shortestSide;
    return (shortestSide * this) / 100;
  }
  
  num dp (BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final shortestSide = mediaQuery.size.shortestSide;
    return (shortestSide * this) / 100;
  }

  

}