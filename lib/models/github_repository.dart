import 'package:dio/dio.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import './configuration.dart';
import '../common/constant.dart';

part 'github_repository.freezed.dart';
part 'github_repository.g.dart';

final dioProvider = Provider((ref) {
  final dio = Dio();
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) {
        debugPrint('REQUEST[${options.method}] => PATH: ${options.path}');
        return handler.next(options); //continue
      },
      onResponse: (response, handler) {
        debugPrint(
            'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
        return handler.next(response); // continue
      },
      onError: (DioError err, handler) {
        debugPrint(
            'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path} MESSAGE[${err.message}]');
        return handler.resolve(Response(
            data: githubResponseZero,
            requestOptions: RequestOptions(
                path: githubSearchPath, data: githubResponseZero))); //customise
      },
    ),
  );
  return dio;
});

final repositoryProvider = Provider((ref) => GithubRepository(ref));

class GithubRepository {
  final Ref ref;

  GithubRepository(this.ref);

  Future<SearchResponse> _get(
    String keyword,
    CancelToken? cancelToken,
  ) async {
    final githubHeader = await ref.read(githubHeaderProvider.future);
    final result = await ref.read(dioProvider).get<Map<String, Object?>>(
          githubSearchPath,
          cancelToken: cancelToken,
          queryParameters: <String, dynamic>{
            githubSearchQuery: keyword,
            githubSearchPerPageKey: githubSearchPerPageValue,
          },
          options: Options(
            headers: githubHeader,
          ),
        );

    return SearchResponse.fromJson(result.data!);
  }

  Future<List<ResultData>> search(
    String keyword,
    CancelToken? cancelToken,
  ) async {
    final response = await _get(keyword, cancelToken);
    return response.results.map((e) => ResultData.fromJson(e)).toList();
  }
}

@freezed
class ResultData with _$ResultData {
  const factory ResultData({
    @JsonKey(name: "full_name") required String name,
    @JsonKey(defaultValue: "default description") required String description,
    required Owner owner,
    @JsonKey(name: "stargazers_count") required int numStars,
    @JsonKey(name: "watchers_count") required int numWatching,
    @JsonKey(name: "forks_count") required int numForks,
    @JsonKey(defaultValue: "unknown") required String language,
    required List<String> topics,
    @JsonKey(name: "open_issues_count") required int numIssues,
  }) = _ResultData;

  factory ResultData.fromJson(Map<String, Object?> json) =>
      _$ResultDataFromJson(json);
}

@freezed
class Owner with _$Owner {
  const factory Owner({
    @JsonKey(name: "avatar_url") required String avatarUrl,
  }) = _Owner;

  factory Owner.fromJson(Map<String, Object?> json) => _$OwnerFromJson(json);
}

@freezed
class SearchResponse with _$SearchResponse {
  const factory SearchResponse({
    @JsonKey(name: 'items') required List<Map<String, Object?>> results,
    @JsonKey(name: 'total_count') required int total,
  }) = _SearchResponse;

  factory SearchResponse.fromJson(Map<String, Object?> json) =>
      _$SearchResponseFromJson(json);
}
