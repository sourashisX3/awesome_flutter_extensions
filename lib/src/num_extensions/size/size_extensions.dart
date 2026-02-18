import 'dart:ui';

extension SizeExtensions on num {

  /// Converts the number to a [Size] object with both width and height equal to the number.
  Size get size => Size(toDouble(), toDouble());

  /// Converts the number to a [Size] object with the width equal to the number and the height set to zero.
  Size get widthSize => Size(toDouble(), 0);

  /// Converts the number to a [Size] object with the height equal to the number and the width set to zero.
  Size get heightSize => Size(0, toDouble());

  Size sizeWith({double? width, double? height}) {
    return Size(width ?? toDouble(), height ?? toDouble());
  }

  Size sizeWithWidth(double width) {
    return Size(width, toDouble());
  }

  Size sizeWithHeight(double height) {
    return Size(toDouble(), height);
  }

  Size sizeWithMax({double? maxWidth, double? maxHeight}) {
    return Size(
      maxWidth != null ? toDouble().clamp(0, maxWidth) : toDouble(),
      maxHeight != null ? toDouble().clamp(0, maxHeight) : toDouble(),
    );
  }

  Size sizeWithMin({double? minWidth, double? minHeight}) {
    return Size(
      minWidth != null ? toDouble().clamp(minWidth, double.infinity) : toDouble(),
      minHeight != null ? toDouble().clamp(minHeight, double.infinity) : toDouble(),
    );
  }
}