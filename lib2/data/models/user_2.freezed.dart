// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User2 _$User2FromJson(Map<String, dynamic> json) {
  return _User2.fromJson(json);
}

/// @nodoc
mixin _$User2 {
  String? get name => throw _privateConstructorUsedError;
  String? get login => throw _privateConstructorUsedError;
  String? get img => throw _privateConstructorUsedError;
  DateTime? get bhDate => throw _privateConstructorUsedError;
  String? get campusName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $User2CopyWith<User2> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $User2CopyWith<$Res> {
  factory $User2CopyWith(User2 value, $Res Function(User2) then) =
      _$User2CopyWithImpl<$Res, User2>;
  @useResult
  $Res call(
      {String? name,
      String? login,
      String? img,
      DateTime? bhDate,
      String? campusName});
}

/// @nodoc
class _$User2CopyWithImpl<$Res, $Val extends User2>
    implements $User2CopyWith<$Res> {
  _$User2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? login = freezed,
    Object? img = freezed,
    Object? bhDate = freezed,
    Object? campusName = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      bhDate: freezed == bhDate
          ? _value.bhDate
          : bhDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      campusName: freezed == campusName
          ? _value.campusName
          : campusName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$User2ImplCopyWith<$Res> implements $User2CopyWith<$Res> {
  factory _$$User2ImplCopyWith(
          _$User2Impl value, $Res Function(_$User2Impl) then) =
      __$$User2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? login,
      String? img,
      DateTime? bhDate,
      String? campusName});
}

/// @nodoc
class __$$User2ImplCopyWithImpl<$Res>
    extends _$User2CopyWithImpl<$Res, _$User2Impl>
    implements _$$User2ImplCopyWith<$Res> {
  __$$User2ImplCopyWithImpl(
      _$User2Impl _value, $Res Function(_$User2Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? login = freezed,
    Object? img = freezed,
    Object? bhDate = freezed,
    Object? campusName = freezed,
  }) {
    return _then(_$User2Impl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      bhDate: freezed == bhDate
          ? _value.bhDate
          : bhDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      campusName: freezed == campusName
          ? _value.campusName
          : campusName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$User2Impl implements _User2 {
  const _$User2Impl(
      {this.name, this.login, this.img, this.bhDate, this.campusName});

  factory _$User2Impl.fromJson(Map<String, dynamic> json) =>
      _$$User2ImplFromJson(json);

  @override
  final String? name;
  @override
  final String? login;
  @override
  final String? img;
  @override
  final DateTime? bhDate;
  @override
  final String? campusName;

  @override
  String toString() {
    return 'User2(name: $name, login: $login, img: $img, bhDate: $bhDate, campusName: $campusName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$User2Impl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.bhDate, bhDate) || other.bhDate == bhDate) &&
            (identical(other.campusName, campusName) ||
                other.campusName == campusName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, login, img, bhDate, campusName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$User2ImplCopyWith<_$User2Impl> get copyWith =>
      __$$User2ImplCopyWithImpl<_$User2Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$User2ImplToJson(
      this,
    );
  }
}

abstract class _User2 implements User2 {
  const factory _User2(
      {final String? name,
      final String? login,
      final String? img,
      final DateTime? bhDate,
      final String? campusName}) = _$User2Impl;

  factory _User2.fromJson(Map<String, dynamic> json) = _$User2Impl.fromJson;

  @override
  String? get name;
  @override
  String? get login;
  @override
  String? get img;
  @override
  DateTime? get bhDate;
  @override
  String? get campusName;
  @override
  @JsonKey(ignore: true)
  _$$User2ImplCopyWith<_$User2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
