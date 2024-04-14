// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Rating _$RatingFromJson(Map<String, dynamic> json) {
  return _Rating.fromJson(json);
}

/// @nodoc
mixin _$Rating {
  num? get kp => throw _privateConstructorUsedError;
  num? get imdb => throw _privateConstructorUsedError;
  num? get tmdb => throw _privateConstructorUsedError;
  num? get filmCritics => throw _privateConstructorUsedError;
  num? get russianFilmCritics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingCopyWith<Rating> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingCopyWith<$Res> {
  factory $RatingCopyWith(Rating value, $Res Function(Rating) then) =
      _$RatingCopyWithImpl<$Res, Rating>;
  @useResult
  $Res call(
      {num? kp,
      num? imdb,
      num? tmdb,
      num? filmCritics,
      num? russianFilmCritics});
}

/// @nodoc
class _$RatingCopyWithImpl<$Res, $Val extends Rating>
    implements $RatingCopyWith<$Res> {
  _$RatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kp = freezed,
    Object? imdb = freezed,
    Object? tmdb = freezed,
    Object? filmCritics = freezed,
    Object? russianFilmCritics = freezed,
  }) {
    return _then(_value.copyWith(
      kp: freezed == kp
          ? _value.kp
          : kp // ignore: cast_nullable_to_non_nullable
              as num?,
      imdb: freezed == imdb
          ? _value.imdb
          : imdb // ignore: cast_nullable_to_non_nullable
              as num?,
      tmdb: freezed == tmdb
          ? _value.tmdb
          : tmdb // ignore: cast_nullable_to_non_nullable
              as num?,
      filmCritics: freezed == filmCritics
          ? _value.filmCritics
          : filmCritics // ignore: cast_nullable_to_non_nullable
              as num?,
      russianFilmCritics: freezed == russianFilmCritics
          ? _value.russianFilmCritics
          : russianFilmCritics // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingImplCopyWith<$Res> implements $RatingCopyWith<$Res> {
  factory _$$RatingImplCopyWith(
          _$RatingImpl value, $Res Function(_$RatingImpl) then) =
      __$$RatingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num? kp,
      num? imdb,
      num? tmdb,
      num? filmCritics,
      num? russianFilmCritics});
}

/// @nodoc
class __$$RatingImplCopyWithImpl<$Res>
    extends _$RatingCopyWithImpl<$Res, _$RatingImpl>
    implements _$$RatingImplCopyWith<$Res> {
  __$$RatingImplCopyWithImpl(
      _$RatingImpl _value, $Res Function(_$RatingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kp = freezed,
    Object? imdb = freezed,
    Object? tmdb = freezed,
    Object? filmCritics = freezed,
    Object? russianFilmCritics = freezed,
  }) {
    return _then(_$RatingImpl(
      kp: freezed == kp
          ? _value.kp
          : kp // ignore: cast_nullable_to_non_nullable
              as num?,
      imdb: freezed == imdb
          ? _value.imdb
          : imdb // ignore: cast_nullable_to_non_nullable
              as num?,
      tmdb: freezed == tmdb
          ? _value.tmdb
          : tmdb // ignore: cast_nullable_to_non_nullable
              as num?,
      filmCritics: freezed == filmCritics
          ? _value.filmCritics
          : filmCritics // ignore: cast_nullable_to_non_nullable
              as num?,
      russianFilmCritics: freezed == russianFilmCritics
          ? _value.russianFilmCritics
          : russianFilmCritics // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingImpl implements _Rating {
  _$RatingImpl(
      {required this.kp,
      required this.imdb,
      required this.tmdb,
      required this.filmCritics,
      required this.russianFilmCritics});

  factory _$RatingImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingImplFromJson(json);

  @override
  final num? kp;
  @override
  final num? imdb;
  @override
  final num? tmdb;
  @override
  final num? filmCritics;
  @override
  final num? russianFilmCritics;

  @override
  String toString() {
    return 'Rating(kp: $kp, imdb: $imdb, tmdb: $tmdb, filmCritics: $filmCritics, russianFilmCritics: $russianFilmCritics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingImpl &&
            (identical(other.kp, kp) || other.kp == kp) &&
            (identical(other.imdb, imdb) || other.imdb == imdb) &&
            (identical(other.tmdb, tmdb) || other.tmdb == tmdb) &&
            (identical(other.filmCritics, filmCritics) ||
                other.filmCritics == filmCritics) &&
            (identical(other.russianFilmCritics, russianFilmCritics) ||
                other.russianFilmCritics == russianFilmCritics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, kp, imdb, tmdb, filmCritics, russianFilmCritics);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingImplCopyWith<_$RatingImpl> get copyWith =>
      __$$RatingImplCopyWithImpl<_$RatingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingImplToJson(
      this,
    );
  }
}

abstract class _Rating implements Rating {
  factory _Rating(
      {required final num? kp,
      required final num? imdb,
      required final num? tmdb,
      required final num? filmCritics,
      required final num? russianFilmCritics}) = _$RatingImpl;

  factory _Rating.fromJson(Map<String, dynamic> json) = _$RatingImpl.fromJson;

  @override
  num? get kp;
  @override
  num? get imdb;
  @override
  num? get tmdb;
  @override
  num? get filmCritics;
  @override
  num? get russianFilmCritics;
  @override
  @JsonKey(ignore: true)
  _$$RatingImplCopyWith<_$RatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
