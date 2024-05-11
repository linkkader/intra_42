// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expertise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Expertise _$ExpertiseFromJson(Map<String, dynamic> json) {
  return _Expertise.fromJson(json);
}

/// @nodoc
mixin _$Expertise {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get kind => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'expertises_users_url')
  String? get expertisesUsersUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpertiseCopyWith<Expertise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpertiseCopyWith<$Res> {
  factory $ExpertiseCopyWith(Expertise value, $Res Function(Expertise) then) =
      _$ExpertiseCopyWithImpl<$Res, Expertise>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? slug,
      String? url,
      String? kind,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'expertises_users_url') String? expertisesUsersUrl});
}

/// @nodoc
class _$ExpertiseCopyWithImpl<$Res, $Val extends Expertise>
    implements $ExpertiseCopyWith<$Res> {
  _$ExpertiseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? url = freezed,
    Object? kind = freezed,
    Object? createdAt = freezed,
    Object? expertisesUsersUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expertisesUsersUrl: freezed == expertisesUsersUrl
          ? _value.expertisesUsersUrl
          : expertisesUsersUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpertiseImplCopyWith<$Res>
    implements $ExpertiseCopyWith<$Res> {
  factory _$$ExpertiseImplCopyWith(
          _$ExpertiseImpl value, $Res Function(_$ExpertiseImpl) then) =
      __$$ExpertiseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? slug,
      String? url,
      String? kind,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'expertises_users_url') String? expertisesUsersUrl});
}

/// @nodoc
class __$$ExpertiseImplCopyWithImpl<$Res>
    extends _$ExpertiseCopyWithImpl<$Res, _$ExpertiseImpl>
    implements _$$ExpertiseImplCopyWith<$Res> {
  __$$ExpertiseImplCopyWithImpl(
      _$ExpertiseImpl _value, $Res Function(_$ExpertiseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? url = freezed,
    Object? kind = freezed,
    Object? createdAt = freezed,
    Object? expertisesUsersUrl = freezed,
  }) {
    return _then(_$ExpertiseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expertisesUsersUrl: freezed == expertisesUsersUrl
          ? _value.expertisesUsersUrl
          : expertisesUsersUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpertiseImpl implements _Expertise {
  const _$ExpertiseImpl(
      {this.id,
      this.name,
      this.slug,
      this.url,
      this.kind,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'expertises_users_url') this.expertisesUsersUrl});

  factory _$ExpertiseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpertiseImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? slug;
  @override
  final String? url;
  @override
  final String? kind;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'expertises_users_url')
  final String? expertisesUsersUrl;

  @override
  String toString() {
    return 'Expertise(id: $id, name: $name, slug: $slug, url: $url, kind: $kind, createdAt: $createdAt, expertisesUsersUrl: $expertisesUsersUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpertiseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expertisesUsersUrl, expertisesUsersUrl) ||
                other.expertisesUsersUrl == expertisesUsersUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, slug, url, kind, createdAt, expertisesUsersUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpertiseImplCopyWith<_$ExpertiseImpl> get copyWith =>
      __$$ExpertiseImplCopyWithImpl<_$ExpertiseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpertiseImplToJson(
      this,
    );
  }
}

abstract class _Expertise implements Expertise {
  const factory _Expertise(
      {final int? id,
      final String? name,
      final String? slug,
      final String? url,
      final String? kind,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'expertises_users_url')
      final String? expertisesUsersUrl}) = _$ExpertiseImpl;

  factory _Expertise.fromJson(Map<String, dynamic> json) =
      _$ExpertiseImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get slug;
  @override
  String? get url;
  @override
  String? get kind;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'expertises_users_url')
  String? get expertisesUsersUrl;
  @override
  @JsonKey(ignore: true)
  _$$ExpertiseImplCopyWith<_$ExpertiseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
