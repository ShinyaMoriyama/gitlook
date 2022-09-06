import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:gitlook/models/configuration.dart';

void main() {
  group("Configuration", () {
    test('Read assets', () async {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      WidgetsFlutterBinding.ensureInitialized();

      final githubHeader = await container.read(githubHeaderProvider.future);
      debugPrint("githubHeader: $githubHeader");

      expect(githubHeader.length, greaterThanOrEqualTo(2));
    });
  });
}
