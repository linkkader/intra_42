// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int? get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get login => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "usual_full_name")
  String? get usualFullName => throw _privateConstructorUsedError;
  @JsonKey(name: "usual_first_name")
  dynamic get usualFirstName => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "displayname")
  String? get displayname => throw _privateConstructorUsedError;
  String? get kind => throw _privateConstructorUsedError;
  @JsonKey(name: "image_url")
  String? get imageUrl => throw _privateConstructorUsedError;
  Image? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "new_image_url")
  String? get newImageUrl => throw _privateConstructorUsedError;
  bool? get staff => throw _privateConstructorUsedError;
  @JsonKey(name: "correction_point")
  int? get correctionPoint => throw _privateConstructorUsedError;
  @JsonKey(name: "pool_month")
  String? get poolMonth => throw _privateConstructorUsedError;
  @JsonKey(name: "pool_year")
  String? get poolYear => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  int? get wallet => throw _privateConstructorUsedError;
  @JsonKey(name: "anonymize_date")
  DateTime? get anonymizeDate => throw _privateConstructorUsedError;
  @JsonKey(name: "dataErasure_date")
  DateTime? get dataErasureDate => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "alumnized_at")
  dynamic get alumnizedAt => throw _privateConstructorUsedError;
  bool? get alumni => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  List<dynamic>? get groups => throw _privateConstructorUsedError;
  @JsonKey(name: "cursus_users")
  List<CursusUser>? get cursusUsers => throw _privateConstructorUsedError;
  @JsonKey(name: "projects_users")
  List<ProjectsUser>? get projectsUsers => throw _privateConstructorUsedError;
  @JsonKey(name: "languages_users")
  List<LanguagesUser>? get languagesUsers => throw _privateConstructorUsedError;
  List<Achievement>? get achievements => throw _privateConstructorUsedError;
  List<dynamic>? get titles => throw _privateConstructorUsedError;
  @JsonKey(name: "titles_users")
  List<dynamic>? get titlesUsers => throw _privateConstructorUsedError;
  List<dynamic>? get partnerships => throw _privateConstructorUsedError;
  List<dynamic>? get patroned => throw _privateConstructorUsedError;
  List<dynamic>? get patroning => throw _privateConstructorUsedError;
  @JsonKey(name: "expertises_users")
  List<ExpertisesUser>? get expertisesUsers =>
      throw _privateConstructorUsedError;
  List<dynamic>? get roles => throw _privateConstructorUsedError;
  List<Campus>? get campus => throw _privateConstructorUsedError;
  @JsonKey(name: "campus_users")
  List<CampusUser>? get campusUsers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int? id,
      String? email,
      String? login,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "usual_full_name") String? usualFullName,
      @JsonKey(name: "usual_first_name") dynamic usualFirstName,
      String? url,
      String? phone,
      @JsonKey(name: "displayname") String? displayname,
      String? kind,
      @JsonKey(name: "image_url") String? imageUrl,
      Image? image,
      @JsonKey(name: "new_image_url") String? newImageUrl,
      bool? staff,
      @JsonKey(name: "correction_point") int? correctionPoint,
      @JsonKey(name: "pool_month") String? poolMonth,
      @JsonKey(name: "pool_year") String? poolYear,
      String? location,
      int? wallet,
      @JsonKey(name: "anonymize_date") DateTime? anonymizeDate,
      @JsonKey(name: "dataErasure_date") DateTime? dataErasureDate,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      @JsonKey(name: "alumnized_at") dynamic alumnizedAt,
      bool? alumni,
      bool? active,
      List<dynamic>? groups,
      @JsonKey(name: "cursus_users") List<CursusUser>? cursusUsers,
      @JsonKey(name: "projects_users") List<ProjectsUser>? projectsUsers,
      @JsonKey(name: "languages_users") List<LanguagesUser>? languagesUsers,
      List<Achievement>? achievements,
      List<dynamic>? titles,
      @JsonKey(name: "titles_users") List<dynamic>? titlesUsers,
      List<dynamic>? partnerships,
      List<dynamic>? patroned,
      List<dynamic>? patroning,
      @JsonKey(name: "expertises_users") List<ExpertisesUser>? expertisesUsers,
      List<dynamic>? roles,
      List<Campus>? campus,
      @JsonKey(name: "campus_users") List<CampusUser>? campusUsers});

  $ImageCopyWith<$Res>? get image;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? login = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? usualFullName = freezed,
    Object? usualFirstName = null,
    Object? url = freezed,
    Object? phone = freezed,
    Object? displayname = freezed,
    Object? kind = freezed,
    Object? imageUrl = freezed,
    Object? image = freezed,
    Object? newImageUrl = freezed,
    Object? staff = freezed,
    Object? correctionPoint = freezed,
    Object? poolMonth = freezed,
    Object? poolYear = freezed,
    Object? location = freezed,
    Object? wallet = freezed,
    Object? anonymizeDate = freezed,
    Object? dataErasureDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? alumnizedAt = null,
    Object? alumni = freezed,
    Object? active = freezed,
    Object? groups = freezed,
    Object? cursusUsers = freezed,
    Object? projectsUsers = freezed,
    Object? languagesUsers = freezed,
    Object? achievements = freezed,
    Object? titles = freezed,
    Object? titlesUsers = freezed,
    Object? partnerships = freezed,
    Object? patroned = freezed,
    Object? patroning = freezed,
    Object? expertisesUsers = freezed,
    Object? roles = freezed,
    Object? campus = freezed,
    Object? campusUsers = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      usualFullName: freezed == usualFullName
          ? _value.usualFullName
          : usualFullName // ignore: cast_nullable_to_non_nullable
              as String?,
      usualFirstName: null == usualFirstName
          ? _value.usualFirstName
          : usualFirstName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      displayname: freezed == displayname
          ? _value.displayname
          : displayname // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image?,
      newImageUrl: freezed == newImageUrl
          ? _value.newImageUrl
          : newImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      staff: freezed == staff
          ? _value.staff
          : staff // ignore: cast_nullable_to_non_nullable
              as bool?,
      correctionPoint: freezed == correctionPoint
          ? _value.correctionPoint
          : correctionPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      poolMonth: freezed == poolMonth
          ? _value.poolMonth
          : poolMonth // ignore: cast_nullable_to_non_nullable
              as String?,
      poolYear: freezed == poolYear
          ? _value.poolYear
          : poolYear // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as int?,
      anonymizeDate: freezed == anonymizeDate
          ? _value.anonymizeDate
          : anonymizeDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dataErasureDate: freezed == dataErasureDate
          ? _value.dataErasureDate
          : dataErasureDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      alumnizedAt: null == alumnizedAt
          ? _value.alumnizedAt
          : alumnizedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      alumni: freezed == alumni
          ? _value.alumni
          : alumni // ignore: cast_nullable_to_non_nullable
              as bool?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      groups: freezed == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      cursusUsers: freezed == cursusUsers
          ? _value.cursusUsers
          : cursusUsers // ignore: cast_nullable_to_non_nullable
              as List<CursusUser>?,
      projectsUsers: freezed == projectsUsers
          ? _value.projectsUsers
          : projectsUsers // ignore: cast_nullable_to_non_nullable
              as List<ProjectsUser>?,
      languagesUsers: freezed == languagesUsers
          ? _value.languagesUsers
          : languagesUsers // ignore: cast_nullable_to_non_nullable
              as List<LanguagesUser>?,
      achievements: freezed == achievements
          ? _value.achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<Achievement>?,
      titles: freezed == titles
          ? _value.titles
          : titles // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      titlesUsers: freezed == titlesUsers
          ? _value.titlesUsers
          : titlesUsers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      partnerships: freezed == partnerships
          ? _value.partnerships
          : partnerships // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      patroned: freezed == patroned
          ? _value.patroned
          : patroned // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      patroning: freezed == patroning
          ? _value.patroning
          : patroning // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      expertisesUsers: freezed == expertisesUsers
          ? _value.expertisesUsers
          : expertisesUsers // ignore: cast_nullable_to_non_nullable
              as List<ExpertisesUser>?,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      campus: freezed == campus
          ? _value.campus
          : campus // ignore: cast_nullable_to_non_nullable
              as List<Campus>?,
      campusUsers: freezed == campusUsers
          ? _value.campusUsers
          : campusUsers // ignore: cast_nullable_to_non_nullable
              as List<CampusUser>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $ImageCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? email,
      String? login,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "usual_full_name") String? usualFullName,
      @JsonKey(name: "usual_first_name") dynamic usualFirstName,
      String? url,
      String? phone,
      @JsonKey(name: "displayname") String? displayname,
      String? kind,
      @JsonKey(name: "image_url") String? imageUrl,
      Image? image,
      @JsonKey(name: "new_image_url") String? newImageUrl,
      bool? staff,
      @JsonKey(name: "correction_point") int? correctionPoint,
      @JsonKey(name: "pool_month") String? poolMonth,
      @JsonKey(name: "pool_year") String? poolYear,
      String? location,
      int? wallet,
      @JsonKey(name: "anonymize_date") DateTime? anonymizeDate,
      @JsonKey(name: "dataErasure_date") DateTime? dataErasureDate,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      @JsonKey(name: "alumnized_at") dynamic alumnizedAt,
      bool? alumni,
      bool? active,
      List<dynamic>? groups,
      @JsonKey(name: "cursus_users") List<CursusUser>? cursusUsers,
      @JsonKey(name: "projects_users") List<ProjectsUser>? projectsUsers,
      @JsonKey(name: "languages_users") List<LanguagesUser>? languagesUsers,
      List<Achievement>? achievements,
      List<dynamic>? titles,
      @JsonKey(name: "titles_users") List<dynamic>? titlesUsers,
      List<dynamic>? partnerships,
      List<dynamic>? patroned,
      List<dynamic>? patroning,
      @JsonKey(name: "expertises_users") List<ExpertisesUser>? expertisesUsers,
      List<dynamic>? roles,
      List<Campus>? campus,
      @JsonKey(name: "campus_users") List<CampusUser>? campusUsers});

  @override
  $ImageCopyWith<$Res>? get image;
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? login = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? usualFullName = freezed,
    Object? usualFirstName = null,
    Object? url = freezed,
    Object? phone = freezed,
    Object? displayname = freezed,
    Object? kind = freezed,
    Object? imageUrl = freezed,
    Object? image = freezed,
    Object? newImageUrl = freezed,
    Object? staff = freezed,
    Object? correctionPoint = freezed,
    Object? poolMonth = freezed,
    Object? poolYear = freezed,
    Object? location = freezed,
    Object? wallet = freezed,
    Object? anonymizeDate = freezed,
    Object? dataErasureDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? alumnizedAt = null,
    Object? alumni = freezed,
    Object? active = freezed,
    Object? groups = freezed,
    Object? cursusUsers = freezed,
    Object? projectsUsers = freezed,
    Object? languagesUsers = freezed,
    Object? achievements = freezed,
    Object? titles = freezed,
    Object? titlesUsers = freezed,
    Object? partnerships = freezed,
    Object? patroned = freezed,
    Object? patroning = freezed,
    Object? expertisesUsers = freezed,
    Object? roles = freezed,
    Object? campus = freezed,
    Object? campusUsers = freezed,
  }) {
    return _then(_$_User(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      usualFullName: freezed == usualFullName
          ? _value.usualFullName
          : usualFullName // ignore: cast_nullable_to_non_nullable
              as String?,
      usualFirstName: null == usualFirstName
          ? _value.usualFirstName
          : usualFirstName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      displayname: freezed == displayname
          ? _value.displayname
          : displayname // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image?,
      newImageUrl: freezed == newImageUrl
          ? _value.newImageUrl
          : newImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      staff: freezed == staff
          ? _value.staff
          : staff // ignore: cast_nullable_to_non_nullable
              as bool?,
      correctionPoint: freezed == correctionPoint
          ? _value.correctionPoint
          : correctionPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      poolMonth: freezed == poolMonth
          ? _value.poolMonth
          : poolMonth // ignore: cast_nullable_to_non_nullable
              as String?,
      poolYear: freezed == poolYear
          ? _value.poolYear
          : poolYear // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as int?,
      anonymizeDate: freezed == anonymizeDate
          ? _value.anonymizeDate
          : anonymizeDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dataErasureDate: freezed == dataErasureDate
          ? _value.dataErasureDate
          : dataErasureDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      alumnizedAt: null == alumnizedAt
          ? _value.alumnizedAt
          : alumnizedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      alumni: freezed == alumni
          ? _value.alumni
          : alumni // ignore: cast_nullable_to_non_nullable
              as bool?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      groups: freezed == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      cursusUsers: freezed == cursusUsers
          ? _value._cursusUsers
          : cursusUsers // ignore: cast_nullable_to_non_nullable
              as List<CursusUser>?,
      projectsUsers: freezed == projectsUsers
          ? _value._projectsUsers
          : projectsUsers // ignore: cast_nullable_to_non_nullable
              as List<ProjectsUser>?,
      languagesUsers: freezed == languagesUsers
          ? _value._languagesUsers
          : languagesUsers // ignore: cast_nullable_to_non_nullable
              as List<LanguagesUser>?,
      achievements: freezed == achievements
          ? _value._achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<Achievement>?,
      titles: freezed == titles
          ? _value._titles
          : titles // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      titlesUsers: freezed == titlesUsers
          ? _value._titlesUsers
          : titlesUsers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      partnerships: freezed == partnerships
          ? _value._partnerships
          : partnerships // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      patroned: freezed == patroned
          ? _value._patroned
          : patroned // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      patroning: freezed == patroning
          ? _value._patroning
          : patroning // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      expertisesUsers: freezed == expertisesUsers
          ? _value._expertisesUsers
          : expertisesUsers // ignore: cast_nullable_to_non_nullable
              as List<ExpertisesUser>?,
      roles: freezed == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      campus: freezed == campus
          ? _value._campus
          : campus // ignore: cast_nullable_to_non_nullable
              as List<Campus>?,
      campusUsers: freezed == campusUsers
          ? _value._campusUsers
          : campusUsers // ignore: cast_nullable_to_non_nullable
              as List<CampusUser>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {this.id,
      this.email,
      this.login,
      @JsonKey(name: "first_name")
          this.firstName,
      @JsonKey(name: "last_name")
          this.lastName,
      @JsonKey(name: "usual_full_name")
          this.usualFullName,
      @JsonKey(name: "usual_first_name")
          this.usualFirstName,
      this.url,
      this.phone,
      @JsonKey(name: "displayname")
          this.displayname,
      this.kind,
      @JsonKey(name: "image_url")
          this.imageUrl,
      this.image,
      @JsonKey(name: "new_image_url")
          this.newImageUrl,
      this.staff,
      @JsonKey(name: "correction_point")
          this.correctionPoint,
      @JsonKey(name: "pool_month")
          this.poolMonth,
      @JsonKey(name: "pool_year")
          this.poolYear,
      this.location,
      this.wallet,
      @JsonKey(name: "anonymize_date")
          this.anonymizeDate,
      @JsonKey(name: "dataErasure_date")
          this.dataErasureDate,
      @JsonKey(name: "created_at")
          this.createdAt,
      @JsonKey(name: "updated_at")
          this.updatedAt,
      @JsonKey(name: "alumnized_at")
          this.alumnizedAt,
      this.alumni,
      this.active,
      final List<dynamic>? groups,
      @JsonKey(name: "cursus_users")
          final List<CursusUser>? cursusUsers,
      @JsonKey(name: "projects_users")
          final List<ProjectsUser>? projectsUsers,
      @JsonKey(name: "languages_users")
          final List<LanguagesUser>? languagesUsers,
      final List<Achievement>? achievements,
      final List<dynamic>? titles,
      @JsonKey(name: "titles_users")
          final List<dynamic>? titlesUsers,
      final List<dynamic>? partnerships,
      final List<dynamic>? patroned,
      final List<dynamic>? patroning,
      @JsonKey(name: "expertises_users")
          final List<ExpertisesUser>? expertisesUsers,
      final List<dynamic>? roles,
      final List<Campus>? campus,
      @JsonKey(name: "campus_users")
          final List<CampusUser>? campusUsers})
      : _groups = groups,
        _cursusUsers = cursusUsers,
        _projectsUsers = projectsUsers,
        _languagesUsers = languagesUsers,
        _achievements = achievements,
        _titles = titles,
        _titlesUsers = titlesUsers,
        _partnerships = partnerships,
        _patroned = patroned,
        _patroning = patroning,
        _expertisesUsers = expertisesUsers,
        _roles = roles,
        _campus = campus,
        _campusUsers = campusUsers;

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final int? id;
  @override
  final String? email;
  @override
  final String? login;
  @override
  @JsonKey(name: "first_name")
  final String? firstName;
  @override
  @JsonKey(name: "last_name")
  final String? lastName;
  @override
  @JsonKey(name: "usual_full_name")
  final String? usualFullName;
  @override
  @JsonKey(name: "usual_first_name")
  final dynamic usualFirstName;
  @override
  final String? url;
  @override
  final String? phone;
  @override
  @JsonKey(name: "displayname")
  final String? displayname;
  @override
  final String? kind;
  @override
  @JsonKey(name: "image_url")
  final String? imageUrl;
  @override
  final Image? image;
  @override
  @JsonKey(name: "new_image_url")
  final String? newImageUrl;
  @override
  final bool? staff;
  @override
  @JsonKey(name: "correction_point")
  final int? correctionPoint;
  @override
  @JsonKey(name: "pool_month")
  final String? poolMonth;
  @override
  @JsonKey(name: "pool_year")
  final String? poolYear;
  @override
  final String? location;
  @override
  final int? wallet;
  @override
  @JsonKey(name: "anonymize_date")
  final DateTime? anonymizeDate;
  @override
  @JsonKey(name: "dataErasure_date")
  final DateTime? dataErasureDate;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "alumnized_at")
  final dynamic alumnizedAt;
  @override
  final bool? alumni;
  @override
  final bool? active;
  final List<dynamic>? _groups;
  @override
  List<dynamic>? get groups {
    final value = _groups;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CursusUser>? _cursusUsers;
  @override
  @JsonKey(name: "cursus_users")
  List<CursusUser>? get cursusUsers {
    final value = _cursusUsers;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProjectsUser>? _projectsUsers;
  @override
  @JsonKey(name: "projects_users")
  List<ProjectsUser>? get projectsUsers {
    final value = _projectsUsers;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LanguagesUser>? _languagesUsers;
  @override
  @JsonKey(name: "languages_users")
  List<LanguagesUser>? get languagesUsers {
    final value = _languagesUsers;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Achievement>? _achievements;
  @override
  List<Achievement>? get achievements {
    final value = _achievements;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _titles;
  @override
  List<dynamic>? get titles {
    final value = _titles;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _titlesUsers;
  @override
  @JsonKey(name: "titles_users")
  List<dynamic>? get titlesUsers {
    final value = _titlesUsers;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _partnerships;
  @override
  List<dynamic>? get partnerships {
    final value = _partnerships;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _patroned;
  @override
  List<dynamic>? get patroned {
    final value = _patroned;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _patroning;
  @override
  List<dynamic>? get patroning {
    final value = _patroning;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ExpertisesUser>? _expertisesUsers;
  @override
  @JsonKey(name: "expertises_users")
  List<ExpertisesUser>? get expertisesUsers {
    final value = _expertisesUsers;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _roles;
  @override
  List<dynamic>? get roles {
    final value = _roles;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Campus>? _campus;
  @override
  List<Campus>? get campus {
    final value = _campus;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CampusUser>? _campusUsers;
  @override
  @JsonKey(name: "campus_users")
  List<CampusUser>? get campusUsers {
    final value = _campusUsers;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'User(id: $id, email: $email, login: $login, firstName: $firstName, lastName: $lastName, usualFullName: $usualFullName, usualFirstName: $usualFirstName, url: $url, phone: $phone, displayname: $displayname, kind: $kind, imageUrl: $imageUrl, image: $image, newImageUrl: $newImageUrl, staff: $staff, correctionPoint: $correctionPoint, poolMonth: $poolMonth, poolYear: $poolYear, location: $location, wallet: $wallet, anonymizeDate: $anonymizeDate, dataErasureDate: $dataErasureDate, createdAt: $createdAt, updatedAt: $updatedAt, alumnizedAt: $alumnizedAt, alumni: $alumni, active: $active, groups: $groups, cursusUsers: $cursusUsers, projectsUsers: $projectsUsers, languagesUsers: $languagesUsers, achievements: $achievements, titles: $titles, titlesUsers: $titlesUsers, partnerships: $partnerships, patroned: $patroned, patroning: $patroning, expertisesUsers: $expertisesUsers, roles: $roles, campus: $campus, campusUsers: $campusUsers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.usualFullName, usualFullName) ||
                other.usualFullName == usualFullName) &&
            const DeepCollectionEquality()
                .equals(other.usualFirstName, usualFirstName) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.displayname, displayname) ||
                other.displayname == displayname) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.newImageUrl, newImageUrl) ||
                other.newImageUrl == newImageUrl) &&
            (identical(other.staff, staff) || other.staff == staff) &&
            (identical(other.correctionPoint, correctionPoint) ||
                other.correctionPoint == correctionPoint) &&
            (identical(other.poolMonth, poolMonth) ||
                other.poolMonth == poolMonth) &&
            (identical(other.poolYear, poolYear) ||
                other.poolYear == poolYear) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.wallet, wallet) || other.wallet == wallet) &&
            (identical(other.anonymizeDate, anonymizeDate) ||
                other.anonymizeDate == anonymizeDate) &&
            (identical(other.dataErasureDate, dataErasureDate) ||
                other.dataErasureDate == dataErasureDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.alumnizedAt, alumnizedAt) &&
            (identical(other.alumni, alumni) || other.alumni == alumni) &&
            (identical(other.active, active) || other.active == active) &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
            const DeepCollectionEquality()
                .equals(other._cursusUsers, _cursusUsers) &&
            const DeepCollectionEquality()
                .equals(other._projectsUsers, _projectsUsers) &&
            const DeepCollectionEquality()
                .equals(other._languagesUsers, _languagesUsers) &&
            const DeepCollectionEquality()
                .equals(other._achievements, _achievements) &&
            const DeepCollectionEquality().equals(other._titles, _titles) &&
            const DeepCollectionEquality()
                .equals(other._titlesUsers, _titlesUsers) &&
            const DeepCollectionEquality()
                .equals(other._partnerships, _partnerships) &&
            const DeepCollectionEquality().equals(other._patroned, _patroned) &&
            const DeepCollectionEquality()
                .equals(other._patroning, _patroning) &&
            const DeepCollectionEquality()
                .equals(other._expertisesUsers, _expertisesUsers) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            const DeepCollectionEquality().equals(other._campus, _campus) &&
            const DeepCollectionEquality()
                .equals(other._campusUsers, _campusUsers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        email,
        login,
        firstName,
        lastName,
        usualFullName,
        const DeepCollectionEquality().hash(usualFirstName),
        url,
        phone,
        displayname,
        kind,
        imageUrl,
        image,
        newImageUrl,
        staff,
        correctionPoint,
        poolMonth,
        poolYear,
        location,
        wallet,
        anonymizeDate,
        dataErasureDate,
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(alumnizedAt),
        alumni,
        active,
        const DeepCollectionEquality().hash(_groups),
        const DeepCollectionEquality().hash(_cursusUsers),
        const DeepCollectionEquality().hash(_projectsUsers),
        const DeepCollectionEquality().hash(_languagesUsers),
        const DeepCollectionEquality().hash(_achievements),
        const DeepCollectionEquality().hash(_titles),
        const DeepCollectionEquality().hash(_titlesUsers),
        const DeepCollectionEquality().hash(_partnerships),
        const DeepCollectionEquality().hash(_patroned),
        const DeepCollectionEquality().hash(_patroning),
        const DeepCollectionEquality().hash(_expertisesUsers),
        const DeepCollectionEquality().hash(_roles),
        const DeepCollectionEquality().hash(_campus),
        const DeepCollectionEquality().hash(_campusUsers)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {final int? id,
      final String? email,
      final String? login,
      @JsonKey(name: "first_name")
          final String? firstName,
      @JsonKey(name: "last_name")
          final String? lastName,
      @JsonKey(name: "usual_full_name")
          final String? usualFullName,
      @JsonKey(name: "usual_first_name")
          final dynamic usualFirstName,
      final String? url,
      final String? phone,
      @JsonKey(name: "displayname")
          final String? displayname,
      final String? kind,
      @JsonKey(name: "image_url")
          final String? imageUrl,
      final Image? image,
      @JsonKey(name: "new_image_url")
          final String? newImageUrl,
      final bool? staff,
      @JsonKey(name: "correction_point")
          final int? correctionPoint,
      @JsonKey(name: "pool_month")
          final String? poolMonth,
      @JsonKey(name: "pool_year")
          final String? poolYear,
      final String? location,
      final int? wallet,
      @JsonKey(name: "anonymize_date")
          final DateTime? anonymizeDate,
      @JsonKey(name: "dataErasure_date")
          final DateTime? dataErasureDate,
      @JsonKey(name: "created_at")
          final DateTime? createdAt,
      @JsonKey(name: "updated_at")
          final DateTime? updatedAt,
      @JsonKey(name: "alumnized_at")
          final dynamic alumnizedAt,
      final bool? alumni,
      final bool? active,
      final List<dynamic>? groups,
      @JsonKey(name: "cursus_users")
          final List<CursusUser>? cursusUsers,
      @JsonKey(name: "projects_users")
          final List<ProjectsUser>? projectsUsers,
      @JsonKey(name: "languages_users")
          final List<LanguagesUser>? languagesUsers,
      final List<Achievement>? achievements,
      final List<dynamic>? titles,
      @JsonKey(name: "titles_users")
          final List<dynamic>? titlesUsers,
      final List<dynamic>? partnerships,
      final List<dynamic>? patroned,
      final List<dynamic>? patroning,
      @JsonKey(name: "expertises_users")
          final List<ExpertisesUser>? expertisesUsers,
      final List<dynamic>? roles,
      final List<Campus>? campus,
      @JsonKey(name: "campus_users")
          final List<CampusUser>? campusUsers}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int? get id;
  @override
  String? get email;
  @override
  String? get login;
  @override
  @JsonKey(name: "first_name")
  String? get firstName;
  @override
  @JsonKey(name: "last_name")
  String? get lastName;
  @override
  @JsonKey(name: "usual_full_name")
  String? get usualFullName;
  @override
  @JsonKey(name: "usual_first_name")
  dynamic get usualFirstName;
  @override
  String? get url;
  @override
  String? get phone;
  @override
  @JsonKey(name: "displayname")
  String? get displayname;
  @override
  String? get kind;
  @override
  @JsonKey(name: "image_url")
  String? get imageUrl;
  @override
  Image? get image;
  @override
  @JsonKey(name: "new_image_url")
  String? get newImageUrl;
  @override
  bool? get staff;
  @override
  @JsonKey(name: "correction_point")
  int? get correctionPoint;
  @override
  @JsonKey(name: "pool_month")
  String? get poolMonth;
  @override
  @JsonKey(name: "pool_year")
  String? get poolYear;
  @override
  String? get location;
  @override
  int? get wallet;
  @override
  @JsonKey(name: "anonymize_date")
  DateTime? get anonymizeDate;
  @override
  @JsonKey(name: "dataErasure_date")
  DateTime? get dataErasureDate;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "alumnized_at")
  dynamic get alumnizedAt;
  @override
  bool? get alumni;
  @override
  bool? get active;
  @override
  List<dynamic>? get groups;
  @override
  @JsonKey(name: "cursus_users")
  List<CursusUser>? get cursusUsers;
  @override
  @JsonKey(name: "projects_users")
  List<ProjectsUser>? get projectsUsers;
  @override
  @JsonKey(name: "languages_users")
  List<LanguagesUser>? get languagesUsers;
  @override
  List<Achievement>? get achievements;
  @override
  List<dynamic>? get titles;
  @override
  @JsonKey(name: "titles_users")
  List<dynamic>? get titlesUsers;
  @override
  List<dynamic>? get partnerships;
  @override
  List<dynamic>? get patroned;
  @override
  List<dynamic>? get patroning;
  @override
  @JsonKey(name: "expertises_users")
  List<ExpertisesUser>? get expertisesUsers;
  @override
  List<dynamic>? get roles;
  @override
  List<Campus>? get campus;
  @override
  @JsonKey(name: "campus_users")
  List<CampusUser>? get campusUsers;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}

Achievement _$AchievementFromJson(Map<String, dynamic> json) {
  return _Achievement.fromJson(json);
}

/// @nodoc
mixin _$Achievement {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get tier => throw _privateConstructorUsedError;
  String? get kind => throw _privateConstructorUsedError;
  bool? get visible => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "nbr_of_success")
  int? get nbrOfSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: "users_url")
  String? get usersUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AchievementCopyWith<Achievement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AchievementCopyWith<$Res> {
  factory $AchievementCopyWith(
          Achievement value, $Res Function(Achievement) then) =
      _$AchievementCopyWithImpl<$Res, Achievement>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? tier,
      String? kind,
      bool? visible,
      String? image,
      @JsonKey(name: "nbr_of_success") int? nbrOfSuccess,
      @JsonKey(name: "users_url") String? usersUrl});
}

/// @nodoc
class _$AchievementCopyWithImpl<$Res, $Val extends Achievement>
    implements $AchievementCopyWith<$Res> {
  _$AchievementCopyWithImpl(this._value, this._then);

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
    Object? tier = freezed,
    Object? kind = freezed,
    Object? visible = freezed,
    Object? image = freezed,
    Object? nbrOfSuccess = freezed,
    Object? usersUrl = freezed,
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
      tier: freezed == tier
          ? _value.tier
          : tier // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      visible: freezed == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      nbrOfSuccess: freezed == nbrOfSuccess
          ? _value.nbrOfSuccess
          : nbrOfSuccess // ignore: cast_nullable_to_non_nullable
              as int?,
      usersUrl: freezed == usersUrl
          ? _value.usersUrl
          : usersUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AchievementCopyWith<$Res>
    implements $AchievementCopyWith<$Res> {
  factory _$$_AchievementCopyWith(
          _$_Achievement value, $Res Function(_$_Achievement) then) =
      __$$_AchievementCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? tier,
      String? kind,
      bool? visible,
      String? image,
      @JsonKey(name: "nbr_of_success") int? nbrOfSuccess,
      @JsonKey(name: "users_url") String? usersUrl});
}

/// @nodoc
class __$$_AchievementCopyWithImpl<$Res>
    extends _$AchievementCopyWithImpl<$Res, _$_Achievement>
    implements _$$_AchievementCopyWith<$Res> {
  __$$_AchievementCopyWithImpl(
      _$_Achievement _value, $Res Function(_$_Achievement) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? tier = freezed,
    Object? kind = freezed,
    Object? visible = freezed,
    Object? image = freezed,
    Object? nbrOfSuccess = freezed,
    Object? usersUrl = freezed,
  }) {
    return _then(_$_Achievement(
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
      tier: freezed == tier
          ? _value.tier
          : tier // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      visible: freezed == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      nbrOfSuccess: freezed == nbrOfSuccess
          ? _value.nbrOfSuccess
          : nbrOfSuccess // ignore: cast_nullable_to_non_nullable
              as int?,
      usersUrl: freezed == usersUrl
          ? _value.usersUrl
          : usersUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Achievement implements _Achievement {
  const _$_Achievement(
      {this.id,
      this.name,
      this.description,
      this.tier,
      this.kind,
      this.visible,
      this.image,
      @JsonKey(name: "nbr_of_success") this.nbrOfSuccess,
      @JsonKey(name: "users_url") this.usersUrl});

  factory _$_Achievement.fromJson(Map<String, dynamic> json) =>
      _$$_AchievementFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? tier;
  @override
  final String? kind;
  @override
  final bool? visible;
  @override
  final String? image;
  @override
  @JsonKey(name: "nbr_of_success")
  final int? nbrOfSuccess;
  @override
  @JsonKey(name: "users_url")
  final String? usersUrl;

  @override
  String toString() {
    return 'Achievement(id: $id, name: $name, description: $description, tier: $tier, kind: $kind, visible: $visible, image: $image, nbrOfSuccess: $nbrOfSuccess, usersUrl: $usersUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Achievement &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.tier, tier) || other.tier == tier) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.visible, visible) || other.visible == visible) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.nbrOfSuccess, nbrOfSuccess) ||
                other.nbrOfSuccess == nbrOfSuccess) &&
            (identical(other.usersUrl, usersUrl) ||
                other.usersUrl == usersUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, tier,
      kind, visible, image, nbrOfSuccess, usersUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AchievementCopyWith<_$_Achievement> get copyWith =>
      __$$_AchievementCopyWithImpl<_$_Achievement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AchievementToJson(
      this,
    );
  }
}

abstract class _Achievement implements Achievement {
  const factory _Achievement(
      {final int? id,
      final String? name,
      final String? description,
      final String? tier,
      final String? kind,
      final bool? visible,
      final String? image,
      @JsonKey(name: "nbr_of_success") final int? nbrOfSuccess,
      @JsonKey(name: "users_url") final String? usersUrl}) = _$_Achievement;

  factory _Achievement.fromJson(Map<String, dynamic> json) =
      _$_Achievement.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get tier;
  @override
  String? get kind;
  @override
  bool? get visible;
  @override
  String? get image;
  @override
  @JsonKey(name: "nbr_of_success")
  int? get nbrOfSuccess;
  @override
  @JsonKey(name: "users_url")
  String? get usersUrl;
  @override
  @JsonKey(ignore: true)
  _$$_AchievementCopyWith<_$_Achievement> get copyWith =>
      throw _privateConstructorUsedError;
}

Campus _$CampusFromJson(Map<String, dynamic> json) {
  return _Campus.fromJson(json);
}

/// @nodoc
mixin _$Campus {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "time_zone")
  String? get timeZone => throw _privateConstructorUsedError;
  Language? get language => throw _privateConstructorUsedError;
  @JsonKey(name: "users_count")
  int? get usersCount => throw _privateConstructorUsedError;
  @JsonKey(name: "vogsphere_id")
  int? get vogsphereId => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get zip => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  String? get facebook => throw _privateConstructorUsedError;
  String? get twitter => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  bool? get public => throw _privateConstructorUsedError;
  @JsonKey(name: "email_extension")
  String? get emailExtension => throw _privateConstructorUsedError;
  @JsonKey(name: "default_hidden_phone")
  bool? get defaultHiddenPhone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CampusCopyWith<Campus> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampusCopyWith<$Res> {
  factory $CampusCopyWith(Campus value, $Res Function(Campus) then) =
      _$CampusCopyWithImpl<$Res, Campus>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: "time_zone") String? timeZone,
      Language? language,
      @JsonKey(name: "users_count") int? usersCount,
      @JsonKey(name: "vogsphere_id") int? vogsphereId,
      String? country,
      String? address,
      String? zip,
      String? city,
      String? website,
      String? facebook,
      String? twitter,
      bool? active,
      bool? public,
      @JsonKey(name: "email_extension") String? emailExtension,
      @JsonKey(name: "default_hidden_phone") bool? defaultHiddenPhone});

  $LanguageCopyWith<$Res>? get language;
}

/// @nodoc
class _$CampusCopyWithImpl<$Res, $Val extends Campus>
    implements $CampusCopyWith<$Res> {
  _$CampusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? timeZone = freezed,
    Object? language = freezed,
    Object? usersCount = freezed,
    Object? vogsphereId = freezed,
    Object? country = freezed,
    Object? address = freezed,
    Object? zip = freezed,
    Object? city = freezed,
    Object? website = freezed,
    Object? facebook = freezed,
    Object? twitter = freezed,
    Object? active = freezed,
    Object? public = freezed,
    Object? emailExtension = freezed,
    Object? defaultHiddenPhone = freezed,
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
      timeZone: freezed == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language?,
      usersCount: freezed == usersCount
          ? _value.usersCount
          : usersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      vogsphereId: freezed == vogsphereId
          ? _value.vogsphereId
          : vogsphereId // ignore: cast_nullable_to_non_nullable
              as int?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      zip: freezed == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter: freezed == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      public: freezed == public
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as bool?,
      emailExtension: freezed == emailExtension
          ? _value.emailExtension
          : emailExtension // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultHiddenPhone: freezed == defaultHiddenPhone
          ? _value.defaultHiddenPhone
          : defaultHiddenPhone // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LanguageCopyWith<$Res>? get language {
    if (_value.language == null) {
      return null;
    }

    return $LanguageCopyWith<$Res>(_value.language!, (value) {
      return _then(_value.copyWith(language: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CampusCopyWith<$Res> implements $CampusCopyWith<$Res> {
  factory _$$_CampusCopyWith(_$_Campus value, $Res Function(_$_Campus) then) =
      __$$_CampusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: "time_zone") String? timeZone,
      Language? language,
      @JsonKey(name: "users_count") int? usersCount,
      @JsonKey(name: "vogsphere_id") int? vogsphereId,
      String? country,
      String? address,
      String? zip,
      String? city,
      String? website,
      String? facebook,
      String? twitter,
      bool? active,
      bool? public,
      @JsonKey(name: "email_extension") String? emailExtension,
      @JsonKey(name: "default_hidden_phone") bool? defaultHiddenPhone});

  @override
  $LanguageCopyWith<$Res>? get language;
}

/// @nodoc
class __$$_CampusCopyWithImpl<$Res>
    extends _$CampusCopyWithImpl<$Res, _$_Campus>
    implements _$$_CampusCopyWith<$Res> {
  __$$_CampusCopyWithImpl(_$_Campus _value, $Res Function(_$_Campus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? timeZone = freezed,
    Object? language = freezed,
    Object? usersCount = freezed,
    Object? vogsphereId = freezed,
    Object? country = freezed,
    Object? address = freezed,
    Object? zip = freezed,
    Object? city = freezed,
    Object? website = freezed,
    Object? facebook = freezed,
    Object? twitter = freezed,
    Object? active = freezed,
    Object? public = freezed,
    Object? emailExtension = freezed,
    Object? defaultHiddenPhone = freezed,
  }) {
    return _then(_$_Campus(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      timeZone: freezed == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language?,
      usersCount: freezed == usersCount
          ? _value.usersCount
          : usersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      vogsphereId: freezed == vogsphereId
          ? _value.vogsphereId
          : vogsphereId // ignore: cast_nullable_to_non_nullable
              as int?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      zip: freezed == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter: freezed == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      public: freezed == public
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as bool?,
      emailExtension: freezed == emailExtension
          ? _value.emailExtension
          : emailExtension // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultHiddenPhone: freezed == defaultHiddenPhone
          ? _value.defaultHiddenPhone
          : defaultHiddenPhone // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Campus implements _Campus {
  const _$_Campus(
      {this.id,
      this.name,
      @JsonKey(name: "time_zone") this.timeZone,
      this.language,
      @JsonKey(name: "users_count") this.usersCount,
      @JsonKey(name: "vogsphere_id") this.vogsphereId,
      this.country,
      this.address,
      this.zip,
      this.city,
      this.website,
      this.facebook,
      this.twitter,
      this.active,
      this.public,
      @JsonKey(name: "email_extension") this.emailExtension,
      @JsonKey(name: "default_hidden_phone") this.defaultHiddenPhone});

  factory _$_Campus.fromJson(Map<String, dynamic> json) =>
      _$$_CampusFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: "time_zone")
  final String? timeZone;
  @override
  final Language? language;
  @override
  @JsonKey(name: "users_count")
  final int? usersCount;
  @override
  @JsonKey(name: "vogsphere_id")
  final int? vogsphereId;
  @override
  final String? country;
  @override
  final String? address;
  @override
  final String? zip;
  @override
  final String? city;
  @override
  final String? website;
  @override
  final String? facebook;
  @override
  final String? twitter;
  @override
  final bool? active;
  @override
  final bool? public;
  @override
  @JsonKey(name: "email_extension")
  final String? emailExtension;
  @override
  @JsonKey(name: "default_hidden_phone")
  final bool? defaultHiddenPhone;

  @override
  String toString() {
    return 'Campus(id: $id, name: $name, timeZone: $timeZone, language: $language, usersCount: $usersCount, vogsphereId: $vogsphereId, country: $country, address: $address, zip: $zip, city: $city, website: $website, facebook: $facebook, twitter: $twitter, active: $active, public: $public, emailExtension: $emailExtension, defaultHiddenPhone: $defaultHiddenPhone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Campus &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.timeZone, timeZone) ||
                other.timeZone == timeZone) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.usersCount, usersCount) ||
                other.usersCount == usersCount) &&
            (identical(other.vogsphereId, vogsphereId) ||
                other.vogsphereId == vogsphereId) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.zip, zip) || other.zip == zip) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.facebook, facebook) ||
                other.facebook == facebook) &&
            (identical(other.twitter, twitter) || other.twitter == twitter) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.public, public) || other.public == public) &&
            (identical(other.emailExtension, emailExtension) ||
                other.emailExtension == emailExtension) &&
            (identical(other.defaultHiddenPhone, defaultHiddenPhone) ||
                other.defaultHiddenPhone == defaultHiddenPhone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      timeZone,
      language,
      usersCount,
      vogsphereId,
      country,
      address,
      zip,
      city,
      website,
      facebook,
      twitter,
      active,
      public,
      emailExtension,
      defaultHiddenPhone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CampusCopyWith<_$_Campus> get copyWith =>
      __$$_CampusCopyWithImpl<_$_Campus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CampusToJson(
      this,
    );
  }
}

