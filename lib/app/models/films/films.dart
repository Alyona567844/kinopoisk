import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kinopoisk/app/models/countries/countries.dart';
import 'package:kinopoisk/app/models/genres/genres.dart';

part 'films.freezed.dart';
part 'films.g.dart';

@freezed
class Films with _$Films {

  factory Films({
    required int id,
    required String name,
    required int year,
    required String description,
    // required double rating,
    // poster,
    required int ageRating,
    required List<Genres> genres,
    required List<Countries> countries,
  }) = _Films;

  factory Films.fromJson(Map<String, dynamic> json) => _$FilmsFromJson(json);
}