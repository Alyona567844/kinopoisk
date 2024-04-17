// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'persons.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Persons _$PersonsFromJson(Map<String, dynamic> json) {
  return _Persons.fromJson(json);
}

/// @nodoc
mixin _$Persons {
  String? get photo => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonsCopyWith<Persons> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonsCopyWith<$Res> {
  factory $PersonsCopyWith(Persons value, $Res Function(Persons) then) =
      _$PersonsCopyWithImpl<$Res, Persons>;
  @useResult
  $Res call({String? photo, String? name});
}

/// @nodoc
class _$PersonsCopyWithImpl<$Res, $Val extends Persons>
    implements $PersonsCopyWith<$Res> {
  _$PersonsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonsImplCopyWith<$Res> implements $PersonsCopyWith<$Res> {
  factory _$$PersonsImplCopyWith(
          _$PersonsImpl value, $Res Function(_$PersonsImpl) then) =
      __$$PersonsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? photo, String? name});
}

/// @nodoc
class __$$PersonsImplCopyWithImpl<$Res>
    extends _$PersonsCopyWithImpl<$Res, _$PersonsImpl>
    implements _$$PersonsImplCopyWith<$Res> {
  __$$PersonsImplCopyWithImpl(
      _$PersonsImpl _value, $Res Function(_$PersonsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = freezed,
    Object? name = freezed,
  }) {
    return _then(_$PersonsImpl(
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonsImpl implements _Persons {
  _$PersonsImpl({required this.photo, required this.name});

  factory _$PersonsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonsImplFromJson(json);

  @override
  final String? photo;
  @override
  final String? name;

  @override
  String toString() {
    return 'Persons(photo: $photo, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonsImpl &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, photo, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonsImplCopyWith<_$PersonsImpl> get copyWith =>
      __$$PersonsImplCopyWithImpl<_$PersonsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonsImplToJson(
      this,
    );
  }
}

abstract class _Persons implements Persons {
  factory _Persons(
      {required final String? photo,
      required final String? name}) = _$PersonsImpl;

  factory _Persons.fromJson(Map<String, dynamic> json) = _$PersonsImpl.fromJson;

  @override
  String? get photo;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$PersonsImplCopyWith<_$PersonsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