abstract class _Campus implements Campus {
  const factory _Campus(
      {final int? id,
      final String? name,
      @JsonKey(name: "time_zone")
          final String? timeZone,
      final Language? language,
      @JsonKey(name: "users_count")
          final int? usersCount,
      @JsonKey(name: "vogsphere_id")
          final int? vogsphereId,
      final String? country,
      final String? address,
      final String? zip,
      final String? city,
      final String? website,
      final String? facebook,
      final String? twitter,
      final bool? active,
      final bool? public,
      @JsonKey(name: "email_extension")
          final String? emailExtension,
      @JsonKey(name: "default_hidden_phone")
          final bool? defaultHiddenPhone}) = _$_Campus;

  factory _Campus.fromJson(Map<String, dynamic> json) = _$_Campus.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: "time_zone")
  String? get timeZone;
  @override
  Language? get language;
  @override
  @JsonKey(name: "users_count")
  int? get usersCount;
  @override
  @JsonKey(name: "vogsphere_id")
  int? get vogsphereId;
  @override
  String? get country;
  @override
  String? get address;
  @override
  String? get zip;
  @override
  String? get city;
  @override
  String? get website;
  @override
  String? get facebook;
  @override
  String? get twitter;
  @override
  bool? get active;
  @override
  bool? get public;
  @override
  @JsonKey(name: "email_extension")
  String? get emailExtension;
  @override
  @JsonKey(name: "default_hidden_phone")
  bool? get defaultHiddenPhone;
  @override
  @JsonKey(ignore: true)
  _$$_CampusCopyWith<_$_Campus> get copyWith =>
      throw _privateConstructorUsedError;
}

