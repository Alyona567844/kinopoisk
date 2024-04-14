// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RatingImpl _$$RatingImplFromJson(Map<String, dynamic> json) => _$RatingImpl(
      kp: json['kp'] as num?,
      imdb: json['imdb'] as num?,
      tmdb: json['tmdb'] as num?,
      filmCritics: json['filmCritics'] as num?,
      russianFilmCritics: json['russianFilmCritics'] as num?,
    );

Map<String, dynamic> _$$RatingImplToJson(_$RatingImpl instance) =>
    <String, dynamic>{
      'kp': instance.kp,
      'imdb': instance.imdb,
      'tmdb': instance.tmdb,
      'filmCritics': instance.filmCritics,
      'russianFilmCritics': instance.russianFilmCritics,
    };
