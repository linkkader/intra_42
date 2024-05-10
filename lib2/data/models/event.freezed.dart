// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Event _$EventFromJson(Map<String, dynamic> json) {
  return _Event.fromJson(json);
}

/// @nodoc
mixin _$Event {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get kind => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_people')
  int? get maxPeople => throw _privateConstructorUsedError;
  @JsonKey(name: 'nbr_subscribers')
  int? get nbrSubscribers => throw _privateConstructorUsedError;
  @JsonKey(name: 'begin_at')
  DateTime? get beginAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_at')
  DateTime? get endAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'campus_ids')
  List<int>? get campusIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'cursus_ids')
  List<int>? get cursusIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'prohibition_of_cancellation')
  int? get prohibitionOfCancellation => throw _privateConstructorUsedError;
  Waitlist? get waitlist => throw _privateConstructorUsedError;
  List<Theme>? get themes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventCopyWith<Event> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res, Event>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? location,
      String? kind,
      @JsonKey(name: 'max_people') int? maxPeople,
      @JsonKey(name: 'nbr_subscribers') int? nbrSubscribers,
      @JsonKey(name: 'begin_at') DateTime? beginAt,
      @JsonKey(name: 'end_at') DateTime? endAt,
      @JsonKey(name: 'campus_ids') List<int>? campusIds,
      @JsonKey(name: 'cursus_ids') List<int>? cursusIds,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'prohibition_of_cancellation')
      int? prohibitionOfCancellation,
      Waitlist? waitlist,
      List<Theme>? themes});

  $WaitlistCopyWith<$Res>? get waitlist;
}