Language _$LanguageFromJson(Map<String, dynamic> json) {
  return _Language.fromJson(json);
}

/// @nodoc
mixin _$Language {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get identifier => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageCopyWith<Language> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageCopyWith<$Res> {
  factory $LanguageCopyWith(Language value, $Res Function(Language) then) =
      _$LanguageCopyWithImpl<$Res, Language>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? identifier,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});
}

/// @nodoc
class _$LanguageCopyWithImpl<$Res, $Val extends Language>
    implements $LanguageCopyWith<$Res> {
  _$LanguageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? identifier = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_LanguageCopyWith<$Res> implements $LanguageCopyWith<$Res> {
  factory _$$_LanguageCopyWith(
          _$_Language value, $Res Function(_$_Language) then) =
      __$$_LanguageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? identifier,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});
}

/// @nodoc
class __$$_LanguageCopyWithImpl<$Res>
    extends _$LanguageCopyWithImpl<$Res, _$_Language>
    implements _$$_LanguageCopyWith<$Res> {
  __$$_LanguageCopyWithImpl(
      _$_Language _value, $Res Function(_$_Language) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? identifier = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Language(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
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
class _$_Language implements _Language {
  const _$_Language(
      {this.id,
      this.name,
      this.identifier,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$_Language.fromJson(Map<String, dynamic> json) =>
      _$$_LanguageFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? identifier;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Language(id: $id, name: $name, identifier: $identifier, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Language &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, identifier, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LanguageCopyWith<_$_Language> get copyWith =>
      __$$_LanguageCopyWithImpl<_$_Language>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LanguageToJson(
      this,
    );
  }
}

abstract class _Language implements Language {
  const factory _Language(
      {final int? id,
      final String? name,
      final String? identifier,
      @JsonKey(name: "created_at") final DateTime? createdAt,
      @JsonKey(name: "updated_at") final DateTime? updatedAt}) = _$_Language;

  factory _Language.fromJson(Map<String, dynamic> json) = _$_Language.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get identifier;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_LanguageCopyWith<_$_Language> get copyWith =>
      throw _privateConstructorUsedError;
}

CampusUser _$CampusUserFromJson(Map<String, dynamic> json) {
  return _CampusUser.fromJson(json);
}

/// @nodoc
mixin _$CampusUser {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "campus_id")
  int? get campusId => throw _privateConstructorUsedError;
  @JsonKey(name: "is_primary")
  bool? get isPrimary => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CampusUserCopyWith<CampusUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampusUserCopyWith<$Res> {
  factory $CampusUserCopyWith(
          CampusUser value, $Res Function(CampusUser) then) =
      _$CampusUserCopyWithImpl<$Res, CampusUser>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "user_id") int? userId,
      @JsonKey(name: "campus_id") int? campusId,
      @JsonKey(name: "is_primary") bool? isPrimary,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});
}

/// @nodoc
class _$CampusUserCopyWithImpl<$Res, $Val extends CampusUser>
    implements $CampusUserCopyWith<$Res> {
  _$CampusUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? campusId = freezed,
    Object? isPrimary = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      campusId: freezed == campusId
          ? _value.campusId
          : campusId // ignore: cast_nullable_to_non_nullable
              as int?,
      isPrimary: freezed == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
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
abstract class _$$_CampusUserCopyWith<$Res>
    implements $CampusUserCopyWith<$Res> {
  factory _$$_CampusUserCopyWith(
          _$_CampusUser value, $Res Function(_$_CampusUser) then) =
      __$$_CampusUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "user_id") int? userId,
      @JsonKey(name: "campus_id") int? campusId,
      @JsonKey(name: "is_primary") bool? isPrimary,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});
}

