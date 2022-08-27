// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:gitlook/main.dart';

void main() {
  testWidgets('App title', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('GitHub Search'), findsOneWidget);
  });

  testWidgets('Visible search bar', (tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('GitHub Search'), findsOneWidget);

    final gesture = await tester.startGesture(const Offset(0, 300));

    // scroll down
    await gesture.moveBy(const Offset(0, -200));
    await tester.pump();
    expect(find.text('GitHub Search'), findsNothing);

    // scroll up
    await gesture.moveBy(const Offset(0, 100));
    await tester.pump();
    expect(find.text('GitHub Search'), findsOneWidget);
  });
}
