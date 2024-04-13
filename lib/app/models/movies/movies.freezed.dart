// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Movies _$MoviesFromJson(Map<String, dynamic> json) {
  return _Movies.fromJson(json);
}

/// @nodoc
mixin _$Movies {
  String get picture => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  num get category => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  String get genre => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoviesCopyWith<Movies> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesCopyWith<$Res> {
  factory $MoviesCopyWith(Movies value, $Res Function(Movies) then) =
      _$MoviesCopyWithImpl<$Res, Movies>;
  @useResult
  $Res call(
      {String picture,
      String name,
      num category,
      int year,
      String genre,
      String country,
      String description});
}

/// @nodoc
class _$MoviesCopyWithImpl<$Res, $Val extends Movies>
    implements $MoviesCopyWith<$Res> {
  _$MoviesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? picture = null,
    Object? name = null,
    Object? category = null,
    Object? year = null,
    Object? genre = null,
    Object? country = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as num,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoviesImplCopyWith<$Res> implements $MoviesCopyWith<$Res> {
  factory _$$MoviesImplCopyWith(
          _$MoviesImpl value, $Res Function(_$MoviesImpl) then) =
      __$$MoviesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String picture,
      String name,
      num category,
      int year,
      String genre,
      String country,
      String description});
}

/// @nodoc
class __$$MoviesImplCopyWithImpl<$Res>
    extends _$MoviesCopyWithImpl<$Res, _$MoviesImpl>
    implements _$$MoviesImplCopyWith<$Res> {
  __$$MoviesImplCopyWithImpl(
      _$MoviesImpl _value, $Res Function(_$MoviesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? picture = null,
    Object? name = null,
    Object? category = null,
    Object? year = null,
    Object? genre = null,
    Object? country = null,
    Object? description = null,
  }) {
    return _then(_$MoviesImpl(
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as num,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MoviesImpl implements _Movies {
  _$MoviesImpl(
      {required this.picture,
      required this.name,
      required this.category,
      required this.year,
      required this.genre,
      required this.country,
      required this.description});

  factory _$MoviesImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoviesImplFromJson(json);

  @override
  final String picture;
  @override
  final String name;
  @override
  final num category;
  @override
  final int year;
  @override
  final String genre;
  @override
  final String country;
  @override
  final String description;

  @override
  String toString() {
    return 'Movies(picture: $picture, name: $name, category: $category, year: $year, genre: $genre, country: $country, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesImpl &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, picture, name, category, year, genre, country, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesImplCopyWith<_$MoviesImpl> get copyWith =>
      __$$MoviesImplCopyWithImpl<_$MoviesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoviesImplToJson(
      this,
    );
  }
}

abstract class _Movies implements Movies {
  factory _Movies(
      {required final String picture,
      required final String name,
      required final num category,
      required final int year,
      required final String genre,
      required final String country,
      required final String description}) = _$MoviesImpl;

  factory _Movies.fromJson(Map<String, dynamic> json) = _$MoviesImpl.fromJson;

  @override
  String get picture;
  @override
  String get name;
  @override
  num get category;
  @override
  int get year;
  @override
  String get genre;
  @override
  String get country;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$MoviesImplCopyWith<_$MoviesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
