// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResultData _$$_ResultDataFromJson(Map<String, dynamic> json) =>
    _$_ResultData(
      name: json['name'] as String,
      numStars: json['stargazers_count'] as int,
      numWatching: json['watchers_count'] as int,
      numForks: json['forks_count'] as int,
    );

Map<String, dynamic> _$$_ResultDataToJson(_$_ResultData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'stargazers_count': instance.numStars,
      'watchers_count': instance.numWatching,
      'forks_count': instance.numForks,
    };

_$_SearchResponse _$$_SearchResponseFromJson(Map<String, dynamic> json) =>
    _$_SearchResponse(
      results: (json['items'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      total: json['total_count'] as int,
    );

Map<String, dynamic> _$$_SearchResponseToJson(_$_SearchResponse instance) =>
    <String, dynamic>{
      'items': instance.results,
      'total_count': instance.total,
    };
