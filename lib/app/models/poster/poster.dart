import 'package:freezed_annotation/freezed_annotation.dart';

part 'poster.freezed.dart';
part 'poster.g.dart';

@freezed
class Poster with _$Poster {

  factory Poster({
    required String url,
    required String previewUrl,
  }) = _Poster;

  factory Poster.fromJson(Map<String, dynamic> json) => _$PosterFromJson(json);
}