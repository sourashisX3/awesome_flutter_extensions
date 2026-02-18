import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';

void main() {
  testWidgets('PaddingExtensions.paddingAll wraps widget with correct padding',
      (tester) async {
    final testWidget = Directionality(
      textDirection: TextDirection.ltr,
      child: Container().paddingAll(12),
    );

    await tester.pumpWidget(testWidget);

    final paddingWidget = tester.widget<Padding>(find.byType(Padding));
    expect(paddingWidget.padding, EdgeInsets.all(12));
  });

  testWidgets('PaddingExtensions.paddingFromLTRB and paddingZero',
      (tester) async {
    final fromLTRB = Directionality(
      textDirection: TextDirection.ltr,
      child: Container().paddingFromLTRB(1, 2, 3, 4),
    );

    await tester.pumpWidget(fromLTRB);
    final p1 = tester.widget<Padding>(find.byType(Padding));
    expect(p1.padding, EdgeInsets.fromLTRB(1, 2, 3, 4));

    final zero = Directionality(
      textDirection: TextDirection.ltr,
      child: Container().paddingZero(),
    );

    await tester.pumpWidget(zero);
    final p2 = tester.widget<Padding>(find.byType(Padding));
    expect(p2.padding, EdgeInsets.zero);
  });

  testWidgets('MarginExtensions.marginAll and marginOnly set Container.margin',
      (tester) async {
    final all = Directionality(
      textDirection: TextDirection.ltr,
      child: Container().marginAll(8),
    );

    await tester.pumpWidget(all);
    final c1 = tester.widget<Container>(find.byType(Container));
    expect(c1.margin, EdgeInsets.all(8));

    final only = Directionality(
      textDirection: TextDirection.ltr,
      child: Container().marginOnly(left: 1, top: 2, right: 3, bottom: 4),
    );

    await tester.pumpWidget(only);
    final c2 = tester.widget<Container>(find.byType(Container));
    expect(c2.margin, EdgeInsets.only(left: 1, top: 2, right: 3, bottom: 4));
  });

  testWidgets('AlignmentExtensions.alignTopLeft and alignDirectional',
      (tester) async {
    final topLeft = Directionality(
      textDirection: TextDirection.ltr,
      child: Container().alignTopLeft(),
    );

    await tester.pumpWidget(topLeft);
    final a1 = tester.widget<Align>(find.byType(Align));
    expect(a1.alignment, Alignment.topLeft);

    final directional = Directionality(
      textDirection: TextDirection.ltr,
      child: Container().alignDirectional(start: 0.5, y: -0.2),
    );

    await tester.pumpWidget(directional);
    final a2 = tester.widget<Align>(find.byType(Align));
    expect(
        a2.alignment.runtimeType.toString(), contains('AlignmentDirectional'));
  });
}
