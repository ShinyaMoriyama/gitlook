// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResultData _$$_ResultDataFromJson(Map<String, dynamic> json) =>
    _$_ResultData(
      name: json['name'] as String,
      numStars: json['numStars'] as String,
      numWatching: json['numWatching'] as String,
      numForks: json['numForks'] as String,
    );

Map<String, dynamic> _$$_ResultDataToJson(_$_ResultData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'numStars': instance.numStars,
      'numWatching': instance.numWatching,
      'numForks': instance.numForks,
    };

_$_SearchResponse _$$_SearchResponseFromJson(Map<String, dynamic> json) =>
    _$_SearchResponse(
      (json['results'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      json['total'] as int,
    );

Map<String, dynamic> _$$_SearchResponseToJson(_$_SearchResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
      'total': instance.total,
    };
