import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:gitlook/main.dart';

void main() {
  group("Test widgets", () {
    testWidgets('App title', (WidgetTester tester) async {
      await tester.pumpWidget(const ProviderScope(child: MyApp()));

      expect(find.text('GitHub Repository'), findsOneWidget);
    });
  });
}
