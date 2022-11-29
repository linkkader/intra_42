// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cluster_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClusterItem _$ClusterItemFromJson(Map<String, dynamic> json) {
  return _ClusterItem.fromJson(json);
}

/// @nodoc
mixin _$ClusterItem {
  String? get host => throw _privateConstructorUsedError;
  @JsonKey(name: 'begin_at')
  String? get beginAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_at')
  String? get endAt => throw _privateConstructorUsedError;
  String? get login => throw _privateConstructorUsedError;
  @JsonKey(name: 'cdn_uri')
  String? get cdnUri => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'campus_id')
  int? get campusId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClusterItemCopyWith<ClusterItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClusterItemCopyWith<$Res> {
  factory $ClusterItemCopyWith(
          ClusterItem value, $Res Function(ClusterItem) then) =
      _$ClusterItemCopyWithImpl<$Res, ClusterItem>;
  @useResult
  $Res call(
      {String? host,
      @JsonKey(name: 'begin_at') String? beginAt,
      @JsonKey(name: 'end_at') String? endAt,
      String? login,
      @JsonKey(name: 'cdn_uri') String? cdnUri,
      String? image,
      @JsonKey(name: 'campus_id') int? campusId});
}

/// @nodoc
class _$ClusterItemCopyWithImpl<$Res, $Val extends ClusterItem>
    implements $ClusterItemCopyWith<$Res> {
  _$ClusterItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = freezed,
    Object? beginAt = freezed,
    Object? endAt = freezed,
    Object? login = freezed,
    Object? cdnUri = freezed,
    Object? image = freezed,
    Object? campusId = freezed,
  }) {
    return _then(_value.copyWith(
      host: freezed == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String?,
      beginAt: freezed == beginAt
          ? _value.beginAt
          : beginAt // ignore: cast_nullable_to_non_nullable
              as String?,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as String?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      cdnUri: freezed == cdnUri
          ? _value.cdnUri
          : cdnUri // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      campusId: freezed == campusId
          ? _value.campusId
          : campusId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClusterItemCopyWith<$Res>
    implements $ClusterItemCopyWith<$Res> {
  factory _$$_ClusterItemCopyWith(
          _$_ClusterItem value, $Res Function(_$_ClusterItem) then) =
      __$$_ClusterItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? host,
      @JsonKey(name: 'begin_at') String? beginAt,
      @JsonKey(name: 'end_at') String? endAt,
      String? login,
      @JsonKey(name: 'cdn_uri') String? cdnUri,
      String? image,
      @JsonKey(name: 'campus_id') int? campusId});
}

/// @nodoc
class __$$_ClusterItemCopyWithImpl<$Res>
    extends _$ClusterItemCopyWithImpl<$Res, _$_ClusterItem>
    implements _$$_ClusterItemCopyWith<$Res> {
  __$$_ClusterItemCopyWithImpl(
      _$_ClusterItem _value, $Res Function(_$_ClusterItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = freezed,
    Object? beginAt = freezed,
    Object? endAt = freezed,
    Object? login = freezed,
    Object? cdnUri = freezed,
    Object? image = freezed,
    Object? campusId = freezed,
  }) {
    return _then(_$_ClusterItem(
      host: freezed == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String?,
      beginAt: freezed == beginAt
          ? _value.beginAt
          : beginAt // ignore: cast_nullable_to_non_nullable
              as String?,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as String?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      cdnUri: freezed == cdnUri
          ? _value.cdnUri
          : cdnUri // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      campusId: freezed == campusId
          ? _value.campusId
          : campusId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClusterItem implements _ClusterItem {
  const _$_ClusterItem(
      {this.host,
      @JsonKey(name: 'begin_at') this.beginAt,
      @JsonKey(name: 'end_at') this.endAt,
      this.login,
      @JsonKey(name: 'cdn_uri') this.cdnUri,
      this.image,
      @JsonKey(name: 'campus_id') this.campusId});

  factory _$_ClusterItem.fromJson(Map<String, dynamic> json) =>
      _$$_ClusterItemFromJson(json);

  @override
  final String? host;
  @override
  @JsonKey(name: 'begin_at')
  final String? beginAt;
  @override
  @JsonKey(name: 'end_at')
  final String? endAt;
  @override
  final String? login;
  @override
  @JsonKey(name: 'cdn_uri')
  final String? cdnUri;
  @override
  final String? image;
  @override
  @JsonKey(name: 'campus_id')
  final int? campusId;

  @override
  String toString() {
    return 'ClusterItem(host: $host, beginAt: $beginAt, endAt: $endAt, login: $login, cdnUri: $cdnUri, image: $image, campusId: $campusId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClusterItem &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.beginAt, beginAt) || other.beginAt == beginAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.cdnUri, cdnUri) || other.cdnUri == cdnUri) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.campusId, campusId) ||
                other.campusId == campusId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, host, beginAt, endAt, login, cdnUri, image, campusId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClusterItemCopyWith<_$_ClusterItem> get copyWith =>
      __$$_ClusterItemCopyWithImpl<_$_ClusterItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClusterItemToJson(
      this,
    );
  }
}

abstract class _ClusterItem implements ClusterItem {
  const factory _ClusterItem(
      {final String? host,
      @JsonKey(name: 'begin_at') final String? beginAt,
      @JsonKey(name: 'end_at') final String? endAt,
      final String? login,
      @JsonKey(name: 'cdn_uri') final String? cdnUri,
      final String? image,
      @JsonKey(name: 'campus_id') final int? campusId}) = _$_ClusterItem;

  factory _ClusterItem.fromJson(Map<String, dynamic> json) =
      _$_ClusterItem.fromJson;

  @override
  String? get host;
  @override
  @JsonKey(name: 'begin_at')
  String? get beginAt;
  @override
  @JsonKey(name: 'end_at')
  String? get endAt;
  @override
  String? get login;
  @override
  @JsonKey(name: 'cdn_uri')
  String? get cdnUri;
  @override
  String? get image;
  @override
  @JsonKey(name: 'campus_id')
  int? get campusId;
  @override
  @JsonKey(ignore: true)
  _$$_ClusterItemCopyWith<_$_ClusterItem> get copyWith =>
      throw _privateConstructorUsedError;
}
