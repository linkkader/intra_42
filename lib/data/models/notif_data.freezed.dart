// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notif_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotifData _$NotifDataFromJson(Map<String, dynamic> json) {
  return _NotifData.fromJson(json);
}

/// @nodoc
mixin _$NotifData {
  int? get id => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get kind => throw _privateConstructorUsedError;
  dynamic get image => throw _privateConstructorUsedError;
  DateTime? get expireAt => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  dynamic get concern => throw _privateConstructorUsedError;
  @JsonKey(name: 'notification_id')
  int? get notificationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  bool? get read => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotifDataCopyWith<NotifData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotifDataCopyWith<$Res> {
  factory $NotifDataCopyWith(NotifData value, $Res Function(NotifData) then) =
      _$NotifDataCopyWithImpl<$Res, NotifData>;
  @useResult
  $Res call(
      {int? id,
      String? author,
      String? title,
      String? text,
      String? kind,
      dynamic image,
      DateTime? expireAt,
      String? link,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      dynamic concern,
      @JsonKey(name: 'notification_id') int? notificationId,
      @JsonKey(name: 'user_id') int? userId,
      bool? read});
}

/// @nodoc
class _$NotifDataCopyWithImpl<$Res, $Val extends NotifData>
    implements $NotifDataCopyWith<$Res> {
  _$NotifDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? author = freezed,
    Object? title = freezed,
    Object? text = freezed,
    Object? kind = freezed,
    Object? image = freezed,
    Object? expireAt = freezed,
    Object? link = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? concern = freezed,
    Object? notificationId = freezed,
    Object? userId = freezed,
    Object? read = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
      expireAt: freezed == expireAt
          ? _value.expireAt
          : expireAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      concern: freezed == concern
          ? _value.concern
          : concern // ignore: cast_nullable_to_non_nullable
              as dynamic,
      notificationId: freezed == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      read: freezed == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotifDataImplCopyWith<$Res>
    implements $NotifDataCopyWith<$Res> {
  factory _$$NotifDataImplCopyWith(
          _$NotifDataImpl value, $Res Function(_$NotifDataImpl) then) =
      __$$NotifDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? author,
      String? title,
      String? text,
      String? kind,
      dynamic image,
      DateTime? expireAt,
      String? link,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      dynamic concern,
      @JsonKey(name: 'notification_id') int? notificationId,
      @JsonKey(name: 'user_id') int? userId,
      bool? read});
}

/// @nodoc
class __$$NotifDataImplCopyWithImpl<$Res>
    extends _$NotifDataCopyWithImpl<$Res, _$NotifDataImpl>
    implements _$$NotifDataImplCopyWith<$Res> {
  __$$NotifDataImplCopyWithImpl(
      _$NotifDataImpl _value, $Res Function(_$NotifDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? author = freezed,
    Object? title = freezed,
    Object? text = freezed,
    Object? kind = freezed,
    Object? image = freezed,
    Object? expireAt = freezed,
    Object? link = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? concern = freezed,
    Object? notificationId = freezed,
    Object? userId = freezed,
    Object? read = freezed,
  }) {
    return _then(_$NotifDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
      expireAt: freezed == expireAt
          ? _value.expireAt
          : expireAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      concern: freezed == concern
          ? _value.concern
          : concern // ignore: cast_nullable_to_non_nullable
              as dynamic,
      notificationId: freezed == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      read: freezed == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotifDataImpl implements _NotifData {
  const _$NotifDataImpl(
      {this.id,
      this.author,
      this.title,
      this.text,
      this.kind,
      this.image,
      this.expireAt,
      this.link,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.concern,
      @JsonKey(name: 'notification_id') this.notificationId,
      @JsonKey(name: 'user_id') this.userId,
      this.read});

  factory _$NotifDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotifDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? author;
  @override
  final String? title;
  @override
  final String? text;
  @override
  final String? kind;
  @override
  final dynamic image;
  @override
  final DateTime? expireAt;
  @override
  final String? link;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  final dynamic concern;
  @override
  @JsonKey(name: 'notification_id')
  final int? notificationId;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  final bool? read;

  @override
  String toString() {
    return 'NotifData(id: $id, author: $author, title: $title, text: $text, kind: $kind, image: $image, expireAt: $expireAt, link: $link, createdAt: $createdAt, updatedAt: $updatedAt, concern: $concern, notificationId: $notificationId, userId: $userId, read: $read)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotifDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            (identical(other.expireAt, expireAt) ||
                other.expireAt == expireAt) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other.concern, concern) &&
            (identical(other.notificationId, notificationId) ||
                other.notificationId == notificationId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.read, read) || other.read == read));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      author,
      title,
      text,
      kind,
      const DeepCollectionEquality().hash(image),
      expireAt,
      link,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(concern),
      notificationId,
      userId,
      read);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotifDataImplCopyWith<_$NotifDataImpl> get copyWith =>
      __$$NotifDataImplCopyWithImpl<_$NotifDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotifDataImplToJson(
      this,
    );
  }
}

abstract class _NotifData implements NotifData {
  const factory _NotifData(
      {final int? id,
      final String? author,
      final String? title,
      final String? text,
      final String? kind,
      final dynamic image,
      final DateTime? expireAt,
      final String? link,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      final dynamic concern,
      @JsonKey(name: 'notification_id') final int? notificationId,
      @JsonKey(name: 'user_id') final int? userId,
      final bool? read}) = _$NotifDataImpl;

  factory _NotifData.fromJson(Map<String, dynamic> json) =
      _$NotifDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get author;
  @override
  String? get title;
  @override
  String? get text;
  @override
  String? get kind;
  @override
  dynamic get image;
  @override
  DateTime? get expireAt;
  @override
  String? get link;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  dynamic get concern;
  @override
  @JsonKey(name: 'notification_id')
  int? get notificationId;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  bool? get read;
  @override
  @JsonKey(ignore: true)
  _$$NotifDataImplCopyWith<_$NotifDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
