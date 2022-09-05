import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:network_image_mock/network_image_mock.dart';

import 'package:gitlook/github_repository.dart';
import 'package:gitlook/main.dart';
import 'package:gitlook/home_listview.dart';
import 'data/listview_data.dart';
import 'data/hive_setup.dart';

class FakeRipository extends GithubRepository {
  FakeRipository(Ref ref) : super(ref);

  @override
  Future<List<ResultData>> search(
    String keyword,
    CancelToken? cancelToken,
  ) async {
    return listviewResultData;
  }
}

void main() {
  setUpAll(() async {
    await setUpTestHive();
  });

  tearDownAll(() async {
    await tearDownTestHive();
  });

  group("App bar", () {
    testWidgets('App bar visible as scrolling up and down', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            repositoryProvider
                .overrideWithProvider(Provider((ref) => FakeRipository(ref)))
          ],
          child: const MyApp(),
        ),
      );
      expect(find.text('GitHub Repository'), findsOneWidget);

      // to prevent NetworkImage from http status 400
      mockNetworkImagesFor(() async {
        await tester.enterText(find.byType(TextField), 'hawaii');
        await tester.testTextInput.receiveAction(TextInputAction.done);
        await tester.pumpAndSettle(const Duration(milliseconds: 1500));
        final gesture = await tester.startGesture(const Offset(0, 300));
        // scroll down
        await gesture.moveBy(const Offset(0, -200));
        await tester.pump();
        expect(find.text('GitHub Repository'), findsNothing);

        // scroll up
        await gesture.moveBy(const Offset(0, 100));
        await tester.pump();
        expect(find.text('GitHub Repository'), findsOneWidget);
      });
    });
  });

  group("Search provider", () {
    test(
        "Generate the result when the length equals or less than the limitation",
        () async {
      final container = ProviderContainer(
        overrides: [
          repositoryProvider
              .overrideWithProvider(Provider((ref) => FakeRipository(ref)))
        ],
      );
      addTearDown(container.dispose);

      final dataResulList = await container.read(serchProvider("dum").future);
      expect(dataResulList.length, 20);

      final dataResulList2 = await container.read(serchProvider("du").future);
      expect(dataResulList2.length, 0);
    });
  });

  group("Search result", () {
    testWidgets(
        'Execute the search after skipping and waiting for the time to debouce',
        (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            repositoryProvider
                .overrideWithProvider(Provider((ref) => FakeRipository(ref)))
          ],
          child: const MyApp(),
        ),
      );

      await tester.enterText(find.byType(TextField), 'hawa');
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pumpAndSettle();
      expect(find.text('tester/testrepo'), findsNothing);

      await tester.enterText(find.byType(TextField), 'hawai');
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pumpAndSettle();
      expect(find.text('tester/testrepo'), findsNothing);

      await tester.enterText(find.byType(TextField), 'hawaii');
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pumpAndSettle(const Duration(milliseconds: 1100));
      expect(find.text('tester/testrepo'), findsOneWidget);
    });
  });
}
