import 'package:flutter_test/flutter_test.dart';

import 'package:gitlook/github_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:gitlook/constant.dart';

import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import 'data/response_data.dart';

void main() {
  group("Status succesful", () {
    final dio = Dio(BaseOptions());
    final dioAdapter = DioAdapter(dio: dio);

    dioAdapter.onGet(
      githubSearchPath,
      (server) => server.reply(
        200,
        githubOne,
        delay: const Duration(milliseconds: 100),
      ),
      queryParameters: <String, String>{
        githubSearchQuery: "dummy",
      },
      headers: githubHeader,
    );

    test('Successful with FromJson', () async {
      final response = await dio.get(
        githubSearchPath,
        queryParameters: <String, String>{
          githubSearchQuery: "dummy",
        },
        options: Options(headers: githubHeader),
      );

      final serchResponse = SearchResponse.fromJson(response.data!);
      expect(serchResponse.total, 1);

      final resultDataList =
          serchResponse.results.map((e) => ResultData.fromJson(e)).toList();

      expect(resultDataList.length, 1);
    });

    test("Successful with GithubRepository search", () async {
      final container = ProviderContainer(
        overrides: [dioProvider.overrideWithValue(dio)],
      );
      addTearDown(container.dispose);

      final resultDataList =
          await container.read(repositoryProvider).search("dummy", null);

      expect(resultDataList.length, 1);
    });
  });

  group("Status error", () {
    final dio = Dio(BaseOptions());
    dio.interceptors.add(
      InterceptorsWrapper(
        onError: (DioError err, handler) {
          return handler.resolve(
            Response(
              statusCode: 408,
              data: githubResponseZero,
              requestOptions: RequestOptions(
                path: githubSearchPath,
              ),
            ),
          ); //customise
        },
      ),
    );
    final dioAdapter = DioAdapter(dio: dio);

    dioAdapter.onGet(
      githubSearchPath,
      (server) => server.throws(
        408,
        DioError(
          requestOptions: RequestOptions(
            path: githubSearchPath,
            queryParameters: <String, String>{
              githubSearchQuery: "dummy",
            },
            headers: githubHeader,
          ),
          type: DioErrorType.sendTimeout,
        ),
        delay: const Duration(milliseconds: 100),
      ),
    );

    test('Request timeout with FromJson', () async {
      final response = await dio.get(
        githubSearchPath,
        queryParameters: <String, String>{
          githubSearchQuery: "dummy",
        },
        options: Options(headers: githubHeader),
      );

      expect(response.statusCode, 408);

      final serchResponse = SearchResponse.fromJson(response.data!);
      expect(serchResponse.total, 0);

      final resultDataList =
          serchResponse.results.map((e) => ResultData.fromJson(e)).toList();

      expect(resultDataList.length, 0);
    });

    test("Request timeout with GithubRepository search", () async {
      final container = ProviderContainer(
        overrides: [dioProvider.overrideWithValue(dio)],
      );
      addTearDown(container.dispose);

      final resultDataList =
          await container.read(repositoryProvider).search("dummy", null);

      expect(resultDataList.length, 0);
    });
  });
}
