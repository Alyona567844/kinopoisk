// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poster.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Poster _$PosterFromJson(Map<String, dynamic> json) {
  return _Poster.fromJson(json);
}

/// @nodoc
mixin _$Poster {
  String get url => throw _privateConstructorUsedError;
  String get previewUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PosterCopyWith<Poster> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosterCopyWith<$Res> {
  factory $PosterCopyWith(Poster value, $Res Function(Poster) then) =
      _$PosterCopyWithImpl<$Res, Poster>;
  @useResult
  $Res call({String url, String previewUrl});
}

/// @nodoc
class _$PosterCopyWithImpl<$Res, $Val extends Poster>
    implements $PosterCopyWith<$Res> {
  _$PosterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? previewUrl = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      previewUrl: null == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PosterImplCopyWith<$Res> implements $PosterCopyWith<$Res> {
  factory _$$PosterImplCopyWith(
          _$PosterImpl value, $Res Function(_$PosterImpl) then) =
      __$$PosterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String previewUrl});
}

/// @nodoc
class __$$PosterImplCopyWithImpl<$Res>
    extends _$PosterCopyWithImpl<$Res, _$PosterImpl>
    implements _$$PosterImplCopyWith<$Res> {
  __$$PosterImplCopyWithImpl(
      _$PosterImpl _value, $Res Function(_$PosterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? previewUrl = null,
  }) {
    return _then(_$PosterImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      previewUrl: null == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PosterImpl implements _Poster {
  _$PosterImpl({required this.url, required this.previewUrl});

  factory _$PosterImpl.fromJson(Map<String, dynamic> json) =>
      _$$PosterImplFromJson(json);

  @override
  final String url;
  @override
  final String previewUrl;

  @override
  String toString() {
    return 'Poster(url: $url, previewUrl: $previewUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PosterImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.previewUrl, previewUrl) ||
                other.previewUrl == previewUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, previewUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PosterImplCopyWith<_$PosterImpl> get copyWith =>
      __$$PosterImplCopyWithImpl<_$PosterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PosterImplToJson(
      this,
    );
  }
}

abstract class _Poster implements Poster {
  factory _Poster(
      {required final String url,
      required final String previewUrl}) = _$PosterImpl;

  factory _Poster.fromJson(Map<String, dynamic> json) = _$PosterImpl.fromJson;

  @override
  String get url;
  @override
  String get previewUrl;
  @override
  @JsonKey(ignore: true)
  _$$PosterImplCopyWith<_$PosterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