/// @nodoc
class __$$_CampusUserCopyWithImpl<$Res>
    extends _$CampusUserCopyWithImpl<$Res, _$_CampusUser>
    implements _$$_CampusUserCopyWith<$Res> {
  __$$_CampusUserCopyWithImpl(
      _$_CampusUser _value, $Res Function(_$_CampusUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? campusId = freezed,
    Object? isPrimary = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_CampusUser(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      campusId: freezed == campusId
          ? _value.campusId
          : campusId // ignore: cast_nullable_to_non_nullable
              as int?,
      isPrimary: freezed == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
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
class _$_CampusUser implements _CampusUser {
  const _$_CampusUser(
      {this.id,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "campus_id") this.campusId,
      @JsonKey(name: "is_primary") this.isPrimary,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$_CampusUser.fromJson(Map<String, dynamic> json) =>
      _$$_CampusUserFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "user_id")
  final int? userId;
  @override
  @JsonKey(name: "campus_id")
  final int? campusId;
  @override
  @JsonKey(name: "is_primary")
  final bool? isPrimary;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'CampusUser(id: $id, userId: $userId, campusId: $campusId, isPrimary: $isPrimary, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CampusUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.campusId, campusId) ||
                other.campusId == campusId) &&
            (identical(other.isPrimary, isPrimary) ||
                other.isPrimary == isPrimary) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, campusId, isPrimary, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CampusUserCopyWith<_$_CampusUser> get copyWith =>
      __$$_CampusUserCopyWithImpl<_$_CampusUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CampusUserToJson(
      this,
    );
  }
}

abstract class _CampusUser implements CampusUser {
  const factory _CampusUser(
      {final int? id,
      @JsonKey(name: "user_id") final int? userId,
      @JsonKey(name: "campus_id") final int? campusId,
      @JsonKey(name: "is_primary") final bool? isPrimary,
      @JsonKey(name: "created_at") final DateTime? createdAt,
      @JsonKey(name: "updated_at") final DateTime? updatedAt}) = _$_CampusUser;

  factory _CampusUser.fromJson(Map<String, dynamic> json) =
      _$_CampusUser.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "user_id")
  int? get userId;
  @override
  @JsonKey(name: "campus_id")
  int? get campusId;
  @override
  @JsonKey(name: "is_primary")
  bool? get isPrimary;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_CampusUserCopyWith<_$_CampusUser> get copyWith =>
      throw _privateConstructorUsedError;
}

CursusUser _$CursusUserFromJson(Map<String, dynamic> json) {
  return _CursusUser.fromJson(json);
}

/// @nodoc
mixin _$CursusUser {
  String? get grade => throw _privateConstructorUsedError;
  double? get level => throw _privateConstructorUsedError;
  List<Skill>? get skills => throw _privateConstructorUsedError;
  @JsonKey(name: "blackholed_at")
  DateTime? get blackholedAt => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "begin_at")
  DateTime? get beginAt => throw _privateConstructorUsedError;
  @JsonKey(name: "end_at")
  DateTime? get endAt => throw _privateConstructorUsedError;
  @JsonKey(name: "cursus_id")
  int? get cursusId => throw _privateConstructorUsedError;
  bool? get hasCoalition => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  UserClass? get user => throw _privateConstructorUsedError;
  Cursus? get cursus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CursusUserCopyWith<CursusUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CursusUserCopyWith<$Res> {
  factory $CursusUserCopyWith(
          CursusUser value, $Res Function(CursusUser) then) =
      _$CursusUserCopyWithImpl<$Res, CursusUser>;
  @useResult
  $Res call(
      {String? grade,
      double? level,
      List<Skill>? skills,
      @JsonKey(name: "blackholed_at") DateTime? blackholedAt,
      int? id,
      @JsonKey(name: "begin_at") DateTime? beginAt,
      @JsonKey(name: "end_at") DateTime? endAt,
      @JsonKey(name: "cursus_id") int? cursusId,
      bool? hasCoalition,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      UserClass? user,
      Cursus? cursus});

  $UserClassCopyWith<$Res>? get user;
  $CursusCopyWith<$Res>? get cursus;
}

/// @nodoc
class _$CursusUserCopyWithImpl<$Res, $Val extends CursusUser>
    implements $CursusUserCopyWith<$Res> {
  _$CursusUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grade = freezed,
    Object? level = freezed,
    Object? skills = freezed,
    Object? blackholedAt = freezed,
    Object? id = freezed,
    Object? beginAt = freezed,
    Object? endAt = freezed,
    Object? cursusId = freezed,
    Object? hasCoalition = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
    Object? cursus = freezed,
  }) {
    return _then(_value.copyWith(
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as double?,
      skills: freezed == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<Skill>?,
      blackholedAt: freezed == blackholedAt
          ? _value.blackholedAt
          : blackholedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      beginAt: freezed == beginAt
          ? _value.beginAt
          : beginAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cursusId: freezed == cursusId
          ? _value.cursusId
          : cursusId // ignore: cast_nullable_to_non_nullable
              as int?,
      hasCoalition: freezed == hasCoalition
          ? _value.hasCoalition
          : hasCoalition // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserClass?,
      cursus: freezed == cursus
          ? _value.cursus
          : cursus // ignore: cast_nullable_to_non_nullable
              as Cursus?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserClassCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserClassCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CursusCopyWith<$Res>? get cursus {
    if (_value.cursus == null) {
      return null;
    }

    return $CursusCopyWith<$Res>(_value.cursus!, (value) {
      return _then(_value.copyWith(cursus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CursusUserCopyWith<$Res>
    implements $CursusUserCopyWith<$Res> {
  factory _$$_CursusUserCopyWith(
          _$_CursusUser value, $Res Function(_$_CursusUser) then) =
      __$$_CursusUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? grade,
      double? level,
      List<Skill>? skills,
      @JsonKey(name: "blackholed_at") DateTime? blackholedAt,
      int? id,
      @JsonKey(name: "begin_at") DateTime? beginAt,
      @JsonKey(name: "end_at") DateTime? endAt,
      @JsonKey(name: "cursus_id") int? cursusId,
      bool? hasCoalition,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      UserClass? user,
      Cursus? cursus});

  @override
  $UserClassCopyWith<$Res>? get user;
  @override
  $CursusCopyWith<$Res>? get cursus;
}

/// @nodoc
class __$$_CursusUserCopyWithImpl<$Res>
    extends _$CursusUserCopyWithImpl<$Res, _$_CursusUser>
    implements _$$_CursusUserCopyWith<$Res> {
  __$$_CursusUserCopyWithImpl(
      _$_CursusUser _value, $Res Function(_$_CursusUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grade = freezed,
    Object? level = freezed,
    Object? skills = freezed,
    Object? blackholedAt = freezed,
    Object? id = freezed,
    Object? beginAt = freezed,
    Object? endAt = freezed,
    Object? cursusId = freezed,
    Object? hasCoalition = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
    Object? cursus = freezed,
  }) {
    return _then(_$_CursusUser(
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as double?,
      skills: freezed == skills
          ? _value._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<Skill>?,
      blackholedAt: freezed == blackholedAt
          ? _value.blackholedAt
          : blackholedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      beginAt: freezed == beginAt
          ? _value.beginAt
          : beginAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cursusId: freezed == cursusId
          ? _value.cursusId
          : cursusId // ignore: cast_nullable_to_non_nullable
              as int?,
      hasCoalition: freezed == hasCoalition
          ? _value.hasCoalition
          : hasCoalition // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserClass?,
      cursus: freezed == cursus
          ? _value.cursus
          : cursus // ignore: cast_nullable_to_non_nullable
              as Cursus?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CursusUser implements _CursusUser {
  const _$_CursusUser(
      {this.grade,
      this.level,
      final List<Skill>? skills,
      @JsonKey(name: "blackholed_at") this.blackholedAt,
      this.id,
      @JsonKey(name: "begin_at") this.beginAt,
      @JsonKey(name: "end_at") this.endAt,
      @JsonKey(name: "cursus_id") this.cursusId,
      this.hasCoalition,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      this.user,
      this.cursus})
      : _skills = skills;

  factory _$_CursusUser.fromJson(Map<String, dynamic> json) =>
      _$$_CursusUserFromJson(json);

  @override
  final String? grade;
  @override
  final double? level;
  final List<Skill>? _skills;
  @override
  List<Skill>? get skills {
    final value = _skills;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "blackholed_at")
  final DateTime? blackholedAt;
  @override
  final int? id;
  @override
  @JsonKey(name: "begin_at")
  final DateTime? beginAt;
  @override
  @JsonKey(name: "end_at")
  final DateTime? endAt;
  @override
  @JsonKey(name: "cursus_id")
  final int? cursusId;
  @override
  final bool? hasCoalition;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @override
  final UserClass? user;
  @override
  final Cursus? cursus;

  @override
  String toString() {
    return 'CursusUser(grade: $grade, level: $level, skills: $skills, blackholedAt: $blackholedAt, id: $id, beginAt: $beginAt, endAt: $endAt, cursusId: $cursusId, hasCoalition: $hasCoalition, createdAt: $createdAt, updatedAt: $updatedAt, user: $user, cursus: $cursus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CursusUser &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.level, level) || other.level == level) &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            (identical(other.blackholedAt, blackholedAt) ||
                other.blackholedAt == blackholedAt) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.beginAt, beginAt) || other.beginAt == beginAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt) &&
            (identical(other.cursusId, cursusId) ||
                other.cursusId == cursusId) &&
            (identical(other.hasCoalition, hasCoalition) ||
                other.hasCoalition == hasCoalition) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.cursus, cursus) || other.cursus == cursus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      grade,
      level,
      const DeepCollectionEquality().hash(_skills),
      blackholedAt,
      id,
      beginAt,
      endAt,
      cursusId,
      hasCoalition,
      createdAt,
      updatedAt,
      user,
      cursus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CursusUserCopyWith<_$_CursusUser> get copyWith =>
      __$$_CursusUserCopyWithImpl<_$_CursusUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CursusUserToJson(
      this,
    );
  }
}

abstract class _CursusUser implements CursusUser {
  const factory _CursusUser(
      {final String? grade,
      final double? level,
      final List<Skill>? skills,
      @JsonKey(name: "blackholed_at") final DateTime? blackholedAt,
      final int? id,
      @JsonKey(name: "begin_at") final DateTime? beginAt,
      @JsonKey(name: "end_at") final DateTime? endAt,
      @JsonKey(name: "cursus_id") final int? cursusId,
      final bool? hasCoalition,
      @JsonKey(name: "created_at") final DateTime? createdAt,
      @JsonKey(name: "updated_at") final DateTime? updatedAt,
      final UserClass? user,
      final Cursus? cursus}) = _$_CursusUser;

  factory _CursusUser.fromJson(Map<String, dynamic> json) =
      _$_CursusUser.fromJson;

  @override
  String? get grade;
  @override
  double? get level;
  @override
  List<Skill>? get skills;
  @override
  @JsonKey(name: "blackholed_at")
  DateTime? get blackholedAt;
  @override
  int? get id;
  @override
  @JsonKey(name: "begin_at")
  DateTime? get beginAt;
  @override
  @JsonKey(name: "end_at")
  DateTime? get endAt;
  @override
  @JsonKey(name: "cursus_id")
  int? get cursusId;
  @override
  bool? get hasCoalition;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  UserClass? get user;
  @override
  Cursus? get cursus;
  @override
  @JsonKey(ignore: true)
  _$$_CursusUserCopyWith<_$_CursusUser> get copyWith =>
      throw _privateConstructorUsedError;
}

Cursus _$CursusFromJson(Map<String, dynamic> json) {
  return _Cursus.fromJson(json);
}

/// @nodoc
mixin _$Cursus {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get kind => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CursusCopyWith<Cursus> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CursusCopyWith<$Res> {
  factory $CursusCopyWith(Cursus value, $Res Function(Cursus) then) =
      _$CursusCopyWithImpl<$Res, Cursus>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "created_at") DateTime? createdAt,
      String? name,
      String? slug,
      String? kind});
}

/// @nodoc
class _$CursusCopyWithImpl<$Res, $Val extends Cursus>
    implements $CursusCopyWith<$Res> {
  _$CursusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? kind = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CursusCopyWith<$Res> implements $CursusCopyWith<$Res> {
  factory _$$_CursusCopyWith(_$_Cursus value, $Res Function(_$_Cursus) then) =
      __$$_CursusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "created_at") DateTime? createdAt,
      String? name,
      String? slug,
      String? kind});
}

/// @nodoc
class __$$_CursusCopyWithImpl<$Res>
    extends _$CursusCopyWithImpl<$Res, _$_Cursus>
    implements _$$_CursusCopyWith<$Res> {
  __$$_CursusCopyWithImpl(_$_Cursus _value, $Res Function(_$_Cursus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? kind = freezed,
  }) {
    return _then(_$_Cursus(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cursus implements _Cursus {
  const _$_Cursus(
      {this.id,
      @JsonKey(name: "created_at") this.createdAt,
      this.name,
      this.slug,
      this.kind});

  factory _$_Cursus.fromJson(Map<String, dynamic> json) =>
      _$$_CursusFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  final String? name;
  @override
  final String? slug;
  @override
  final String? kind;

  @override
  String toString() {
    return 'Cursus(id: $id, createdAt: $createdAt, name: $name, slug: $slug, kind: $kind)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cursus &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.kind, kind) || other.kind == kind));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, name, slug, kind);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CursusCopyWith<_$_Cursus> get copyWith =>
      __$$_CursusCopyWithImpl<_$_Cursus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CursusToJson(
      this,
    );
  }
}

abstract class _Cursus implements Cursus {
  const factory _Cursus(
      {final int? id,
      @JsonKey(name: "created_at") final DateTime? createdAt,
      final String? name,
      final String? slug,
      final String? kind}) = _$_Cursus;

  factory _Cursus.fromJson(Map<String, dynamic> json) = _$_Cursus.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  String? get name;
  @override
  String? get slug;
  @override
  String? get kind;
  @override
  @JsonKey(ignore: true)
  _$$_CursusCopyWith<_$_Cursus> get copyWith =>
      throw _privateConstructorUsedError;
}

Skill _$SkillFromJson(Map<String, dynamic> json) {
  return _Skill.fromJson(json);
}

/// @nodoc
mixin _$Skill {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  double? get level => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkillCopyWith<Skill> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillCopyWith<$Res> {
  factory $SkillCopyWith(Skill value, $Res Function(Skill) then) =
      _$SkillCopyWithImpl<$Res, Skill>;
  @useResult
  $Res call({int? id, String? name, double? level});
}

/// @nodoc
class _$SkillCopyWithImpl<$Res, $Val extends Skill>
    implements $SkillCopyWith<$Res> {
  _$SkillCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? level = freezed,
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
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SkillCopyWith<$Res> implements $SkillCopyWith<$Res> {
  factory _$$_SkillCopyWith(_$_Skill value, $Res Function(_$_Skill) then) =
      __$$_SkillCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, double? level});
}

/// @nodoc
class __$$_SkillCopyWithImpl<$Res> extends _$SkillCopyWithImpl<$Res, _$_Skill>
    implements _$$_SkillCopyWith<$Res> {
  __$$_SkillCopyWithImpl(_$_Skill _value, $Res Function(_$_Skill) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? level = freezed,
  }) {
    return _then(_$_Skill(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Skill implements _Skill {
  const _$_Skill({this.id, this.name, this.level});

  factory _$_Skill.fromJson(Map<String, dynamic> json) =>
      _$$_SkillFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final double? level;

  @override
  String toString() {
    return 'Skill(id: $id, name: $name, level: $level)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Skill &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.level, level) || other.level == level));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, level);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SkillCopyWith<_$_Skill> get copyWith =>
      __$$_SkillCopyWithImpl<_$_Skill>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SkillToJson(
      this,
    );
  }
}

abstract class _Skill implements Skill {
  const factory _Skill(
      {final int? id, final String? name, final double? level}) = _$_Skill;

  factory _Skill.fromJson(Map<String, dynamic> json) = _$_Skill.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  double? get level;
  @override
  @JsonKey(ignore: true)
  _$$_SkillCopyWith<_$_Skill> get copyWith =>
      throw _privateConstructorUsedError;
}

UserClass _$UserClassFromJson(Map<String, dynamic> json) {
  return _UserClass.fromJson(json);
}

/// @nodoc
mixin _$UserClass {
  int? get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get login => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "usual_full_name")
  String? get usualFullName => throw _privateConstructorUsedError;
  @JsonKey(name: "usual_first_name")
  dynamic get usualFirstName => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "displayname")
  String? get displayName => throw _privateConstructorUsedError;
  String? get kind => throw _privateConstructorUsedError;
  @JsonKey(name: "image_url")
  String? get imageUrl => throw _privateConstructorUsedError;
  Image? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "new_image_url")
  String? get newImageUrl => throw _privateConstructorUsedError;
  bool? get staff => throw _privateConstructorUsedError;
  @JsonKey(name: "correction_point")
  int? get correctionPoint => throw _privateConstructorUsedError;
  @JsonKey(name: "pool_month")
  String? get poolMonth => throw _privateConstructorUsedError;
  @JsonKey(name: "pool_year")
  String? get poolYear => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  int? get wallet => throw _privateConstructorUsedError;
  @JsonKey(name: "anonymize_date")
  DateTime? get anonymizeDate => throw _privateConstructorUsedError;
  @JsonKey(name: "dataErasure_date")
  DateTime? get dataErasureDate => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "alumnized_at")
  dynamic get alumnizedAt => throw _privateConstructorUsedError;
  bool? get alumni => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserClassCopyWith<UserClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserClassCopyWith<$Res> {
  factory $UserClassCopyWith(UserClass value, $Res Function(UserClass) then) =
      _$UserClassCopyWithImpl<$Res, UserClass>;
  @useResult
  $Res call(
      {int? id,
      String? email,
      String? login,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "usual_full_name") String? usualFullName,
      @JsonKey(name: "usual_first_name") dynamic usualFirstName,
      String? url,
      String? phone,
      @JsonKey(name: "displayname") String? displayName,
      String? kind,
      @JsonKey(name: "image_url") String? imageUrl,
      Image? image,
      @JsonKey(name: "new_image_url") String? newImageUrl,
      bool? staff,
      @JsonKey(name: "correction_point") int? correctionPoint,
      @JsonKey(name: "pool_month") String? poolMonth,
      @JsonKey(name: "pool_year") String? poolYear,
      String? location,
      int? wallet,
      @JsonKey(name: "anonymize_date") DateTime? anonymizeDate,
      @JsonKey(name: "dataErasure_date") DateTime? dataErasureDate,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      @JsonKey(name: "alumnized_at") dynamic alumnizedAt,
      bool? alumni,
      bool? active});

  $ImageCopyWith<$Res>? get image;
}

/// @nodoc
class _$UserClassCopyWithImpl<$Res, $Val extends UserClass>
    implements $UserClassCopyWith<$Res> {
  _$UserClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? login = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? usualFullName = freezed,
    Object? usualFirstName = null,
    Object? url = freezed,
    Object? phone = freezed,
    Object? displayName = freezed,
    Object? kind = freezed,
    Object? imageUrl = freezed,
    Object? image = freezed,
    Object? newImageUrl = freezed,
    Object? staff = freezed,
    Object? correctionPoint = freezed,
    Object? poolMonth = freezed,
    Object? poolYear = freezed,
    Object? location = freezed,
    Object? wallet = freezed,
    Object? anonymizeDate = freezed,
    Object? dataErasureDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? alumnizedAt = null,
    Object? alumni = freezed,
    Object? active = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      usualFullName: freezed == usualFullName
          ? _value.usualFullName
          : usualFullName // ignore: cast_nullable_to_non_nullable
              as String?,
      usualFirstName: null == usualFirstName
          ? _value.usualFirstName
          : usualFirstName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image?,
      newImageUrl: freezed == newImageUrl
          ? _value.newImageUrl
          : newImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      staff: freezed == staff
          ? _value.staff
          : staff // ignore: cast_nullable_to_non_nullable
              as bool?,
      correctionPoint: freezed == correctionPoint
          ? _value.correctionPoint
          : correctionPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      poolMonth: freezed == poolMonth
          ? _value.poolMonth
          : poolMonth // ignore: cast_nullable_to_non_nullable
              as String?,
      poolYear: freezed == poolYear
          ? _value.poolYear
          : poolYear // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as int?,
      anonymizeDate: freezed == anonymizeDate
          ? _value.anonymizeDate
          : anonymizeDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dataErasureDate: freezed == dataErasureDate
          ? _value.dataErasureDate
          : dataErasureDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      alumnizedAt: null == alumnizedAt
          ? _value.alumnizedAt
          : alumnizedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      alumni: freezed == alumni
          ? _value.alumni
          : alumni // ignore: cast_nullable_to_non_nullable
              as bool?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $ImageCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserClassCopyWith<$Res> implements $UserClassCopyWith<$Res> {
  factory _$$_UserClassCopyWith(
          _$_UserClass value, $Res Function(_$_UserClass) then) =
      __$$_UserClassCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? email,
      String? login,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "usual_full_name") String? usualFullName,
      @JsonKey(name: "usual_first_name") dynamic usualFirstName,
      String? url,
      String? phone,
      @JsonKey(name: "displayname") String? displayName,
      String? kind,
      @JsonKey(name: "image_url") String? imageUrl,
      Image? image,
      @JsonKey(name: "new_image_url") String? newImageUrl,
      bool? staff,
      @JsonKey(name: "correction_point") int? correctionPoint,
      @JsonKey(name: "pool_month") String? poolMonth,
      @JsonKey(name: "pool_year") String? poolYear,
      String? location,
      int? wallet,
      @JsonKey(name: "anonymize_date") DateTime? anonymizeDate,
      @JsonKey(name: "dataErasure_date") DateTime? dataErasureDate,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      @JsonKey(name: "alumnized_at") dynamic alumnizedAt,
      bool? alumni,
      bool? active});

  @override
  $ImageCopyWith<$Res>? get image;
}

/// @nodoc
class __$$_UserClassCopyWithImpl<$Res>
    extends _$UserClassCopyWithImpl<$Res, _$_UserClass>
    implements _$$_UserClassCopyWith<$Res> {
  __$$_UserClassCopyWithImpl(
      _$_UserClass _value, $Res Function(_$_UserClass) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? login = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? usualFullName = freezed,
    Object? usualFirstName = null,
    Object? url = freezed,
    Object? phone = freezed,
    Object? displayName = freezed,
    Object? kind = freezed,
    Object? imageUrl = freezed,
    Object? image = freezed,
    Object? newImageUrl = freezed,
    Object? staff = freezed,
    Object? correctionPoint = freezed,
    Object? poolMonth = freezed,
    Object? poolYear = freezed,
    Object? location = freezed,
    Object? wallet = freezed,
    Object? anonymizeDate = freezed,
    Object? dataErasureDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? alumnizedAt = null,
    Object? alumni = freezed,
    Object? active = freezed,
  }) {
    return _then(_$_UserClass(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      usualFullName: freezed == usualFullName
          ? _value.usualFullName
          : usualFullName // ignore: cast_nullable_to_non_nullable
              as String?,
      usualFirstName: null == usualFirstName
          ? _value.usualFirstName
          : usualFirstName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image?,
      newImageUrl: freezed == newImageUrl
          ? _value.newImageUrl
          : newImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      staff: freezed == staff
          ? _value.staff
          : staff // ignore: cast_nullable_to_non_nullable
              as bool?,
      correctionPoint: freezed == correctionPoint
          ? _value.correctionPoint
          : correctionPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      poolMonth: freezed == poolMonth
          ? _value.poolMonth
          : poolMonth // ignore: cast_nullable_to_non_nullable
              as String?,
      poolYear: freezed == poolYear
          ? _value.poolYear
          : poolYear // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as int?,
      anonymizeDate: freezed == anonymizeDate
          ? _value.anonymizeDate
          : anonymizeDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dataErasureDate: freezed == dataErasureDate
          ? _value.dataErasureDate
          : dataErasureDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      alumnizedAt: null == alumnizedAt
          ? _value.alumnizedAt
          : alumnizedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      alumni: freezed == alumni
          ? _value.alumni
          : alumni // ignore: cast_nullable_to_non_nullable
              as bool?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserClass implements _UserClass {
  const _$_UserClass(
      {this.id,
      this.email,
      this.login,
      @JsonKey(name: "first_name") this.firstName,
      @JsonKey(name: "last_name") this.lastName,
      @JsonKey(name: "usual_full_name") this.usualFullName,
      @JsonKey(name: "usual_first_name") this.usualFirstName,
      this.url,
      this.phone,
      @JsonKey(name: "displayname") this.displayName,
      this.kind,
      @JsonKey(name: "image_url") this.imageUrl,
      this.image,
      @JsonKey(name: "new_image_url") this.newImageUrl,
      this.staff,
      @JsonKey(name: "correction_point") this.correctionPoint,
      @JsonKey(name: "pool_month") this.poolMonth,
      @JsonKey(name: "pool_year") this.poolYear,
      this.location,
      this.wallet,
      @JsonKey(name: "anonymize_date") this.anonymizeDate,
      @JsonKey(name: "dataErasure_date") this.dataErasureDate,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "alumnized_at") this.alumnizedAt,
      this.alumni,
      this.active});

  factory _$_UserClass.fromJson(Map<String, dynamic> json) =>
      _$$_UserClassFromJson(json);

  @override
  final int? id;
  @override
  final String? email;
  @override
  final String? login;
  @override
  @JsonKey(name: "first_name")
  final String? firstName;
  @override
  @JsonKey(name: "last_name")
  final String? lastName;
  @override
  @JsonKey(name: "usual_full_name")
  final String? usualFullName;
  @override
  @JsonKey(name: "usual_first_name")
  final dynamic usualFirstName;
  @override
  final String? url;
  @override
  final String? phone;
  @override
  @JsonKey(name: "displayname")
  final String? displayName;
  @override
  final String? kind;
  @override
  @JsonKey(name: "image_url")
  final String? imageUrl;
  @override
  final Image? image;
  @override
  @JsonKey(name: "new_image_url")
  final String? newImageUrl;
  @override
  final bool? staff;
  @override
  @JsonKey(name: "correction_point")
  final int? correctionPoint;
  @override
  @JsonKey(name: "pool_month")
  final String? poolMonth;
  @override
  @JsonKey(name: "pool_year")
  final String? poolYear;
  @override
  final String? location;
  @override
  final int? wallet;
  @override
  @JsonKey(name: "anonymize_date")
  final DateTime? anonymizeDate;
  @override
  @JsonKey(name: "dataErasure_date")
  final DateTime? dataErasureDate;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "alumnized_at")
  final dynamic alumnizedAt;
  @override
  final bool? alumni;
  @override
  final bool? active;

  @override
  String toString() {
    return 'UserClass(id: $id, email: $email, login: $login, firstName: $firstName, lastName: $lastName, usualFullName: $usualFullName, usualFirstName: $usualFirstName, url: $url, phone: $phone, displayName: $displayName, kind: $kind, imageUrl: $imageUrl, image: $image, newImageUrl: $newImageUrl, staff: $staff, correctionPoint: $correctionPoint, poolMonth: $poolMonth, poolYear: $poolYear, location: $location, wallet: $wallet, anonymizeDate: $anonymizeDate, dataErasureDate: $dataErasureDate, createdAt: $createdAt, updatedAt: $updatedAt, alumnizedAt: $alumnizedAt, alumni: $alumni, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserClass &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.usualFullName, usualFullName) ||
                other.usualFullName == usualFullName) &&
            const DeepCollectionEquality()
                .equals(other.usualFirstName, usualFirstName) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.newImageUrl, newImageUrl) ||
                other.newImageUrl == newImageUrl) &&
            (identical(other.staff, staff) || other.staff == staff) &&
            (identical(other.correctionPoint, correctionPoint) ||
                other.correctionPoint == correctionPoint) &&
            (identical(other.poolMonth, poolMonth) ||
                other.poolMonth == poolMonth) &&
            (identical(other.poolYear, poolYear) ||
                other.poolYear == poolYear) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.wallet, wallet) || other.wallet == wallet) &&
            (identical(other.anonymizeDate, anonymizeDate) ||
                other.anonymizeDate == anonymizeDate) &&
            (identical(other.dataErasureDate, dataErasureDate) ||
                other.dataErasureDate == dataErasureDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.alumnizedAt, alumnizedAt) &&
            (identical(other.alumni, alumni) || other.alumni == alumni) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        email,
        login,
        firstName,
        lastName,
        usualFullName,
        const DeepCollectionEquality().hash(usualFirstName),
        url,
        phone,
        displayName,
        kind,
        imageUrl,
        image,
        newImageUrl,
        staff,
        correctionPoint,
        poolMonth,
        poolYear,
        location,
        wallet,
        anonymizeDate,
        dataErasureDate,
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(alumnizedAt),
        alumni,
        active
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserClassCopyWith<_$_UserClass> get copyWith =>
      __$$_UserClassCopyWithImpl<_$_UserClass>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserClassToJson(
      this,
    );
  }
}

