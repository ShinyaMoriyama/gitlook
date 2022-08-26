// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:gitlook/main.dart';
import 'package:gitlook/github_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/annotations.dart';

import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import 'response_data.dart';

void main() {
  test('Dio normal', () async {
    final dio = Dio(BaseOptions());
    final dioAdapter = DioAdapter(dio: dio);

    const path = 'https://api.github.com/search/repositories';
    dioAdapter.onGet(
      path,
      (server) => server.reply(
        200,
        githubOne,
        delay: const Duration(milliseconds: 300),
      ),
    );
    final response = await dio.get(path);

    final serchResponse = SearchResponse.fromJson(response.data!);
    expect(serchResponse.total, 1);

    final resultDataList =
        serchResponse.results.map((e) => ResultData.fromJson(e)).toList();

    expect(resultDataList.length, 1);
  });
}
