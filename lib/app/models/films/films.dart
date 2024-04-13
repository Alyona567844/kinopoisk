import 'package:freezed_annotation/freezed_annotation.dart';

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
    // required String genres,
    // required String countries,
  }) = _Films;

  factory Films.fromJson(Map<String, dynamic> json) => _$FilmsFromJson(json);
}