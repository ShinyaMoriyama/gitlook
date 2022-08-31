// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResultData _$$_ResultDataFromJson(Map<String, dynamic> json) =>
    _$_ResultData(
      name: json['full_name'] as String,
      description: json['description'] as String? ?? 'default description',
      owner: Owner.fromJson(json['owner'] as Map<String, dynamic>),
      numStars: json['stargazers_count'] as int,
      numWatching: json['watchers_count'] as int,
      numForks: json['forks_count'] as int,
      topics:
          (json['topics'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ResultDataToJson(_$_ResultData instance) =>
    <String, dynamic>{
      'full_name': instance.name,
      'description': instance.description,
      'owner': instance.owner,
      'stargazers_count': instance.numStars,
      'watchers_count': instance.numWatching,
      'forks_count': instance.numForks,
      'topics': instance.topics,
    };

_$_Owner _$$_OwnerFromJson(Map<String, dynamic> json) => _$_Owner(
      avatarUrl: json['avatar_url'] as String,
    );

Map<String, dynamic> _$$_OwnerToJson(_$_Owner instance) => <String, dynamic>{
      'avatar_url': instance.avatarUrl,
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
