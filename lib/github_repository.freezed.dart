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
  String get name => throw _privateConstructorUsedError;
  String get numStars => throw _privateConstructorUsedError;
  String get numWatching => throw _privateConstructorUsedError;
  String get numForks => throw _privateConstructorUsedError;

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
      {String name, String numStars, String numWatching, String numForks});
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
    Object? numStars = freezed,
    Object? numWatching = freezed,
    Object? numForks = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      numStars: numStars == freezed
          ? _value.numStars
          : numStars // ignore: cast_nullable_to_non_nullable
              as String,
      numWatching: numWatching == freezed
          ? _value.numWatching
          : numWatching // ignore: cast_nullable_to_non_nullable
              as String,
      numForks: numForks == freezed
          ? _value.numForks
          : numForks // ignore: cast_nullable_to_non_nullable
              as String,
    ));
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
      {String name, String numStars, String numWatching, String numForks});
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
    Object? numStars = freezed,
    Object? numWatching = freezed,
    Object? numForks = freezed,
  }) {
    return _then(_$_ResultData(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      numStars: numStars == freezed
          ? _value.numStars
          : numStars // ignore: cast_nullable_to_non_nullable
              as String,
      numWatching: numWatching == freezed
          ? _value.numWatching
          : numWatching // ignore: cast_nullable_to_non_nullable
              as String,
      numForks: numForks == freezed
          ? _value.numForks
          : numForks // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResultData with DiagnosticableTreeMixin implements _ResultData {
  const _$_ResultData(
      {required this.name,
      required this.numStars,
      required this.numWatching,
      required this.numForks});

  factory _$_ResultData.fromJson(Map<String, dynamic> json) =>
      _$$_ResultDataFromJson(json);

  @override
  final String name;
  @override
  final String numStars;
  @override
  final String numWatching;
  @override
  final String numForks;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultData(name: $name, numStars: $numStars, numWatching: $numWatching, numForks: $numForks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultData'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('numStars', numStars))
      ..add(DiagnosticsProperty('numWatching', numWatching))
      ..add(DiagnosticsProperty('numForks', numForks));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultData &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.numStars, numStars) &&
            const DeepCollectionEquality()
                .equals(other.numWatching, numWatching) &&
            const DeepCollectionEquality().equals(other.numForks, numForks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(numStars),
      const DeepCollectionEquality().hash(numWatching),
      const DeepCollectionEquality().hash(numForks));

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
      {required final String name,
      required final String numStars,
      required final String numWatching,
      required final String numForks}) = _$_ResultData;

  factory _ResultData.fromJson(Map<String, dynamic> json) =
      _$_ResultData.fromJson;

  @override
  String get name;
  @override
  String get numStars;
  @override
  String get numWatching;
  @override
  String get numForks;
  @override
  @JsonKey(ignore: true)
  _$$_ResultDataCopyWith<_$_ResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) {
  return _SearchResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchResponse {
  List<Map<String, Object?>> get results => throw _privateConstructorUsedError;
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
  $Res call({List<Map<String, Object?>> results, int total});
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
  $Res call({List<Map<String, Object?>> results, int total});
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
      results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Map<String, Object?>>,
      total == freezed
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
  _$_SearchResponse(final List<Map<String, Object?>> results, this.total)
      : _results = results;

  factory _$_SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SearchResponseFromJson(json);

  final List<Map<String, Object?>> _results;
  @override
  List<Map<String, Object?>> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
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
  factory _SearchResponse(
          final List<Map<String, Object?>> results, final int total) =
      _$_SearchResponse;

  factory _SearchResponse.fromJson(Map<String, dynamic> json) =
      _$_SearchResponse.fromJson;

  @override
  List<Map<String, Object?>> get results;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$_SearchResponseCopyWith<_$_SearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