/// @nodoc
class _$EventCopyWithImpl<$Res, $Val extends Event>
    implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? kind = freezed,
    Object? maxPeople = freezed,
    Object? nbrSubscribers = freezed,
    Object? beginAt = freezed,
    Object? endAt = freezed,
    Object? campusIds = freezed,
    Object? cursusIds = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? prohibitionOfCancellation = freezed,
    Object? waitlist = freezed,
    Object? themes = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      maxPeople: freezed == maxPeople
          ? _value.maxPeople
          : maxPeople // ignore: cast_nullable_to_non_nullable
              as int?,
      nbrSubscribers: freezed == nbrSubscribers
          ? _value.nbrSubscribers
          : nbrSubscribers // ignore: cast_nullable_to_non_nullable
              as int?,
      beginAt: freezed == beginAt
          ? _value.beginAt
          : beginAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      campusIds: freezed == campusIds
          ? _value.campusIds
          : campusIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      cursusIds: freezed == cursusIds
          ? _value.cursusIds
          : cursusIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      prohibitionOfCancellation: freezed == prohibitionOfCancellation
          ? _value.prohibitionOfCancellation
          : prohibitionOfCancellation // ignore: cast_nullable_to_non_nullable
              as int?,
      waitlist: freezed == waitlist
          ? _value.waitlist
          : waitlist // ignore: cast_nullable_to_non_nullable
              as Waitlist?,
      themes: freezed == themes
          ? _value.themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<Theme>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WaitlistCopyWith<$Res>? get waitlist {
    if (_value.waitlist == null) {
      return null;
    }

    return $WaitlistCopyWith<$Res>(_value.waitlist!, (value) {
      return _then(_value.copyWith(waitlist: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EventImplCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$$EventImplCopyWith(
          _$EventImpl value, $Res Function(_$EventImpl) then) =
      __$$EventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? location,
      String? kind,
      @JsonKey(name: 'max_people') int? maxPeople,
      @JsonKey(name: 'nbr_subscribers') int? nbrSubscribers,
      @JsonKey(name: 'begin_at') DateTime? beginAt,
      @JsonKey(name: 'end_at') DateTime? endAt,
      @JsonKey(name: 'campus_ids') List<int>? campusIds,
      @JsonKey(name: 'cursus_ids') List<int>? cursusIds,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'prohibition_of_cancellation')
      int? prohibitionOfCancellation,
      Waitlist? waitlist,
      List<Theme>? themes});

  @override
  $WaitlistCopyWith<$Res>? get waitlist;
}

/// @nodoc
class __$$EventImplCopyWithImpl<$Res>
    extends _$EventCopyWithImpl<$Res, _$EventImpl>
    implements _$$EventImplCopyWith<$Res> {
  __$$EventImplCopyWithImpl(
      _$EventImpl _value, $Res Function(_$EventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? kind = freezed,
    Object? maxPeople = freezed,
    Object? nbrSubscribers = freezed,
    Object? beginAt = freezed,
    Object? endAt = freezed,
    Object? campusIds = freezed,
    Object? cursusIds = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? prohibitionOfCancellation = freezed,
    Object? waitlist = freezed,
    Object? themes = freezed,
  }) {
    return _then(_$EventImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      maxPeople: freezed == maxPeople
          ? _value.maxPeople
          : maxPeople // ignore: cast_nullable_to_non_nullable
              as int?,
      nbrSubscribers: freezed == nbrSubscribers
          ? _value.nbrSubscribers
          : nbrSubscribers // ignore: cast_nullable_to_non_nullable
              as int?,
      beginAt: freezed == beginAt
          ? _value.beginAt
          : beginAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      campusIds: freezed == campusIds
          ? _value._campusIds
          : campusIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      cursusIds: freezed == cursusIds
          ? _value._cursusIds
          : cursusIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      prohibitionOfCancellation: freezed == prohibitionOfCancellation
          ? _value.prohibitionOfCancellation
          : prohibitionOfCancellation // ignore: cast_nullable_to_non_nullable
              as int?,
      waitlist: freezed == waitlist
          ? _value.waitlist
          : waitlist // ignore: cast_nullable_to_non_nullable
              as Waitlist?,
      themes: freezed == themes
          ? _value._themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<Theme>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventImpl implements _Event {
  const _$EventImpl(
      {this.id,
      this.name,
      this.description,
      this.location,
      this.kind,
      @JsonKey(name: 'max_people') this.maxPeople,
      @JsonKey(name: 'nbr_subscribers') this.nbrSubscribers,
      @JsonKey(name: 'begin_at') this.beginAt,
      @JsonKey(name: 'end_at') this.endAt,
      @JsonKey(name: 'campus_ids') final List<int>? campusIds,
      @JsonKey(name: 'cursus_ids') final List<int>? cursusIds,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'prohibition_of_cancellation')
      this.prohibitionOfCancellation,
      this.waitlist,
      final List<Theme>? themes})
      : _campusIds = campusIds,
        _cursusIds = cursusIds,
        _themes = themes;

  factory _$EventImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? location;
  @override
  final String? kind;
  @override
  @JsonKey(name: 'max_people')
  final int? maxPeople;
  @override
  @JsonKey(name: 'nbr_subscribers')
  final int? nbrSubscribers;
  @override
  @JsonKey(name: 'begin_at')
  final DateTime? beginAt;
  @override
  @JsonKey(name: 'end_at')
  final DateTime? endAt;
  final List<int>? _campusIds;
  @override
  @JsonKey(name: 'campus_ids')
  List<int>? get campusIds {
    final value = _campusIds;
    if (value == null) return null;
    if (_campusIds is EqualUnmodifiableListView) return _campusIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _cursusIds;
  @override
  @JsonKey(name: 'cursus_ids')
  List<int>? get cursusIds {
    final value = _cursusIds;
    if (value == null) return null;
    if (_cursusIds is EqualUnmodifiableListView) return _cursusIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'prohibition_of_cancellation')
  final int? prohibitionOfCancellation;
  @override
  final Waitlist? waitlist;
  final List<Theme>? _themes;
  @override
  List<Theme>? get themes {
    final value = _themes;
    if (value == null) return null;
    if (_themes is EqualUnmodifiableListView) return _themes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Event(id: $id, name: $name, description: $description, location: $location, kind: $kind, maxPeople: $maxPeople, nbrSubscribers: $nbrSubscribers, beginAt: $beginAt, endAt: $endAt, campusIds: $campusIds, cursusIds: $cursusIds, createdAt: $createdAt, updatedAt: $updatedAt, prohibitionOfCancellation: $prohibitionOfCancellation, waitlist: $waitlist, themes: $themes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.maxPeople, maxPeople) ||
                other.maxPeople == maxPeople) &&
            (identical(other.nbrSubscribers, nbrSubscribers) ||
                other.nbrSubscribers == nbrSubscribers) &&
            (identical(other.beginAt, beginAt) || other.beginAt == beginAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt) &&
            const DeepCollectionEquality()
                .equals(other._campusIds, _campusIds) &&
            const DeepCollectionEquality()
                .equals(other._cursusIds, _cursusIds) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.prohibitionOfCancellation,
                    prohibitionOfCancellation) ||
                other.prohibitionOfCancellation == prohibitionOfCancellation) &&
            (identical(other.waitlist, waitlist) ||
                other.waitlist == waitlist) &&
            const DeepCollectionEquality().equals(other._themes, _themes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      location,
      kind,
      maxPeople,
      nbrSubscribers,
      beginAt,
      endAt,
      const DeepCollectionEquality().hash(_campusIds),
      const DeepCollectionEquality().hash(_cursusIds),
      createdAt,
      updatedAt,
      prohibitionOfCancellation,
      waitlist,
      const DeepCollectionEquality().hash(_themes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      __$$EventImplCopyWithImpl<_$EventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventImplToJson(
      this,
    );
  }
}

abstract class _Event implements Event {
  const factory _Event(
      {final int? id,
      final String? name,
      final String? description,
      final String? location,
      final String? kind,
      @JsonKey(name: 'max_people') final int? maxPeople,
      @JsonKey(name: 'nbr_subscribers') final int? nbrSubscribers,
      @JsonKey(name: 'begin_at') final DateTime? beginAt,
      @JsonKey(name: 'end_at') final DateTime? endAt,
      @JsonKey(name: 'campus_ids') final List<int>? campusIds,
      @JsonKey(name: 'cursus_ids') final List<int>? cursusIds,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'prohibition_of_cancellation')
      final int? prohibitionOfCancellation,
      final Waitlist? waitlist,
      final List<Theme>? themes}) = _$EventImpl;

  factory _Event.fromJson(Map<String, dynamic> json) = _$EventImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get location;
  @override
  String? get kind;
  @override
  @JsonKey(name: 'max_people')
  int? get maxPeople;
  @override
  @JsonKey(name: 'nbr_subscribers')
  int? get nbrSubscribers;
  @override
  @JsonKey(name: 'begin_at')
  DateTime? get beginAt;
  @override
  @JsonKey(name: 'end_at')
  DateTime? get endAt;
  @override
  @JsonKey(name: 'campus_ids')
  List<int>? get campusIds;
  @override
  @JsonKey(name: 'cursus_ids')
  List<int>? get cursusIds;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'prohibition_of_cancellation')
  int? get prohibitionOfCancellation;
  @override
  Waitlist? get waitlist;
  @override
  List<Theme>? get themes;
  @override
  @JsonKey(ignore: true)
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Theme _$ThemeFromJson(Map<String, dynamic> json) {
  return _Theme.fromJson(json);
}

/// @nodoc
mixin _$Theme {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  DateTime? get updated_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeCopyWith<Theme> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeCopyWith<$Res> {
  factory $ThemeCopyWith(Theme value, $Res Function(Theme) then) =
      _$ThemeCopyWithImpl<$Res, Theme>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updatedAt') DateTime? updated_at});
}

/// @nodoc
class _$ThemeCopyWithImpl<$Res, $Val extends Theme>
    implements $ThemeCopyWith<$Res> {
  _$ThemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updated_at = freezed,
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeImplCopyWith<$Res> implements $ThemeCopyWith<$Res> {
  factory _$$ThemeImplCopyWith(
          _$ThemeImpl value, $Res Function(_$ThemeImpl) then) =
      __$$ThemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updatedAt') DateTime? updated_at});
}

/// @nodoc
class __$$ThemeImplCopyWithImpl<$Res>
    extends _$ThemeCopyWithImpl<$Res, _$ThemeImpl>
    implements _$$ThemeImplCopyWith<$Res> {
  __$$ThemeImplCopyWithImpl(
      _$ThemeImpl _value, $Res Function(_$ThemeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_$ThemeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThemeImpl implements _Theme {
  const _$ThemeImpl(
      {this.id,
      this.name,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updatedAt') this.updated_at});

  factory _$ThemeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final DateTime? updated_at;

  @override
  String toString() {
    return 'Theme(id: $id, name: $name, createdAt: $createdAt, updated_at: $updated_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, createdAt, updated_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeImplCopyWith<_$ThemeImpl> get copyWith =>
      __$$ThemeImplCopyWithImpl<_$ThemeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeImplToJson(
      this,
    );
  }
}

abstract class _Theme implements Theme {
  const factory _Theme(
      {final int? id,
      final String? name,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updatedAt') final DateTime? updated_at}) = _$ThemeImpl;

  factory _Theme.fromJson(Map<String, dynamic> json) = _$ThemeImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  DateTime? get updated_at;
  @override
  @JsonKey(ignore: true)
  _$$ThemeImplCopyWith<_$ThemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Waitlist _$WaitlistFromJson(Map<String, dynamic> json) {
  return _Waitlist.fromJson(json);
}

/// @nodoc
mixin _$Waitlist {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'waitlistable_id')
  int? get waitlistableId => throw _privateConstructorUsedError;
  @JsonKey(name: 'waitlistable_type')
  String? get waitlistableType => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WaitlistCopyWith<Waitlist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaitlistCopyWith<$Res> {
  factory $WaitlistCopyWith(Waitlist value, $Res Function(Waitlist) then) =
      _$WaitlistCopyWithImpl<$Res, Waitlist>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'waitlistable_id') int? waitlistableId,
      @JsonKey(name: 'waitlistable_type') String? waitlistableType,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$WaitlistCopyWithImpl<$Res, $Val extends Waitlist>
    implements $WaitlistCopyWith<$Res> {
  _$WaitlistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? waitlistableId = freezed,
    Object? waitlistableType = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      waitlistableId: freezed == waitlistableId
          ? _value.waitlistableId
          : waitlistableId // ignore: cast_nullable_to_non_nullable
              as int?,
      waitlistableType: freezed == waitlistableType
          ? _value.waitlistableType
          : waitlistableType // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WaitlistImplCopyWith<$Res>
    implements $WaitlistCopyWith<$Res> {
  factory _$$WaitlistImplCopyWith(
          _$WaitlistImpl value, $Res Function(_$WaitlistImpl) then) =
      __$$WaitlistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'waitlistable_id') int? waitlistableId,
      @JsonKey(name: 'waitlistable_type') String? waitlistableType,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$WaitlistImplCopyWithImpl<$Res>
    extends _$WaitlistCopyWithImpl<$Res, _$WaitlistImpl>
    implements _$$WaitlistImplCopyWith<$Res> {
  __$$WaitlistImplCopyWithImpl(
      _$WaitlistImpl _value, $Res Function(_$WaitlistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? waitlistableId = freezed,
    Object? waitlistableType = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$WaitlistImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      waitlistableId: freezed == waitlistableId
          ? _value.waitlistableId
          : waitlistableId // ignore: cast_nullable_to_non_nullable
              as int?,
      waitlistableType: freezed == waitlistableType
          ? _value.waitlistableType
          : waitlistableType // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WaitlistImpl implements _Waitlist {
  const _$WaitlistImpl(
      {this.id,
      @JsonKey(name: 'waitlistable_id') this.waitlistableId,
      @JsonKey(name: 'waitlistable_type') this.waitlistableType,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$WaitlistImpl.fromJson(Map<String, dynamic> json) =>
      _$$WaitlistImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'waitlistable_id')
  final int? waitlistableId;
  @override
  @JsonKey(name: 'waitlistable_type')
  final String? waitlistableType;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Waitlist(id: $id, waitlistableId: $waitlistableId, waitlistableType: $waitlistableType, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaitlistImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.waitlistableId, waitlistableId) ||
                other.waitlistableId == waitlistableId) &&
            (identical(other.waitlistableType, waitlistableType) ||
                other.waitlistableType == waitlistableType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, waitlistableId, waitlistableType, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WaitlistImplCopyWith<_$WaitlistImpl> get copyWith =>
      __$$WaitlistImplCopyWithImpl<_$WaitlistImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WaitlistImplToJson(
      this,
    );
  }
}

abstract class _Waitlist implements Waitlist {
  const factory _Waitlist(
      {final int? id,
      @JsonKey(name: 'waitlistable_id') final int? waitlistableId,
      @JsonKey(name: 'waitlistable_type') final String? waitlistableType,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt}) = _$WaitlistImpl;

  factory _Waitlist.fromJson(Map<String, dynamic> json) =
      _$WaitlistImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'waitlistable_id')
  int? get waitlistableId;
  @override
  @JsonKey(name: 'waitlistable_type')
  String? get waitlistableType;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$WaitlistImplCopyWith<_$WaitlistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
