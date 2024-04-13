import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies.freezed.dart';
part 'movies.g.dart';

@freezed
class Movies with _$Movies {

  factory Movies({
    required String picture,
    required String name,
    required num category,
    required int year,
    required String genre,
    required String country,
    required String description,
  }) = _Movies;

  factory Movies.fromJson(Map<String, dynamic> json) => _$MoviesFromJson(json);
}