// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'films.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Films _$FilmsFromJson(Map<String, dynamic> json) {
  return _Films.fromJson(json);
}

/// @nodoc
mixin _$Films {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Rating get rating => throw _privateConstructorUsedError;
  Poster get poster => throw _privateConstructorUsedError;
  int get ageRating => throw _privateConstructorUsedError;
  List<Genres> get genres => throw _privateConstructorUsedError;
  List<Countries> get countries => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilmsCopyWith<Films> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmsCopyWith<$Res> {
  factory $FilmsCopyWith(Films value, $Res Function(Films) then) =
      _$FilmsCopyWithImpl<$Res, Films>;
  @useResult
  $Res call(
      {int id,
      String name,
      int year,
      String description,
      Rating rating,
      Poster poster,
      int ageRating,
      List<Genres> genres,
      List<Countries> countries});

  $RatingCopyWith<$Res> get rating;
  $PosterCopyWith<$Res> get poster;
}

/// @nodoc
class _$FilmsCopyWithImpl<$Res, $Val extends Films>
    implements $FilmsCopyWith<$Res> {
  _$FilmsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? year = null,
    Object? description = null,
    Object? rating = null,
    Object? poster = null,
    Object? ageRating = null,
    Object? genres = null,
    Object? countries = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating,
      poster: null == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as Poster,
      ageRating: null == ageRating
          ? _value.ageRating
          : ageRating // ignore: cast_nullable_to_non_nullable
              as int,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genres>,
      countries: null == countries
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Countries>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingCopyWith<$Res> get rating {
    return $RatingCopyWith<$Res>(_value.rating, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PosterCopyWith<$Res> get poster {
    return $PosterCopyWith<$Res>(_value.poster, (value) {
      return _then(_value.copyWith(poster: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FilmsImplCopyWith<$Res> implements $FilmsCopyWith<$Res> {
  factory _$$FilmsImplCopyWith(
          _$FilmsImpl value, $Res Function(_$FilmsImpl) then) =
      __$$FilmsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int year,
      String description,
      Rating rating,
      Poster poster,
      int ageRating,
      List<Genres> genres,
      List<Countries> countries});

  @override
  $RatingCopyWith<$Res> get rating;
  @override
  $PosterCopyWith<$Res> get poster;
}

/// @nodoc
class __$$FilmsImplCopyWithImpl<$Res>
    extends _$FilmsCopyWithImpl<$Res, _$FilmsImpl>
    implements _$$FilmsImplCopyWith<$Res> {
  __$$FilmsImplCopyWithImpl(
      _$FilmsImpl _value, $Res Function(_$FilmsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? year = null,
    Object? description = null,
    Object? rating = null,
    Object? poster = null,
    Object? ageRating = null,
    Object? genres = null,
    Object? countries = null,
  }) {
    return _then(_$FilmsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating,
      poster: null == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as Poster,
      ageRating: null == ageRating
          ? _value.ageRating
          : ageRating // ignore: cast_nullable_to_non_nullable
              as int,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genres>,
      countries: null == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Countries>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilmsImpl implements _Films {
  _$FilmsImpl(
      {required this.id,
      required this.name,
      required this.year,
      required this.description,
      required this.rating,
      required this.poster,
      required this.ageRating,
      required final List<Genres> genres,
      required final List<Countries> countries})
      : _genres = genres,
        _countries = countries;

  factory _$FilmsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilmsImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int year;
  @override
  final String description;
  @override
  final Rating rating;
  @override
  final Poster poster;
  @override
  final int ageRating;
  final List<Genres> _genres;
  @override
  List<Genres> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  final List<Countries> _countries;
  @override
  List<Countries> get countries {
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  @override
  String toString() {
    return 'Films(id: $id, name: $name, year: $year, description: $description, rating: $rating, poster: $poster, ageRating: $ageRating, genres: $genres, countries: $countries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilmsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.poster, poster) || other.poster == poster) &&
            (identical(other.ageRating, ageRating) ||
                other.ageRating == ageRating) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      year,
      description,
      rating,
      poster,
      ageRating,
      const DeepCollectionEquality().hash(_genres),
      const DeepCollectionEquality().hash(_countries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilmsImplCopyWith<_$FilmsImpl> get copyWith =>
      __$$FilmsImplCopyWithImpl<_$FilmsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilmsImplToJson(
      this,
    );
  }
}

abstract class _Films implements Films {
  factory _Films(
      {required final int id,
      required final String name,
      required final int year,
      required final String description,
      required final Rating rating,
      required final Poster poster,
      required final int ageRating,
      required final List<Genres> genres,
      required final List<Countries> countries}) = _$FilmsImpl;

  factory _Films.fromJson(Map<String, dynamic> json) = _$FilmsImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get year;
  @override
  String get description;
  @override
  Rating get rating;
  @override
  Poster get poster;
  @override
  int get ageRating;
  @override
  List<Genres> get genres;
  @override
  List<Countries> get countries;
  @override
  @JsonKey(ignore: true)
  _$$FilmsImplCopyWith<_$FilmsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