abstract class _UserClass implements UserClass {
  const factory _UserClass(
      {final int? id,
      final String? email,
      final String? login,
      @JsonKey(name: "first_name") final String? firstName,
      @JsonKey(name: "last_name") final String? lastName,
      @JsonKey(name: "usual_full_name") final String? usualFullName,
      @JsonKey(name: "usual_first_name") final dynamic usualFirstName,
      final String? url,
      final String? phone,
      @JsonKey(name: "displayname") final String? displayName,
      final String? kind,
      @JsonKey(name: "image_url") final String? imageUrl,
      final Image? image,
      @JsonKey(name: "new_image_url") final String? newImageUrl,
      final bool? staff,
      @JsonKey(name: "correction_point") final int? correctionPoint,
      @JsonKey(name: "pool_month") final String? poolMonth,
      @JsonKey(name: "pool_year") final String? poolYear,
      final String? location,
      final int? wallet,
      @JsonKey(name: "anonymize_date") final DateTime? anonymizeDate,
      @JsonKey(name: "dataErasure_date") final DateTime? dataErasureDate,
      @JsonKey(name: "created_at") final DateTime? createdAt,
      @JsonKey(name: "updated_at") final DateTime? updatedAt,
      @JsonKey(name: "alumnized_at") final dynamic alumnizedAt,
      final bool? alumni,
      final bool? active}) = _$_UserClass;

  factory _UserClass.fromJson(Map<String, dynamic> json) =
      _$_UserClass.fromJson;

