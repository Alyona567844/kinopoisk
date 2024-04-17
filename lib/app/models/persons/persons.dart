import 'package:freezed_annotation/freezed_annotation.dart';

part 'persons.freezed.dart';
part 'persons.g.dart';

@freezed
class Persons with _$Persons {

  factory Persons({
    required String? photo,
    required String? name,
  }) = _Persons;

  factory Persons.fromJson(Map<String, dynamic> json) => _$PersonsFromJson(json);
}