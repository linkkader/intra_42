// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User2 _$User2FromJson(Map<String, dynamic> json) {
  return _User2.fromJson(json);
}

/// @nodoc
mixin _$User2 {
  String get name => throw _privateConstructorUsedError;
  String get login => throw _privateConstructorUsedError;
  String get img => throw _privateConstructorUsedError;
  DateTime get bhDate => throw _privateConstructorUsedError;
  String get campusName => throw _privateConstructorUsedError;

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
      {String name,
      String login,
      String img,
      DateTime bhDate,
      String campusName});
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
    Object? name = null,
    Object? login = null,
    Object? img = null,
    Object? bhDate = null,
    Object? campusName = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      bhDate: null == bhDate
          ? _value.bhDate
          : bhDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      campusName: null == campusName
          ? _value.campusName
          : campusName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_User2CopyWith<$Res> implements $User2CopyWith<$Res> {
  factory _$$_User2CopyWith(_$_User2 value, $Res Function(_$_User2) then) =
      __$$_User2CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String login,
      String img,
      DateTime bhDate,
      String campusName});
}

/// @nodoc
class __$$_User2CopyWithImpl<$Res> extends _$User2CopyWithImpl<$Res, _$_User2>
    implements _$$_User2CopyWith<$Res> {
  __$$_User2CopyWithImpl(_$_User2 _value, $Res Function(_$_User2) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? login = null,
    Object? img = null,
    Object? bhDate = null,
    Object? campusName = null,
  }) {
    return _then(_$_User2(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      bhDate: null == bhDate
          ? _value.bhDate
          : bhDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      campusName: null == campusName
          ? _value.campusName
          : campusName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User2 implements _User2 {
  const _$_User2(
      {required this.name,
      required this.login,
      required this.img,
      required this.bhDate,
      required this.campusName});

  factory _$_User2.fromJson(Map<String, dynamic> json) =>
      _$$_User2FromJson(json);

  @override
  final String name;
  @override
  final String login;
  @override
  final String img;
  @override
  final DateTime bhDate;
  @override
  final String campusName;

  @override
  String toString() {
    return 'User2(name: $name, login: $login, img: $img, bhDate: $bhDate, campusName: $campusName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User2 &&
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
  _$$_User2CopyWith<_$_User2> get copyWith =>
      __$$_User2CopyWithImpl<_$_User2>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_User2ToJson(
      this,
    );
  }
}

abstract class _User2 implements User2 {
  const factory _User2(
      {required final String name,
      required final String login,
      required final String img,
      required final DateTime bhDate,
      required final String campusName}) = _$_User2;

  factory _User2.fromJson(Map<String, dynamic> json) = _$_User2.fromJson;

  @override
  String get name;
  @override
  String get login;
  @override
  String get img;
  @override
  DateTime get bhDate;
  @override
  String get campusName;
  @override
  @JsonKey(ignore: true)
  _$$_User2CopyWith<_$_User2> get copyWith =>
      throw _privateConstructorUsedError;
}
