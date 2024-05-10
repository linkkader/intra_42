// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenBody _$TokenBodyFromJson(Map<String, dynamic> json) {
  return _TokenBody.fromJson(json);
}

/// @nodoc
mixin _$TokenBody {
  @JsonKey(name: 'access_token')
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_type')
  String? get tokenType => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires_in')
  int? get expiresIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String? get refreshToken => throw _privateConstructorUsedError;
  String? get scope => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  int? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenBodyCopyWith<TokenBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenBodyCopyWith<$Res> {
  factory $TokenBodyCopyWith(TokenBody value, $Res Function(TokenBody) then) =
      _$TokenBodyCopyWithImpl<$Res, TokenBody>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'token_type') String? tokenType,
      @JsonKey(name: 'expires_in') int? expiresIn,
      @JsonKey(name: 'refresh_token') String? refreshToken,
      String? scope,
      @JsonKey(name: 'created_at') int? createdAt});
}

/// @nodoc
class _$TokenBodyCopyWithImpl<$Res, $Val extends TokenBody>
    implements $TokenBodyCopyWith<$Res> {
  _$TokenBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? tokenType = freezed,
    Object? expiresIn = freezed,
    Object? refreshToken = freezed,
    Object? scope = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenType: freezed == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresIn: freezed == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenBodyImplCopyWith<$Res>
    implements $TokenBodyCopyWith<$Res> {
  factory _$$TokenBodyImplCopyWith(
          _$TokenBodyImpl value, $Res Function(_$TokenBodyImpl) then) =
      __$$TokenBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'token_type') String? tokenType,
      @JsonKey(name: 'expires_in') int? expiresIn,
      @JsonKey(name: 'refresh_token') String? refreshToken,
      String? scope,
      @JsonKey(name: 'created_at') int? createdAt});
}

/// @nodoc
class __$$TokenBodyImplCopyWithImpl<$Res>
    extends _$TokenBodyCopyWithImpl<$Res, _$TokenBodyImpl>
    implements _$$TokenBodyImplCopyWith<$Res> {
  __$$TokenBodyImplCopyWithImpl(
      _$TokenBodyImpl _value, $Res Function(_$TokenBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? tokenType = freezed,
    Object? expiresIn = freezed,
    Object? refreshToken = freezed,
    Object? scope = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$TokenBodyImpl(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenType: freezed == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresIn: freezed == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenBodyImpl implements _TokenBody {
  const _$TokenBodyImpl(
      {@JsonKey(name: 'access_token') this.accessToken,
      @JsonKey(name: 'token_type') this.tokenType,
      @JsonKey(name: 'expires_in') this.expiresIn,
      @JsonKey(name: 'refresh_token') this.refreshToken,
      this.scope,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$TokenBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenBodyImplFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String? accessToken;
  @override
  @JsonKey(name: 'token_type')
  final String? tokenType;
  @override
  @JsonKey(name: 'expires_in')
  final int? expiresIn;
  @override
  @JsonKey(name: 'refresh_token')
  final String? refreshToken;
  @override
  final String? scope;
  @override
  @JsonKey(name: 'created_at')
  final int? createdAt;

  @override
  String toString() {
    return 'TokenBody(accessToken: $accessToken, tokenType: $tokenType, expiresIn: $expiresIn, refreshToken: $refreshToken, scope: $scope, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenBodyImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, tokenType,
      expiresIn, refreshToken, scope, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenBodyImplCopyWith<_$TokenBodyImpl> get copyWith =>
      __$$TokenBodyImplCopyWithImpl<_$TokenBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenBodyImplToJson(
      this,
    );
  }
}

abstract class _TokenBody implements TokenBody {
  const factory _TokenBody(
      {@JsonKey(name: 'access_token') final String? accessToken,
      @JsonKey(name: 'token_type') final String? tokenType,
      @JsonKey(name: 'expires_in') final int? expiresIn,
      @JsonKey(name: 'refresh_token') final String? refreshToken,
      final String? scope,
      @JsonKey(name: 'created_at') final int? createdAt}) = _$TokenBodyImpl;

  factory _TokenBody.fromJson(Map<String, dynamic> json) =
      _$TokenBodyImpl.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String? get accessToken;
  @override
  @JsonKey(name: 'token_type')
  String? get tokenType;
  @override
  @JsonKey(name: 'expires_in')
  int? get expiresIn;
  @override
  @JsonKey(name: 'refresh_token')
  String? get refreshToken;
  @override
  String? get scope;
  @override
  @JsonKey(name: 'created_at')
  int? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$TokenBodyImplCopyWith<_$TokenBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
