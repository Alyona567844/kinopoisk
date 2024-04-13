// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'films.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilmsImpl _$$FilmsImplFromJson(Map<String, dynamic> json) => _$FilmsImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      year: json['year'] as int,
      description: json['description'] as String,
      ageRating: json['ageRating'] as int,
      genres: (json['genres'] as List<dynamic>)
          .map((e) => Genres.fromJson(e as Map<String, dynamic>))
          .toList(),
      countries: (json['countries'] as List<dynamic>)
          .map((e) => Countries.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FilmsImplToJson(_$FilmsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'year': instance.year,
      'description': instance.description,
      'ageRating': instance.ageRating,
      'genres': instance.genres,
      'countries': instance.countries,
    };