  @override
  int? get id;
  @override
  String? get email;
  @override
  String? get login;
  @override
  @JsonKey(name: "first_name")
  String? get firstName;
  @override
  @JsonKey(name: "last_name")
  String? get lastName;
  @override
  @JsonKey(name: "usual_full_name")
  String? get usualFullName;
  @override
  @JsonKey(name: "usual_first_name")
  dynamic get usualFirstName;
  @override
  String? get url;
  @override
  String? get phone;
  @override
  @JsonKey(name: "displayname")
  String? get displayName;
  @override
  String? get kind;
  @override
  @JsonKey(name: "image_url")
  String? get imageUrl;
  @override
  Image? get image;
  @override
  @JsonKey(name: "new_image_url")
  String? get newImageUrl;
  @override
  bool? get staff;
  @override
  @JsonKey(name: "correction_point")
  int? get correctionPoint;
  @override
  @JsonKey(name: "pool_month")
  String? get poolMonth;
  @override
  @JsonKey(name: "pool_year")
  String? get poolYear;
  @override
  String? get location;
  @override
  int? get wallet;
  @override
  @JsonKey(name: "anonymize_date")
  DateTime? get anonymizeDate;
  @override
  @JsonKey(name: "dataErasure_date")
  DateTime? get dataErasureDate;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "alumnized_at")
  dynamic get alumnizedAt;
  @override
  bool? get alumni;
  @override
  bool? get active;
  @override
  @JsonKey(ignore: true)
  _$$_UserClassCopyWith<_$_UserClass> get copyWith =>
      throw _privateConstructorUsedError;
}

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  String? get link => throw _privateConstructorUsedError;
  Versions? get versions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;
  @useResult
  $Res call({String? link, Versions? versions});

  $VersionsCopyWith<$Res>? get versions;
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = freezed,
    Object? versions = freezed,
  }) {
    return _then(_value.copyWith(
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      versions: freezed == versions
          ? _value.versions
          : versions // ignore: cast_nullable_to_non_nullable
              as Versions?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VersionsCopyWith<$Res>? get versions {
    if (_value.versions == null) {
      return null;
    }

    return $VersionsCopyWith<$Res>(_value.versions!, (value) {
      return _then(_value.copyWith(versions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ImageCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$_ImageCopyWith(_$_Image value, $Res Function(_$_Image) then) =
      __$$_ImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? link, Versions? versions});

  @override
  $VersionsCopyWith<$Res>? get versions;
}

/// @nodoc
class __$$_ImageCopyWithImpl<$Res> extends _$ImageCopyWithImpl<$Res, _$_Image>
    implements _$$_ImageCopyWith<$Res> {
  __$$_ImageCopyWithImpl(_$_Image _value, $Res Function(_$_Image) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = freezed,
    Object? versions = freezed,
  }) {
    return _then(_$_Image(
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      versions: freezed == versions
          ? _value.versions
          : versions // ignore: cast_nullable_to_non_nullable
              as Versions?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Image implements _Image {
  const _$_Image({this.link, this.versions});

  factory _$_Image.fromJson(Map<String, dynamic> json) =>
      _$$_ImageFromJson(json);

  @override
  final String? link;
  @override
  final Versions? versions;

  @override
  String toString() {
    return 'Image(link: $link, versions: $versions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Image &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.versions, versions) ||
                other.versions == versions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, link, versions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageCopyWith<_$_Image> get copyWith =>
      __$$_ImageCopyWithImpl<_$_Image>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageToJson(
      this,
    );
  }
}

abstract class _Image implements Image {
  const factory _Image({final String? link, final Versions? versions}) =
      _$_Image;

  factory _Image.fromJson(Map<String, dynamic> json) = _$_Image.fromJson;

  @override
  String? get link;
  @override
  Versions? get versions;
  @override
  @JsonKey(ignore: true)
  _$$_ImageCopyWith<_$_Image> get copyWith =>
      throw _privateConstructorUsedError;
}

Versions _$VersionsFromJson(Map<String, dynamic> json) {
  return _Versions.fromJson(json);
}

/// @nodoc
mixin _$Versions {
  String? get large => throw _privateConstructorUsedError;
  String? get medium => throw _privateConstructorUsedError;
  String? get small => throw _privateConstructorUsedError;
  String? get micro => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersionsCopyWith<Versions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionsCopyWith<$Res> {
  factory $VersionsCopyWith(Versions value, $Res Function(Versions) then) =
      _$VersionsCopyWithImpl<$Res, Versions>;
  @useResult
  $Res call({String? large, String? medium, String? small, String? micro});
}

/// @nodoc
class _$VersionsCopyWithImpl<$Res, $Val extends Versions>
    implements $VersionsCopyWith<$Res> {
  _$VersionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? large = freezed,
    Object? medium = freezed,
    Object? small = freezed,
    Object? micro = freezed,
  }) {
    return _then(_value.copyWith(
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      micro: freezed == micro
          ? _value.micro
          : micro // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VersionsCopyWith<$Res> implements $VersionsCopyWith<$Res> {
  factory _$$_VersionsCopyWith(
          _$_Versions value, $Res Function(_$_Versions) then) =
      __$$_VersionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? large, String? medium, String? small, String? micro});
}

/// @nodoc
class __$$_VersionsCopyWithImpl<$Res>
    extends _$VersionsCopyWithImpl<$Res, _$_Versions>
    implements _$$_VersionsCopyWith<$Res> {
  __$$_VersionsCopyWithImpl(
      _$_Versions _value, $Res Function(_$_Versions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? large = freezed,
    Object? medium = freezed,
    Object? small = freezed,
    Object? micro = freezed,
  }) {
    return _then(_$_Versions(
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      micro: freezed == micro
          ? _value.micro
          : micro // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Versions implements _Versions {
  const _$_Versions({this.large, this.medium, this.small, this.micro});

  factory _$_Versions.fromJson(Map<String, dynamic> json) =>
      _$$_VersionsFromJson(json);

  @override
  final String? large;
  @override
  final String? medium;
  @override
  final String? small;
  @override
  final String? micro;

  @override
  String toString() {
    return 'Versions(large: $large, medium: $medium, small: $small, micro: $micro)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Versions &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.micro, micro) || other.micro == micro));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, large, medium, small, micro);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VersionsCopyWith<_$_Versions> get copyWith =>
      __$$_VersionsCopyWithImpl<_$_Versions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VersionsToJson(
      this,
    );
  }
}

abstract class _Versions implements Versions {
  const factory _Versions(
      {final String? large,
      final String? medium,
      final String? small,
      final String? micro}) = _$_Versions;

  factory _Versions.fromJson(Map<String, dynamic> json) = _$_Versions.fromJson;

  @override
  String? get large;
  @override
  String? get medium;
  @override
  String? get small;
  @override
  String? get micro;
  @override
  @JsonKey(ignore: true)
  _$$_VersionsCopyWith<_$_Versions> get copyWith =>
      throw _privateConstructorUsedError;
}

ExpertisesUser _$ExpertisesUserFromJson(Map<String, dynamic> json) {
  return _ExpertisesUser.fromJson(json);
}

/// @nodoc
mixin _$ExpertisesUser {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "expertise_id")
  int? get expertiseId => throw _privateConstructorUsedError;
  bool? get interested => throw _privateConstructorUsedError;
  int? get value => throw _privateConstructorUsedError;
  @JsonKey(name: "contact_me")
  bool? get contactMe => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpertisesUserCopyWith<ExpertisesUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpertisesUserCopyWith<$Res> {
  factory $ExpertisesUserCopyWith(
          ExpertisesUser value, $Res Function(ExpertisesUser) then) =
      _$ExpertisesUserCopyWithImpl<$Res, ExpertisesUser>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "expertise_id") int? expertiseId,
      bool? interested,
      int? value,
      @JsonKey(name: "contact_me") bool? contactMe,
      @JsonKey(name: "created_at") DateTime? createdAt,
      int? userId});
}

/// @nodoc
class _$ExpertisesUserCopyWithImpl<$Res, $Val extends ExpertisesUser>
    implements $ExpertisesUserCopyWith<$Res> {
  _$ExpertisesUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? expertiseId = freezed,
    Object? interested = freezed,
    Object? value = freezed,
    Object? contactMe = freezed,
    Object? createdAt = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      expertiseId: freezed == expertiseId
          ? _value.expertiseId
          : expertiseId // ignore: cast_nullable_to_non_nullable
              as int?,
      interested: freezed == interested
          ? _value.interested
          : interested // ignore: cast_nullable_to_non_nullable
              as bool?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      contactMe: freezed == contactMe
          ? _value.contactMe
          : contactMe // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExpertisesUserCopyWith<$Res>
    implements $ExpertisesUserCopyWith<$Res> {
  factory _$$_ExpertisesUserCopyWith(
          _$_ExpertisesUser value, $Res Function(_$_ExpertisesUser) then) =
      __$$_ExpertisesUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "expertise_id") int? expertiseId,
      bool? interested,
      int? value,
      @JsonKey(name: "contact_me") bool? contactMe,
      @JsonKey(name: "created_at") DateTime? createdAt,
      int? userId});
}

/// @nodoc
class __$$_ExpertisesUserCopyWithImpl<$Res>
    extends _$ExpertisesUserCopyWithImpl<$Res, _$_ExpertisesUser>
    implements _$$_ExpertisesUserCopyWith<$Res> {
  __$$_ExpertisesUserCopyWithImpl(
      _$_ExpertisesUser _value, $Res Function(_$_ExpertisesUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? expertiseId = freezed,
    Object? interested = freezed,
    Object? value = freezed,
    Object? contactMe = freezed,
    Object? createdAt = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$_ExpertisesUser(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      expertiseId: freezed == expertiseId
          ? _value.expertiseId
          : expertiseId // ignore: cast_nullable_to_non_nullable
              as int?,
      interested: freezed == interested
          ? _value.interested
          : interested // ignore: cast_nullable_to_non_nullable
              as bool?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      contactMe: freezed == contactMe
          ? _value.contactMe
          : contactMe // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExpertisesUser implements _ExpertisesUser {
  const _$_ExpertisesUser(
      {this.id,
      @JsonKey(name: "expertise_id") this.expertiseId,
      this.interested,
      this.value,
      @JsonKey(name: "contact_me") this.contactMe,
      @JsonKey(name: "created_at") this.createdAt,
      this.userId});

  factory _$_ExpertisesUser.fromJson(Map<String, dynamic> json) =>
      _$$_ExpertisesUserFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "expertise_id")
  final int? expertiseId;
  @override
  final bool? interested;
  @override
  final int? value;
  @override
  @JsonKey(name: "contact_me")
  final bool? contactMe;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  final int? userId;

  @override
  String toString() {
    return 'ExpertisesUser(id: $id, expertiseId: $expertiseId, interested: $interested, value: $value, contactMe: $contactMe, createdAt: $createdAt, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExpertisesUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.expertiseId, expertiseId) ||
                other.expertiseId == expertiseId) &&
            (identical(other.interested, interested) ||
                other.interested == interested) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.contactMe, contactMe) ||
                other.contactMe == contactMe) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, expertiseId, interested,
      value, contactMe, createdAt, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExpertisesUserCopyWith<_$_ExpertisesUser> get copyWith =>
      __$$_ExpertisesUserCopyWithImpl<_$_ExpertisesUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExpertisesUserToJson(
      this,
    );
  }
}

abstract class _ExpertisesUser implements ExpertisesUser {
  const factory _ExpertisesUser(
      {final int? id,
      @JsonKey(name: "expertise_id") final int? expertiseId,
      final bool? interested,
      final int? value,
      @JsonKey(name: "contact_me") final bool? contactMe,
      @JsonKey(name: "created_at") final DateTime? createdAt,
      final int? userId}) = _$_ExpertisesUser;

  factory _ExpertisesUser.fromJson(Map<String, dynamic> json) =
      _$_ExpertisesUser.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "expertise_id")
  int? get expertiseId;
  @override
  bool? get interested;
  @override
  int? get value;
  @override
  @JsonKey(name: "contact_me")
  bool? get contactMe;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  int? get userId;
  @override
  @JsonKey(ignore: true)
  _$$_ExpertisesUserCopyWith<_$_ExpertisesUser> get copyWith =>
      throw _privateConstructorUsedError;
}

LanguagesUser _$LanguagesUserFromJson(Map<String, dynamic> json) {
  return _LanguagesUser.fromJson(json);
}

/// @nodoc
mixin _$LanguagesUser {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "language_id")
  int? get languageId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  int? get userId => throw _privateConstructorUsedError;
  int? get position => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguagesUserCopyWith<LanguagesUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguagesUserCopyWith<$Res> {
  factory $LanguagesUserCopyWith(
          LanguagesUser value, $Res Function(LanguagesUser) then) =
      _$LanguagesUserCopyWithImpl<$Res, LanguagesUser>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "language_id") int? languageId,
      @JsonKey(name: "user_id") int? userId,
      int? position,
      @JsonKey(name: "created_at") DateTime? createdAt});
}

/// @nodoc
class _$LanguagesUserCopyWithImpl<$Res, $Val extends LanguagesUser>
    implements $LanguagesUserCopyWith<$Res> {
  _$LanguagesUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? languageId = freezed,
    Object? userId = freezed,
    Object? position = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      languageId: freezed == languageId
          ? _value.languageId
          : languageId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LanguagesUserCopyWith<$Res>
    implements $LanguagesUserCopyWith<$Res> {
  factory _$$_LanguagesUserCopyWith(
          _$_LanguagesUser value, $Res Function(_$_LanguagesUser) then) =
      __$$_LanguagesUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "language_id") int? languageId,
      @JsonKey(name: "user_id") int? userId,
      int? position,
      @JsonKey(name: "created_at") DateTime? createdAt});
}

