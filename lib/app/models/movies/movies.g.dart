// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoviesImpl _$$MoviesImplFromJson(Map<String, dynamic> json) => _$MoviesImpl(
      picture: json['picture'] as String,
      name: json['name'] as String,
      category: json['category'] as num,
      year: json['year'] as int,
      genre: json['genre'] as String,
      country: json['country'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$MoviesImplToJson(_$MoviesImpl instance) =>
    <String, dynamic>{
      'picture': instance.picture,
      'name': instance.name,
      'category': instance.category,
      'year': instance.year,
      'genre': instance.genre,
      'country': instance.country,
      'description': instance.description,
    };
