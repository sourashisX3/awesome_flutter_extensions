import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:modern_extensions_flutter/src/num_extensions/screen_utils/screen_size_utils_extensions.dart';
import 'package:modern_extensions_flutter/src/num_extensions/size/size_extensions.dart';

void main() {
  group('SizeExtensions', () {
    test('size, widthSize, heightSize', () {
      expect(10.size, Size(10, 10));
      expect(5.widthSize, Size(5, 0));
      expect(8.heightSize, Size(0, 8));
    });

    test('sizeWith variants', () {
      expect(4.sizeWith(width: 2), Size(2, 4));
      expect(4.sizeWithHeight(9), Size(4, 9));
      expect(4.sizeWithWidth(7), Size(7, 4));
    });

    test('sizeWithMax and sizeWithMin clamp values', () {
      expect(10.sizeWithMax(maxWidth: 8), Size(8, 10));
      expect(2.sizeWithMin(minHeight: 5), Size(2, 5));
    });
  });

  group('ScreenSizeUtilsExtensions', () {
    testWidgets('MediaQueryData getters', (tester) async {
      final mq = MediaQueryData(size: Size(300, 600));
      expect(mq.fullScreenSize, Size(300, 600));
      expect(mq.screenWidth, 300);
      expect(mq.screenHeight, 600);
    });

    testWidgets('BuildContext and responsive numbers', (tester) async {
      Size? captured;
      num? h10;
      num? w10;
      num? sp10;

      final widget = Directionality(
        textDirection: TextDirection.ltr,
        child: MediaQuery(
          data: MediaQueryData(size: Size(200, 100)),
          child: Builder(
            builder: (context) {
              captured = context.fullScreenSize;
              h10 = 10.h(context);
              w10 = 10.w(context);
              sp10 = 10.sp(context);
              return Container();
            },
          ),
        ),
      );

      await tester.pumpWidget(widget);

      expect(captured, Size(200, 100));
      expect(h10, 10); // 10% of height (100)
      expect(w10, 20); // 10% of width (200)
      expect(sp10, 10); // shortestSide=100 -> 10% = 10
    });
  });
}