/// @nodoc
class __$$_LanguagesUserCopyWithImpl<$Res>
    extends _$LanguagesUserCopyWithImpl<$Res, _$_LanguagesUser>
    implements _$$_LanguagesUserCopyWith<$Res> {
  __$$_LanguagesUserCopyWithImpl(
      _$_LanguagesUser _value, $Res Function(_$_LanguagesUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? languageId = freezed,
    Object? userId = freezed,
    Object? position = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_LanguagesUser(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      languageId: freezed == languageId
          ? _value.languageId
          : languageId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LanguagesUser implements _LanguagesUser {
  const _$_LanguagesUser(
      {this.id,
      @JsonKey(name: "language_id") this.languageId,
      @JsonKey(name: "user_id") this.userId,
      this.position,
      @JsonKey(name: "created_at") this.createdAt});

  factory _$_LanguagesUser.fromJson(Map<String, dynamic> json) =>
      _$$_LanguagesUserFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "language_id")
  final int? languageId;
  @override
  @JsonKey(name: "user_id")
  final int? userId;
  @override
  final int? position;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;

  @override
  String toString() {
    return 'LanguagesUser(id: $id, languageId: $languageId, userId: $userId, position: $position, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LanguagesUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.languageId, languageId) ||
                other.languageId == languageId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, languageId, userId, position, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LanguagesUserCopyWith<_$_LanguagesUser> get copyWith =>
      __$$_LanguagesUserCopyWithImpl<_$_LanguagesUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LanguagesUserToJson(
      this,
    );
  }
}

abstract class _LanguagesUser implements LanguagesUser {
  const factory _LanguagesUser(
          {final int? id,
          @JsonKey(name: "language_id") final int? languageId,
          @JsonKey(name: "user_id") final int? userId,
          final int? position,
          @JsonKey(name: "created_at") final DateTime? createdAt}) =
      _$_LanguagesUser;

  factory _LanguagesUser.fromJson(Map<String, dynamic> json) =
      _$_LanguagesUser.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "language_id")
  int? get languageId;
  @override
  @JsonKey(name: "user_id")
  int? get userId;
  @override
  int? get position;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_LanguagesUserCopyWith<_$_LanguagesUser> get copyWith =>
      throw _privateConstructorUsedError;
}

ProjectsUser _$ProjectsUserFromJson(Map<String, dynamic> json) {
  return _ProjectsUser.fromJson(json);
}

/// @nodoc
mixin _$ProjectsUser {
  int? get id => throw _privateConstructorUsedError;
  int? get occurrence => throw _privateConstructorUsedError;
  @JsonKey(name: "final_mark")
  int? get finalMark => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  bool? get validated => throw _privateConstructorUsedError;
  @JsonKey(name: "current_team_id")
  int? get currentTeamId => throw _privateConstructorUsedError;
  Project? get project => throw _privateConstructorUsedError;
  @JsonKey(name: "cursus_ids")
  List<int>? get cursusIds => throw _privateConstructorUsedError;
  @JsonKey(name: "marked_at")
  DateTime? get markedAt => throw _privateConstructorUsedError;
  bool? get marked => throw _privateConstructorUsedError;
  @JsonKey(name: "retriable_at")
  DateTime? get retriableAt => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectsUserCopyWith<ProjectsUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectsUserCopyWith<$Res> {
  factory $ProjectsUserCopyWith(
          ProjectsUser value, $Res Function(ProjectsUser) then) =
      _$ProjectsUserCopyWithImpl<$Res, ProjectsUser>;
  @useResult
  $Res call(
      {int? id,
      int? occurrence,
      @JsonKey(name: "final_mark") int? finalMark,
      String? status,
      bool? validated,
      @JsonKey(name: "current_team_id") int? currentTeamId,
      Project? project,
      @JsonKey(name: "cursus_ids") List<int>? cursusIds,
      @JsonKey(name: "marked_at") DateTime? markedAt,
      bool? marked,
      @JsonKey(name: "retriable_at") DateTime? retriableAt,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});

  $ProjectCopyWith<$Res>? get project;
}

/// @nodoc
class _$ProjectsUserCopyWithImpl<$Res, $Val extends ProjectsUser>
    implements $ProjectsUserCopyWith<$Res> {
  _$ProjectsUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? occurrence = freezed,
    Object? finalMark = freezed,
    Object? status = freezed,
    Object? validated = freezed,
    Object? currentTeamId = freezed,
    Object? project = freezed,
    Object? cursusIds = freezed,
    Object? markedAt = freezed,
    Object? marked = freezed,
    Object? retriableAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      occurrence: freezed == occurrence
          ? _value.occurrence
          : occurrence // ignore: cast_nullable_to_non_nullable
              as int?,
      finalMark: freezed == finalMark
          ? _value.finalMark
          : finalMark // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      validated: freezed == validated
          ? _value.validated
          : validated // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentTeamId: freezed == currentTeamId
          ? _value.currentTeamId
          : currentTeamId // ignore: cast_nullable_to_non_nullable
              as int?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project?,
      cursusIds: freezed == cursusIds
          ? _value.cursusIds
          : cursusIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      markedAt: freezed == markedAt
          ? _value.markedAt
          : markedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      marked: freezed == marked
          ? _value.marked
          : marked // ignore: cast_nullable_to_non_nullable
              as bool?,
      retriableAt: freezed == retriableAt
          ? _value.retriableAt
          : retriableAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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

  @override
  @pragma('vm:prefer-inline')
  $ProjectCopyWith<$Res>? get project {
    if (_value.project == null) {
      return null;
    }

    return $ProjectCopyWith<$Res>(_value.project!, (value) {
      return _then(_value.copyWith(project: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProjectsUserCopyWith<$Res>
    implements $ProjectsUserCopyWith<$Res> {
  factory _$$_ProjectsUserCopyWith(
          _$_ProjectsUser value, $Res Function(_$_ProjectsUser) then) =
      __$$_ProjectsUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? occurrence,
      @JsonKey(name: "final_mark") int? finalMark,
      String? status,
      bool? validated,
      @JsonKey(name: "current_team_id") int? currentTeamId,
      Project? project,
      @JsonKey(name: "cursus_ids") List<int>? cursusIds,
      @JsonKey(name: "marked_at") DateTime? markedAt,
      bool? marked,
      @JsonKey(name: "retriable_at") DateTime? retriableAt,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});

  @override
  $ProjectCopyWith<$Res>? get project;
}

/// @nodoc
class __$$_ProjectsUserCopyWithImpl<$Res>
    extends _$ProjectsUserCopyWithImpl<$Res, _$_ProjectsUser>
    implements _$$_ProjectsUserCopyWith<$Res> {
  __$$_ProjectsUserCopyWithImpl(
      _$_ProjectsUser _value, $Res Function(_$_ProjectsUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? occurrence = freezed,
    Object? finalMark = freezed,
    Object? status = freezed,
    Object? validated = freezed,
    Object? currentTeamId = freezed,
    Object? project = freezed,
    Object? cursusIds = freezed,
    Object? markedAt = freezed,
    Object? marked = freezed,
    Object? retriableAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_ProjectsUser(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      occurrence: freezed == occurrence
          ? _value.occurrence
          : occurrence // ignore: cast_nullable_to_non_nullable
              as int?,
      finalMark: freezed == finalMark
          ? _value.finalMark
          : finalMark // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      validated: freezed == validated
          ? _value.validated
          : validated // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentTeamId: freezed == currentTeamId
          ? _value.currentTeamId
          : currentTeamId // ignore: cast_nullable_to_non_nullable
              as int?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project?,
      cursusIds: freezed == cursusIds
          ? _value._cursusIds
          : cursusIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      markedAt: freezed == markedAt
          ? _value.markedAt
          : markedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      marked: freezed == marked
          ? _value.marked
          : marked // ignore: cast_nullable_to_non_nullable
              as bool?,
      retriableAt: freezed == retriableAt
          ? _value.retriableAt
          : retriableAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
class _$_ProjectsUser implements _ProjectsUser {
  const _$_ProjectsUser(
      {this.id,
      this.occurrence,
      @JsonKey(name: "final_mark") this.finalMark,
      this.status,
      this.validated,
      @JsonKey(name: "current_team_id") this.currentTeamId,
      this.project,
      @JsonKey(name: "cursus_ids") final List<int>? cursusIds,
      @JsonKey(name: "marked_at") this.markedAt,
      this.marked,
      @JsonKey(name: "retriable_at") this.retriableAt,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt})
      : _cursusIds = cursusIds;

  factory _$_ProjectsUser.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectsUserFromJson(json);

  @override
  final int? id;
  @override
  final int? occurrence;
  @override
  @JsonKey(name: "final_mark")
  final int? finalMark;
  @override
  final String? status;
  @override
  final bool? validated;
  @override
  @JsonKey(name: "current_team_id")
  final int? currentTeamId;
  @override
  final Project? project;
  final List<int>? _cursusIds;
  @override
  @JsonKey(name: "cursus_ids")
  List<int>? get cursusIds {
    final value = _cursusIds;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "marked_at")
  final DateTime? markedAt;
  @override
  final bool? marked;
  @override
  @JsonKey(name: "retriable_at")
  final DateTime? retriableAt;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ProjectsUser(id: $id, occurrence: $occurrence, finalMark: $finalMark, status: $status, validated: $validated, currentTeamId: $currentTeamId, project: $project, cursusIds: $cursusIds, markedAt: $markedAt, marked: $marked, retriableAt: $retriableAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectsUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.occurrence, occurrence) ||
                other.occurrence == occurrence) &&
            (identical(other.finalMark, finalMark) ||
                other.finalMark == finalMark) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.validated, validated) ||
                other.validated == validated) &&
            (identical(other.currentTeamId, currentTeamId) ||
                other.currentTeamId == currentTeamId) &&
            (identical(other.project, project) || other.project == project) &&
            const DeepCollectionEquality()
                .equals(other._cursusIds, _cursusIds) &&
            (identical(other.markedAt, markedAt) ||
                other.markedAt == markedAt) &&
            (identical(other.marked, marked) || other.marked == marked) &&
            (identical(other.retriableAt, retriableAt) ||
                other.retriableAt == retriableAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      occurrence,
      finalMark,
      status,
      validated,
      currentTeamId,
      project,
      const DeepCollectionEquality().hash(_cursusIds),
      markedAt,
      marked,
      retriableAt,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectsUserCopyWith<_$_ProjectsUser> get copyWith =>
      __$$_ProjectsUserCopyWithImpl<_$_ProjectsUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectsUserToJson(
      this,
    );
  }
}

abstract class _ProjectsUser implements ProjectsUser {
  const factory _ProjectsUser(
          {final int? id,
          final int? occurrence,
          @JsonKey(name: "final_mark") final int? finalMark,
          final String? status,
          final bool? validated,
          @JsonKey(name: "current_team_id") final int? currentTeamId,
          final Project? project,
          @JsonKey(name: "cursus_ids") final List<int>? cursusIds,
          @JsonKey(name: "marked_at") final DateTime? markedAt,
          final bool? marked,
          @JsonKey(name: "retriable_at") final DateTime? retriableAt,
          @JsonKey(name: "created_at") final DateTime? createdAt,
          @JsonKey(name: "updated_at") final DateTime? updatedAt}) =
      _$_ProjectsUser;

  factory _ProjectsUser.fromJson(Map<String, dynamic> json) =
      _$_ProjectsUser.fromJson;

  @override
  int? get id;
  @override
  int? get occurrence;
  @override
  @JsonKey(name: "final_mark")
  int? get finalMark;
  @override
  String? get status;
  @override
  bool? get validated;
  @override
  @JsonKey(name: "current_team_id")
  int? get currentTeamId;
  @override
  Project? get project;
  @override
  @JsonKey(name: "cursus_ids")
  List<int>? get cursusIds;
  @override
  @JsonKey(name: "marked_at")
  DateTime? get markedAt;
  @override
  bool? get marked;
  @override
  @JsonKey(name: "retriable_at")
  DateTime? get retriableAt;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectsUserCopyWith<_$_ProjectsUser> get copyWith =>
      throw _privateConstructorUsedError;
}

Project _$ProjectFromJson(Map<String, dynamic> json) {
  return _Project.fromJson(json);
}

/// @nodoc
mixin _$Project {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  dynamic get parent => throw _privateConstructorUsedError;
  List<dynamic>? get children => throw _privateConstructorUsedError;
  List<dynamic>? get attachments => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  bool? get exam => throw _privateConstructorUsedError;
  int? get gitId => throw _privateConstructorUsedError;
  String? get repository => throw _privateConstructorUsedError;
  String? get recommendation => throw _privateConstructorUsedError;
  List<Cursus>? get cursus => throw _privateConstructorUsedError;
  List<Campus>? get campus => throw _privateConstructorUsedError;
  List<dynamic>? get videos => throw _privateConstructorUsedError;
  List<ProjectSession>? get projectSessions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectCopyWith<Project> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res, Project>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? slug,
      dynamic parent,
      List<dynamic>? children,
      List<dynamic>? attachments,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? exam,
      int? gitId,
      String? repository,
      String? recommendation,
      List<Cursus>? cursus,
      List<Campus>? campus,
      List<dynamic>? videos,
      List<ProjectSession>? projectSessions});
}

/// @nodoc
class _$ProjectCopyWithImpl<$Res, $Val extends Project>
    implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._value, this._then);

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
    Object? parent = null,
    Object? children = freezed,
    Object? attachments = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? exam = freezed,
    Object? gitId = freezed,
    Object? repository = freezed,
    Object? recommendation = freezed,
    Object? cursus = freezed,
    Object? campus = freezed,
    Object? videos = freezed,
    Object? projectSessions = freezed,
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
      parent: null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as dynamic,
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      attachments: freezed == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      exam: freezed == exam
          ? _value.exam
          : exam // ignore: cast_nullable_to_non_nullable
              as bool?,
      gitId: freezed == gitId
          ? _value.gitId
          : gitId // ignore: cast_nullable_to_non_nullable
              as int?,
      repository: freezed == repository
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as String?,
      recommendation: freezed == recommendation
          ? _value.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as String?,
      cursus: freezed == cursus
          ? _value.cursus
          : cursus // ignore: cast_nullable_to_non_nullable
              as List<Cursus>?,
      campus: freezed == campus
          ? _value.campus
          : campus // ignore: cast_nullable_to_non_nullable
              as List<Campus>?,
      videos: freezed == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      projectSessions: freezed == projectSessions
          ? _value.projectSessions
          : projectSessions // ignore: cast_nullable_to_non_nullable
              as List<ProjectSession>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$$_ProjectCopyWith(
          _$_Project value, $Res Function(_$_Project) then) =
      __$$_ProjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? slug,
      dynamic parent,
      List<dynamic>? children,
      List<dynamic>? attachments,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? exam,
      int? gitId,
      String? repository,
      String? recommendation,
      List<Cursus>? cursus,
      List<Campus>? campus,
      List<dynamic>? videos,
      List<ProjectSession>? projectSessions});
}

/// @nodoc
class __$$_ProjectCopyWithImpl<$Res>
    extends _$ProjectCopyWithImpl<$Res, _$_Project>
    implements _$$_ProjectCopyWith<$Res> {
  __$$_ProjectCopyWithImpl(_$_Project _value, $Res Function(_$_Project) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? parent = null,
    Object? children = freezed,
    Object? attachments = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? exam = freezed,
    Object? gitId = freezed,
    Object? repository = freezed,
    Object? recommendation = freezed,
    Object? cursus = freezed,
    Object? campus = freezed,
    Object? videos = freezed,
    Object? projectSessions = freezed,
  }) {
    return _then(_$_Project(
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
      parent: null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as dynamic,
      children: freezed == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      attachments: freezed == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      exam: freezed == exam
          ? _value.exam
          : exam // ignore: cast_nullable_to_non_nullable
              as bool?,
      gitId: freezed == gitId
          ? _value.gitId
          : gitId // ignore: cast_nullable_to_non_nullable
              as int?,
      repository: freezed == repository
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as String?,
      recommendation: freezed == recommendation
          ? _value.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as String?,
      cursus: freezed == cursus
          ? _value._cursus
          : cursus // ignore: cast_nullable_to_non_nullable
              as List<Cursus>?,
      campus: freezed == campus
          ? _value._campus
          : campus // ignore: cast_nullable_to_non_nullable
              as List<Campus>?,
      videos: freezed == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      projectSessions: freezed == projectSessions
          ? _value._projectSessions
          : projectSessions // ignore: cast_nullable_to_non_nullable
              as List<ProjectSession>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Project implements _Project {
  const _$_Project(
      {this.id,
      this.name,
      this.slug,
      this.parent,
      final List<dynamic>? children,
      final List<dynamic>? attachments,
      this.createdAt,
      this.updatedAt,
      this.exam,
      this.gitId,
      this.repository,
      this.recommendation,
      final List<Cursus>? cursus,
      final List<Campus>? campus,
      final List<dynamic>? videos,
      final List<ProjectSession>? projectSessions})
      : _children = children,
        _attachments = attachments,
        _cursus = cursus,
        _campus = campus,
        _videos = videos,
        _projectSessions = projectSessions;

  factory _$_Project.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? slug;
  @override
  final dynamic parent;
  final List<dynamic>? _children;
  @override
  List<dynamic>? get children {
    final value = _children;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _attachments;
  @override
  List<dynamic>? get attachments {
    final value = _attachments;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final bool? exam;
  @override
  final int? gitId;
  @override
  final String? repository;
  @override
  final String? recommendation;
  final List<Cursus>? _cursus;
  @override
  List<Cursus>? get cursus {
    final value = _cursus;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Campus>? _campus;
  @override
  List<Campus>? get campus {
    final value = _campus;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _videos;
  @override
  List<dynamic>? get videos {
    final value = _videos;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProjectSession>? _projectSessions;
  @override
  List<ProjectSession>? get projectSessions {
    final value = _projectSessions;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Project(id: $id, name: $name, slug: $slug, parent: $parent, children: $children, attachments: $attachments, createdAt: $createdAt, updatedAt: $updatedAt, exam: $exam, gitId: $gitId, repository: $repository, recommendation: $recommendation, cursus: $cursus, campus: $campus, videos: $videos, projectSessions: $projectSessions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Project &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            const DeepCollectionEquality().equals(other.parent, parent) &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.exam, exam) || other.exam == exam) &&
            (identical(other.gitId, gitId) || other.gitId == gitId) &&
            (identical(other.repository, repository) ||
                other.repository == repository) &&
            (identical(other.recommendation, recommendation) ||
                other.recommendation == recommendation) &&
            const DeepCollectionEquality().equals(other._cursus, _cursus) &&
            const DeepCollectionEquality().equals(other._campus, _campus) &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            const DeepCollectionEquality()
                .equals(other._projectSessions, _projectSessions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      slug,
      const DeepCollectionEquality().hash(parent),
      const DeepCollectionEquality().hash(_children),
      const DeepCollectionEquality().hash(_attachments),
      createdAt,
      updatedAt,
      exam,
      gitId,
      repository,
      recommendation,
      const DeepCollectionEquality().hash(_cursus),
      const DeepCollectionEquality().hash(_campus),
      const DeepCollectionEquality().hash(_videos),
      const DeepCollectionEquality().hash(_projectSessions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectCopyWith<_$_Project> get copyWith =>
      __$$_ProjectCopyWithImpl<_$_Project>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectToJson(
      this,
    );
  }
}

abstract class _Project implements Project {
  const factory _Project(
      {final int? id,
      final String? name,
      final String? slug,
      final dynamic parent,
      final List<dynamic>? children,
      final List<dynamic>? attachments,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final bool? exam,
      final int? gitId,
      final String? repository,
      final String? recommendation,
      final List<Cursus>? cursus,
      final List<Campus>? campus,
      final List<dynamic>? videos,
      final List<ProjectSession>? projectSessions}) = _$_Project;

  factory _Project.fromJson(Map<String, dynamic> json) = _$_Project.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get slug;
  @override
  dynamic get parent;
  @override
  List<dynamic>? get children;
  @override
  List<dynamic>? get attachments;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  bool? get exam;
  @override
  int? get gitId;
  @override
  String? get repository;
  @override
  String? get recommendation;
  @override
  List<Cursus>? get cursus;
  @override
  List<Campus>? get campus;
  @override
  List<dynamic>? get videos;
  @override
  List<ProjectSession>? get projectSessions;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectCopyWith<_$_Project> get copyWith =>
      throw _privateConstructorUsedError;
}

ProjectSession _$ProjectSessionFromJson(Map<String, dynamic> json) {
  return _ProjectSession.fromJson(json);
}

/// @nodoc
mixin _$ProjectSession {
  int? get id => throw _privateConstructorUsedError;
  bool? get solo => throw _privateConstructorUsedError;
  dynamic get beginAt => throw _privateConstructorUsedError;
  dynamic get endAt => throw _privateConstructorUsedError;
  String? get estimateTime => throw _privateConstructorUsedError;
  int? get difficulty => throw _privateConstructorUsedError;
  List<String>? get objectives => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  dynamic get durationDays => throw _privateConstructorUsedError;
  dynamic get terminatingAfter => throw _privateConstructorUsedError;
  int? get projectId => throw _privateConstructorUsedError;
  int? get campusId => throw _privateConstructorUsedError;
  int? get cursusId => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  dynamic get maxPeople => throw _privateConstructorUsedError;
  bool? get isSubscriptable => throw _privateConstructorUsedError;
  List<Scale>? get scales => throw _privateConstructorUsedError;
  List<Upload>? get uploads => throw _privateConstructorUsedError;
  String? get teamBehaviour => throw _privateConstructorUsedError;
  String? get commit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectSessionCopyWith<ProjectSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectSessionCopyWith<$Res> {
  factory $ProjectSessionCopyWith(
          ProjectSession value, $Res Function(ProjectSession) then) =
      _$ProjectSessionCopyWithImpl<$Res, ProjectSession>;
  @useResult
  $Res call(
      {int? id,
      bool? solo,
      dynamic beginAt,
      dynamic endAt,
      String? estimateTime,
      int? difficulty,
      List<String>? objectives,
      String? description,
      dynamic durationDays,
      dynamic terminatingAfter,
      int? projectId,
      int? campusId,
      int? cursusId,
      DateTime? createdAt,
      DateTime? updatedAt,
      dynamic maxPeople,
      bool? isSubscriptable,
      List<Scale>? scales,
      List<Upload>? uploads,
      String? teamBehaviour,
      String? commit});
}

/// @nodoc
class _$ProjectSessionCopyWithImpl<$Res, $Val extends ProjectSession>
    implements $ProjectSessionCopyWith<$Res> {
  _$ProjectSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? solo = freezed,
    Object? beginAt = null,
    Object? endAt = null,
    Object? estimateTime = freezed,
    Object? difficulty = freezed,
    Object? objectives = freezed,
    Object? description = freezed,
    Object? durationDays = null,
    Object? terminatingAfter = null,
    Object? projectId = freezed,
    Object? campusId = freezed,
    Object? cursusId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? maxPeople = null,
    Object? isSubscriptable = freezed,
    Object? scales = freezed,
    Object? uploads = freezed,
    Object? teamBehaviour = freezed,
    Object? commit = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      solo: freezed == solo
          ? _value.solo
          : solo // ignore: cast_nullable_to_non_nullable
              as bool?,
      beginAt: null == beginAt
          ? _value.beginAt
          : beginAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      endAt: null == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      estimateTime: freezed == estimateTime
          ? _value.estimateTime
          : estimateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      difficulty: freezed == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int?,
      objectives: freezed == objectives
          ? _value.objectives
          : objectives // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      durationDays: null == durationDays
          ? _value.durationDays
          : durationDays // ignore: cast_nullable_to_non_nullable
              as dynamic,
      terminatingAfter: null == terminatingAfter
          ? _value.terminatingAfter
          : terminatingAfter // ignore: cast_nullable_to_non_nullable
              as dynamic,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int?,
      campusId: freezed == campusId
          ? _value.campusId
          : campusId // ignore: cast_nullable_to_non_nullable
              as int?,
      cursusId: freezed == cursusId
          ? _value.cursusId
          : cursusId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      maxPeople: null == maxPeople
          ? _value.maxPeople
          : maxPeople // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isSubscriptable: freezed == isSubscriptable
          ? _value.isSubscriptable
          : isSubscriptable // ignore: cast_nullable_to_non_nullable
              as bool?,
      scales: freezed == scales
          ? _value.scales
          : scales // ignore: cast_nullable_to_non_nullable
              as List<Scale>?,
      uploads: freezed == uploads
          ? _value.uploads
          : uploads // ignore: cast_nullable_to_non_nullable
              as List<Upload>?,
      teamBehaviour: freezed == teamBehaviour
          ? _value.teamBehaviour
          : teamBehaviour // ignore: cast_nullable_to_non_nullable
              as String?,
      commit: freezed == commit
          ? _value.commit
          : commit // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectSessionCopyWith<$Res>
    implements $ProjectSessionCopyWith<$Res> {
  factory _$$_ProjectSessionCopyWith(
          _$_ProjectSession value, $Res Function(_$_ProjectSession) then) =
      __$$_ProjectSessionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      bool? solo,
      dynamic beginAt,
      dynamic endAt,
      String? estimateTime,
      int? difficulty,
      List<String>? objectives,
      String? description,
      dynamic durationDays,
      dynamic terminatingAfter,
      int? projectId,
      int? campusId,
      int? cursusId,
      DateTime? createdAt,
      DateTime? updatedAt,
      dynamic maxPeople,
      bool? isSubscriptable,
      List<Scale>? scales,
      List<Upload>? uploads,
      String? teamBehaviour,
      String? commit});
}

/// @nodoc
class __$$_ProjectSessionCopyWithImpl<$Res>
    extends _$ProjectSessionCopyWithImpl<$Res, _$_ProjectSession>
    implements _$$_ProjectSessionCopyWith<$Res> {
  __$$_ProjectSessionCopyWithImpl(
      _$_ProjectSession _value, $Res Function(_$_ProjectSession) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? solo = freezed,
    Object? beginAt = null,
    Object? endAt = null,
    Object? estimateTime = freezed,
    Object? difficulty = freezed,
    Object? objectives = freezed,
    Object? description = freezed,
    Object? durationDays = null,
    Object? terminatingAfter = null,
    Object? projectId = freezed,
    Object? campusId = freezed,
    Object? cursusId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? maxPeople = null,
    Object? isSubscriptable = freezed,
    Object? scales = freezed,
    Object? uploads = freezed,
    Object? teamBehaviour = freezed,
    Object? commit = freezed,
  }) {
    return _then(_$_ProjectSession(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      solo: freezed == solo
          ? _value.solo
          : solo // ignore: cast_nullable_to_non_nullable
              as bool?,
      beginAt: null == beginAt
          ? _value.beginAt
          : beginAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      endAt: null == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      estimateTime: freezed == estimateTime
          ? _value.estimateTime
          : estimateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      difficulty: freezed == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int?,
      objectives: freezed == objectives
          ? _value._objectives
          : objectives // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      durationDays: null == durationDays
          ? _value.durationDays
          : durationDays // ignore: cast_nullable_to_non_nullable
              as dynamic,
      terminatingAfter: null == terminatingAfter
          ? _value.terminatingAfter
          : terminatingAfter // ignore: cast_nullable_to_non_nullable
              as dynamic,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int?,
      campusId: freezed == campusId
          ? _value.campusId
          : campusId // ignore: cast_nullable_to_non_nullable
              as int?,
      cursusId: freezed == cursusId
          ? _value.cursusId
          : cursusId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      maxPeople: null == maxPeople
          ? _value.maxPeople
          : maxPeople // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isSubscriptable: freezed == isSubscriptable
          ? _value.isSubscriptable
          : isSubscriptable // ignore: cast_nullable_to_non_nullable
              as bool?,
      scales: freezed == scales
          ? _value._scales
          : scales // ignore: cast_nullable_to_non_nullable
              as List<Scale>?,
      uploads: freezed == uploads
          ? _value._uploads
          : uploads // ignore: cast_nullable_to_non_nullable
              as List<Upload>?,
      teamBehaviour: freezed == teamBehaviour
          ? _value.teamBehaviour
          : teamBehaviour // ignore: cast_nullable_to_non_nullable
              as String?,
      commit: freezed == commit
          ? _value.commit
          : commit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProjectSession implements _ProjectSession {
  const _$_ProjectSession(
      {this.id,
      this.solo,
      this.beginAt,
      this.endAt,
      this.estimateTime,
      this.difficulty,
      final List<String>? objectives,
      this.description,
      this.durationDays,
      this.terminatingAfter,
      this.projectId,
      this.campusId,
      this.cursusId,
      this.createdAt,
      this.updatedAt,
      this.maxPeople,
      this.isSubscriptable,
      final List<Scale>? scales,
      final List<Upload>? uploads,
      this.teamBehaviour,
      this.commit})
      : _objectives = objectives,
        _scales = scales,
        _uploads = uploads;

  factory _$_ProjectSession.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectSessionFromJson(json);

  @override
  final int? id;
  @override
  final bool? solo;
  @override
  final dynamic beginAt;
  @override
  final dynamic endAt;
  @override
  final String? estimateTime;
  @override
  final int? difficulty;
  final List<String>? _objectives;
  @override
  List<String>? get objectives {
    final value = _objectives;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? description;
  @override
  final dynamic durationDays;
  @override
  final dynamic terminatingAfter;
  @override
  final int? projectId;
  @override
  final int? campusId;
  @override
  final int? cursusId;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final dynamic maxPeople;
  @override
  final bool? isSubscriptable;
  final List<Scale>? _scales;
  @override
  List<Scale>? get scales {
    final value = _scales;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Upload>? _uploads;
  @override
  List<Upload>? get uploads {
    final value = _uploads;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? teamBehaviour;
  @override
  final String? commit;

  @override
  String toString() {
    return 'ProjectSession(id: $id, solo: $solo, beginAt: $beginAt, endAt: $endAt, estimateTime: $estimateTime, difficulty: $difficulty, objectives: $objectives, description: $description, durationDays: $durationDays, terminatingAfter: $terminatingAfter, projectId: $projectId, campusId: $campusId, cursusId: $cursusId, createdAt: $createdAt, updatedAt: $updatedAt, maxPeople: $maxPeople, isSubscriptable: $isSubscriptable, scales: $scales, uploads: $uploads, teamBehaviour: $teamBehaviour, commit: $commit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectSession &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.solo, solo) || other.solo == solo) &&
            const DeepCollectionEquality().equals(other.beginAt, beginAt) &&
            const DeepCollectionEquality().equals(other.endAt, endAt) &&
            (identical(other.estimateTime, estimateTime) ||
                other.estimateTime == estimateTime) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            const DeepCollectionEquality()
                .equals(other._objectives, _objectives) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other.durationDays, durationDays) &&
            const DeepCollectionEquality()
                .equals(other.terminatingAfter, terminatingAfter) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.campusId, campusId) ||
                other.campusId == campusId) &&
            (identical(other.cursusId, cursusId) ||
                other.cursusId == cursusId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other.maxPeople, maxPeople) &&
            (identical(other.isSubscriptable, isSubscriptable) ||
                other.isSubscriptable == isSubscriptable) &&
            const DeepCollectionEquality().equals(other._scales, _scales) &&
            const DeepCollectionEquality().equals(other._uploads, _uploads) &&
            (identical(other.teamBehaviour, teamBehaviour) ||
                other.teamBehaviour == teamBehaviour) &&
            (identical(other.commit, commit) || other.commit == commit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        solo,
        const DeepCollectionEquality().hash(beginAt),
        const DeepCollectionEquality().hash(endAt),
        estimateTime,
        difficulty,
        const DeepCollectionEquality().hash(_objectives),
        description,
        const DeepCollectionEquality().hash(durationDays),
        const DeepCollectionEquality().hash(terminatingAfter),
        projectId,
        campusId,
        cursusId,
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(maxPeople),
        isSubscriptable,
        const DeepCollectionEquality().hash(_scales),
        const DeepCollectionEquality().hash(_uploads),
        teamBehaviour,
        commit
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectSessionCopyWith<_$_ProjectSession> get copyWith =>
      __$$_ProjectSessionCopyWithImpl<_$_ProjectSession>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectSessionToJson(
      this,
    );
  }
}

abstract class _ProjectSession implements ProjectSession {
  const factory _ProjectSession(
      {final int? id,
      final bool? solo,
      final dynamic beginAt,
      final dynamic endAt,
      final String? estimateTime,
      final int? difficulty,
      final List<String>? objectives,
      final String? description,
      final dynamic durationDays,
      final dynamic terminatingAfter,
      final int? projectId,
      final int? campusId,
      final int? cursusId,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final dynamic maxPeople,
      final bool? isSubscriptable,
      final List<Scale>? scales,
      final List<Upload>? uploads,
      final String? teamBehaviour,
      final String? commit}) = _$_ProjectSession;

  factory _ProjectSession.fromJson(Map<String, dynamic> json) =
      _$_ProjectSession.fromJson;

  @override
  int? get id;
  @override
  bool? get solo;
  @override
  dynamic get beginAt;
  @override
  dynamic get endAt;
  @override
  String? get estimateTime;
  @override
  int? get difficulty;
  @override
  List<String>? get objectives;
  @override
  String? get description;
  @override
  dynamic get durationDays;
  @override
  dynamic get terminatingAfter;
  @override
  int? get projectId;
  @override
  int? get campusId;
  @override
  int? get cursusId;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  dynamic get maxPeople;
  @override
  bool? get isSubscriptable;
  @override
  List<Scale>? get scales;
  @override
  List<Upload>? get uploads;
  @override
  String? get teamBehaviour;
  @override
  String? get commit;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectSessionCopyWith<_$_ProjectSession> get copyWith =>
      throw _privateConstructorUsedError;
}

Scale _$ScaleFromJson(Map<String, dynamic> json) {
  return _Scale.fromJson(json);
}

/// @nodoc
mixin _$Scale {
  int? get id => throw _privateConstructorUsedError;
  int? get correctionNumber => throw _privateConstructorUsedError;
  bool? get isPrimary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScaleCopyWith<Scale> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScaleCopyWith<$Res> {
  factory $ScaleCopyWith(Scale value, $Res Function(Scale) then) =
      _$ScaleCopyWithImpl<$Res, Scale>;
  @useResult
  $Res call({int? id, int? correctionNumber, bool? isPrimary});
}

/// @nodoc
class _$ScaleCopyWithImpl<$Res, $Val extends Scale>
    implements $ScaleCopyWith<$Res> {
  _$ScaleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? correctionNumber = freezed,
    Object? isPrimary = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      correctionNumber: freezed == correctionNumber
          ? _value.correctionNumber
          : correctionNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      isPrimary: freezed == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScaleCopyWith<$Res> implements $ScaleCopyWith<$Res> {
  factory _$$_ScaleCopyWith(_$_Scale value, $Res Function(_$_Scale) then) =
      __$$_ScaleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, int? correctionNumber, bool? isPrimary});
}

/// @nodoc
class __$$_ScaleCopyWithImpl<$Res> extends _$ScaleCopyWithImpl<$Res, _$_Scale>
    implements _$$_ScaleCopyWith<$Res> {
  __$$_ScaleCopyWithImpl(_$_Scale _value, $Res Function(_$_Scale) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? correctionNumber = freezed,
    Object? isPrimary = freezed,
  }) {
    return _then(_$_Scale(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      correctionNumber: freezed == correctionNumber
          ? _value.correctionNumber
          : correctionNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      isPrimary: freezed == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Scale implements _Scale {
  const _$_Scale({this.id, this.correctionNumber, this.isPrimary});

  factory _$_Scale.fromJson(Map<String, dynamic> json) =>
      _$$_ScaleFromJson(json);

  @override
  final int? id;
  @override
  final int? correctionNumber;
  @override
  final bool? isPrimary;

  @override
  String toString() {
    return 'Scale(id: $id, correctionNumber: $correctionNumber, isPrimary: $isPrimary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Scale &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.correctionNumber, correctionNumber) ||
                other.correctionNumber == correctionNumber) &&
            (identical(other.isPrimary, isPrimary) ||
                other.isPrimary == isPrimary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, correctionNumber, isPrimary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScaleCopyWith<_$_Scale> get copyWith =>
      __$$_ScaleCopyWithImpl<_$_Scale>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScaleToJson(
      this,
    );
  }
}

abstract class _Scale implements Scale {
  const factory _Scale(
      {final int? id,
      final int? correctionNumber,
      final bool? isPrimary}) = _$_Scale;

  factory _Scale.fromJson(Map<String, dynamic> json) = _$_Scale.fromJson;

  @override
  int? get id;
  @override
  int? get correctionNumber;
  @override
  bool? get isPrimary;
  @override
  @JsonKey(ignore: true)
  _$$_ScaleCopyWith<_$_Scale> get copyWith =>
      throw _privateConstructorUsedError;
}

Upload _$UploadFromJson(Map<String, dynamic> json) {
  return _Upload.fromJson(json);
}

/// @nodoc
mixin _$Upload {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadCopyWith<Upload> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadCopyWith<$Res> {
  factory $UploadCopyWith(Upload value, $Res Function(Upload) then) =
      _$UploadCopyWithImpl<$Res, Upload>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$UploadCopyWithImpl<$Res, $Val extends Upload>
    implements $UploadCopyWith<$Res> {
  _$UploadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UploadCopyWith<$Res> implements $UploadCopyWith<$Res> {
  factory _$$_UploadCopyWith(_$_Upload value, $Res Function(_$_Upload) then) =
      __$$_UploadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$_UploadCopyWithImpl<$Res>
    extends _$UploadCopyWithImpl<$Res, _$_Upload>
    implements _$$_UploadCopyWith<$Res> {
  __$$_UploadCopyWithImpl(_$_Upload _value, $Res Function(_$_Upload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_Upload(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Upload implements _Upload {
  const _$_Upload({this.id, this.name});

  factory _$_Upload.fromJson(Map<String, dynamic> json) =>
      _$$_UploadFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Upload(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Upload &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UploadCopyWith<_$_Upload> get copyWith =>
      __$$_UploadCopyWithImpl<_$_Upload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UploadToJson(
      this,
    );
  }
}

abstract class _Upload implements Upload {
  const factory _Upload({final int? id, final String? name}) = _$_Upload;

  factory _Upload.fromJson(Map<String, dynamic> json) = _$_Upload.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_UploadCopyWith<_$_Upload> get copyWith =>
      throw _privateConstructorUsedError;
}
