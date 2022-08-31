// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'github_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResultData _$ResultDataFromJson(Map<String, dynamic> json) {
  return _ResultData.fromJson(json);
}

/// @nodoc
mixin _$ResultData {
  @JsonKey(name: "full_name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "default description")
  String get description => throw _privateConstructorUsedError;
  Owner get owner => throw _privateConstructorUsedError;
  @JsonKey(name: "stargazers_count")
  int get numStars => throw _privateConstructorUsedError;
  @JsonKey(name: "watchers_count")
  int get numWatching => throw _privateConstructorUsedError;
  @JsonKey(name: "forks_count")
  int get numForks => throw _privateConstructorUsedError;
  List<String> get topics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultDataCopyWith<ResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultDataCopyWith<$Res> {
  factory $ResultDataCopyWith(
          ResultData value, $Res Function(ResultData) then) =
      _$ResultDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "full_name") String name,
      @JsonKey(defaultValue: "default description") String description,
      Owner owner,
      @JsonKey(name: "stargazers_count") int numStars,
      @JsonKey(name: "watchers_count") int numWatching,
      @JsonKey(name: "forks_count") int numForks,
      List<String> topics});

  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class _$ResultDataCopyWithImpl<$Res> implements $ResultDataCopyWith<$Res> {
  _$ResultDataCopyWithImpl(this._value, this._then);

  final ResultData _value;
  // ignore: unused_field
  final $Res Function(ResultData) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? owner = freezed,
    Object? numStars = freezed,
    Object? numWatching = freezed,
    Object? numForks = freezed,
    Object? topics = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
      numStars: numStars == freezed
          ? _value.numStars
          : numStars // ignore: cast_nullable_to_non_nullable
              as int,
      numWatching: numWatching == freezed
          ? _value.numWatching
          : numWatching // ignore: cast_nullable_to_non_nullable
              as int,
      numForks: numForks == freezed
          ? _value.numForks
          : numForks // ignore: cast_nullable_to_non_nullable
              as int,
      topics: topics == freezed
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }

  @override
  $OwnerCopyWith<$Res> get owner {
    return $OwnerCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$$_ResultDataCopyWith<$Res>
    implements $ResultDataCopyWith<$Res> {
  factory _$$_ResultDataCopyWith(
          _$_ResultData value, $Res Function(_$_ResultData) then) =
      __$$_ResultDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "full_name") String name,
      @JsonKey(defaultValue: "default description") String description,
      Owner owner,
      @JsonKey(name: "stargazers_count") int numStars,
      @JsonKey(name: "watchers_count") int numWatching,
      @JsonKey(name: "forks_count") int numForks,
      List<String> topics});

  @override
  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class __$$_ResultDataCopyWithImpl<$Res> extends _$ResultDataCopyWithImpl<$Res>
    implements _$$_ResultDataCopyWith<$Res> {
  __$$_ResultDataCopyWithImpl(
      _$_ResultData _value, $Res Function(_$_ResultData) _then)
      : super(_value, (v) => _then(v as _$_ResultData));

  @override
  _$_ResultData get _value => super._value as _$_ResultData;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? owner = freezed,
    Object? numStars = freezed,
    Object? numWatching = freezed,
    Object? numForks = freezed,
    Object? topics = freezed,
  }) {
    return _then(_$_ResultData(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
      numStars: numStars == freezed
          ? _value.numStars
          : numStars // ignore: cast_nullable_to_non_nullable
              as int,
      numWatching: numWatching == freezed
          ? _value.numWatching
          : numWatching // ignore: cast_nullable_to_non_nullable
              as int,
      numForks: numForks == freezed
          ? _value.numForks
          : numForks // ignore: cast_nullable_to_non_nullable
              as int,
      topics: topics == freezed
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResultData with DiagnosticableTreeMixin implements _ResultData {
  const _$_ResultData(
      {@JsonKey(name: "full_name") required this.name,
      @JsonKey(defaultValue: "default description") required this.description,
      required this.owner,
      @JsonKey(name: "stargazers_count") required this.numStars,
      @JsonKey(name: "watchers_count") required this.numWatching,
      @JsonKey(name: "forks_count") required this.numForks,
      required final List<String> topics})
      : _topics = topics;

  factory _$_ResultData.fromJson(Map<String, dynamic> json) =>
      _$$_ResultDataFromJson(json);

  @override
  @JsonKey(name: "full_name")
  final String name;
  @override
  @JsonKey(defaultValue: "default description")
  final String description;
  @override
  final Owner owner;
  @override
  @JsonKey(name: "stargazers_count")
  final int numStars;
  @override
  @JsonKey(name: "watchers_count")
  final int numWatching;
  @override
  @JsonKey(name: "forks_count")
  final int numForks;
  final List<String> _topics;
  @override
  List<String> get topics {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultData(name: $name, description: $description, owner: $owner, numStars: $numStars, numWatching: $numWatching, numForks: $numForks, topics: $topics)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultData'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('owner', owner))
      ..add(DiagnosticsProperty('numStars', numStars))
      ..add(DiagnosticsProperty('numWatching', numWatching))
      ..add(DiagnosticsProperty('numForks', numForks))
      ..add(DiagnosticsProperty('topics', topics));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultData &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.owner, owner) &&
            const DeepCollectionEquality().equals(other.numStars, numStars) &&
            const DeepCollectionEquality()
                .equals(other.numWatching, numWatching) &&
            const DeepCollectionEquality().equals(other.numForks, numForks) &&
            const DeepCollectionEquality().equals(other._topics, _topics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(owner),
      const DeepCollectionEquality().hash(numStars),
      const DeepCollectionEquality().hash(numWatching),
      const DeepCollectionEquality().hash(numForks),
      const DeepCollectionEquality().hash(_topics));

  @JsonKey(ignore: true)
  @override
  _$$_ResultDataCopyWith<_$_ResultData> get copyWith =>
      __$$_ResultDataCopyWithImpl<_$_ResultData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultDataToJson(
      this,
    );
  }
}

abstract class _ResultData implements ResultData {
  const factory _ResultData(
      {@JsonKey(name: "full_name")
          required final String name,
      @JsonKey(defaultValue: "default description")
          required final String description,
      required final Owner owner,
      @JsonKey(name: "stargazers_count")
          required final int numStars,
      @JsonKey(name: "watchers_count")
          required final int numWatching,
      @JsonKey(name: "forks_count")
          required final int numForks,
      required final List<String> topics}) = _$_ResultData;

  factory _ResultData.fromJson(Map<String, dynamic> json) =
      _$_ResultData.fromJson;

  @override
  @JsonKey(name: "full_name")
  String get name;
  @override
  @JsonKey(defaultValue: "default description")
  String get description;
  @override
  Owner get owner;
  @override
  @JsonKey(name: "stargazers_count")
  int get numStars;
  @override
  @JsonKey(name: "watchers_count")
  int get numWatching;
  @override
  @JsonKey(name: "forks_count")
  int get numForks;
  @override
  List<String> get topics;
  @override
  @JsonKey(ignore: true)
  _$$_ResultDataCopyWith<_$_ResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

Owner _$OwnerFromJson(Map<String, dynamic> json) {
  return _Owner.fromJson(json);
}

/// @nodoc
mixin _$Owner {
  @JsonKey(name: "avatar_url")
  String get avatarUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OwnerCopyWith<Owner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerCopyWith<$Res> {
  factory $OwnerCopyWith(Owner value, $Res Function(Owner) then) =
      _$OwnerCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "avatar_url") String avatarUrl});
}

/// @nodoc
class _$OwnerCopyWithImpl<$Res> implements $OwnerCopyWith<$Res> {
  _$OwnerCopyWithImpl(this._value, this._then);

  final Owner _value;
  // ignore: unused_field
  final $Res Function(Owner) _then;

  @override
  $Res call({
    Object? avatarUrl = freezed,
  }) {
    return _then(_value.copyWith(
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_OwnerCopyWith<$Res> implements $OwnerCopyWith<$Res> {
  factory _$$_OwnerCopyWith(_$_Owner value, $Res Function(_$_Owner) then) =
      __$$_OwnerCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "avatar_url") String avatarUrl});
}

/// @nodoc
class __$$_OwnerCopyWithImpl<$Res> extends _$OwnerCopyWithImpl<$Res>
    implements _$$_OwnerCopyWith<$Res> {
  __$$_OwnerCopyWithImpl(_$_Owner _value, $Res Function(_$_Owner) _then)
      : super(_value, (v) => _then(v as _$_Owner));

  @override
  _$_Owner get _value => super._value as _$_Owner;

  @override
  $Res call({
    Object? avatarUrl = freezed,
  }) {
    return _then(_$_Owner(
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Owner with DiagnosticableTreeMixin implements _Owner {
  const _$_Owner({@JsonKey(name: "avatar_url") required this.avatarUrl});

  factory _$_Owner.fromJson(Map<String, dynamic> json) =>
      _$$_OwnerFromJson(json);

  @override
  @JsonKey(name: "avatar_url")
  final String avatarUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Owner(avatarUrl: $avatarUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Owner'))
      ..add(DiagnosticsProperty('avatarUrl', avatarUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Owner &&
            const DeepCollectionEquality().equals(other.avatarUrl, avatarUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(avatarUrl));

  @JsonKey(ignore: true)
  @override
  _$$_OwnerCopyWith<_$_Owner> get copyWith =>
      __$$_OwnerCopyWithImpl<_$_Owner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OwnerToJson(
      this,
    );
  }
}

abstract class _Owner implements Owner {
  const factory _Owner(
          {@JsonKey(name: "avatar_url") required final String avatarUrl}) =
      _$_Owner;

  factory _Owner.fromJson(Map<String, dynamic> json) = _$_Owner.fromJson;

  @override
  @JsonKey(name: "avatar_url")
  String get avatarUrl;
  @override
  @JsonKey(ignore: true)
  _$$_OwnerCopyWith<_$_Owner> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) {
  return _SearchResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchResponse {
  @JsonKey(name: 'items')
  List<Map<String, Object?>> get results => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_count')
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResponseCopyWith<SearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResponseCopyWith<$Res> {
  factory $SearchResponseCopyWith(
          SearchResponse value, $Res Function(SearchResponse) then) =
      _$SearchResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'items') List<Map<String, Object?>> results,
      @JsonKey(name: 'total_count') int total});
}

/// @nodoc
class _$SearchResponseCopyWithImpl<$Res>
    implements $SearchResponseCopyWith<$Res> {
  _$SearchResponseCopyWithImpl(this._value, this._then);

  final SearchResponse _value;
  // ignore: unused_field
  final $Res Function(SearchResponse) _then;

  @override
  $Res call({
    Object? results = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Map<String, Object?>>,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_SearchResponseCopyWith<$Res>
    implements $SearchResponseCopyWith<$Res> {
  factory _$$_SearchResponseCopyWith(
          _$_SearchResponse value, $Res Function(_$_SearchResponse) then) =
      __$$_SearchResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'items') List<Map<String, Object?>> results,
      @JsonKey(name: 'total_count') int total});
}

/// @nodoc
class __$$_SearchResponseCopyWithImpl<$Res>
    extends _$SearchResponseCopyWithImpl<$Res>
    implements _$$_SearchResponseCopyWith<$Res> {
  __$$_SearchResponseCopyWithImpl(
      _$_SearchResponse _value, $Res Function(_$_SearchResponse) _then)
      : super(_value, (v) => _then(v as _$_SearchResponse));

  @override
  _$_SearchResponse get _value => super._value as _$_SearchResponse;

  @override
  $Res call({
    Object? results = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_SearchResponse(
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Map<String, Object?>>,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchResponse
    with DiagnosticableTreeMixin
    implements _SearchResponse {
  const _$_SearchResponse(
      {@JsonKey(name: 'items')
          required final List<Map<String, Object?>> results,
      @JsonKey(name: 'total_count')
          required this.total})
      : _results = results;

  factory _$_SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SearchResponseFromJson(json);

  final List<Map<String, Object?>> _results;
  @override
  @JsonKey(name: 'items')
  List<Map<String, Object?>> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey(name: 'total_count')
  final int total;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchResponse(results: $results, total: $total)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchResponse'))
      ..add(DiagnosticsProperty('results', results))
      ..add(DiagnosticsProperty('total', total));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchResponse &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_results),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$$_SearchResponseCopyWith<_$_SearchResponse> get copyWith =>
      __$$_SearchResponseCopyWithImpl<_$_SearchResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchResponseToJson(
      this,
    );
  }
}

abstract class _SearchResponse implements SearchResponse {
  const factory _SearchResponse(
      {@JsonKey(name: 'items')
          required final List<Map<String, Object?>> results,
      @JsonKey(name: 'total_count')
          required final int total}) = _$_SearchResponse;

  factory _SearchResponse.fromJson(Map<String, dynamic> json) =
      _$_SearchResponse.fromJson;

  @override
  @JsonKey(name: 'items')
  List<Map<String, Object?>> get results;
  @override
  @JsonKey(name: 'total_count')
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$_SearchResponseCopyWith<_$_SearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
