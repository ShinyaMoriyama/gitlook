import 'package:dio/dio.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import './constant.dart';

part 'github_repository.freezed.dart';
part 'github_repository.g.dart';

final dioProvider = Provider((ref) => Dio());

final repositoryProvider = Provider((ref) => GithubRepository(ref));

class GithubRepository {
  final Ref ref;

  GithubRepository(this.ref);

  Future<SearchResponse> _get(
    String keyword,
    CancelToken? cancelToken,
  ) async {
    final result = await ref.read(dioProvider).get<Map<String, Object?>>(
          githubSearchPath,
          cancelToken: cancelToken,
          queryParameters: <String, String>{
            githubSearchQuery: keyword,
          },
          options: Options(
            headers: githubHeader,
          ),
          // TODO deserialize error message
        );

    // return SearchResponse.fromJson(Map<String, Object>.from(result.data!));

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
    required String name,
    @JsonKey(name: 'stargazers_count') required int numStars,
    @JsonKey(name: 'watchers_count') required int numWatching,
    @JsonKey(name: 'forks_count') required int numForks,
  }) = _ResultData;

  factory ResultData.fromJson(Map<String, Object?> json) =>
      _$ResultDataFromJson(json);
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
