import 'package:dio/dio.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'github_repository.freezed.dart';
part 'github_repository.g.dart';

final dioProvider = Provider((ref) => Dio());

final repositoryProvider = Provider((ref) => GithubRepository(ref));
final repositoryProvider2 = Provider(GithubRepository.new);

class GithubRepository {
  final Ref ref;

  GithubRepository(this.ref);

  Future<SearchResponse> _get(
    String keyword,
    CancelToken? cancelToken,
  ) async {
    final result = await ref.read(dioProvider).get<Map<String, Object?>>(
      "https://api.github.com/search/repositories",
      cancelToken: cancelToken,
      queryParameters: <String, Object?>{
        'q': keyword,
      },
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
    required String numStars,
    required String numWatching,
    required String numForks,
  }) = _ResultData;

  factory ResultData.fromJson(Map<String, Object?> json) =>
      _$ResultDataFromJson(json);
}

@freezed
class SearchResponse with _$SearchResponse {
  factory SearchResponse(
    List<Map<String, Object?>> results,
    int total,
  ) = _SearchResponse;

  factory SearchResponse.fromJson(Map<String, Object?> json) =>
      _$SearchResponseFromJson(json);
}
