// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int? get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get login => throw _privateConstructorUsedError;
  String? get campusName => throw _privateConstructorUsedError;
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
  BlackHoleData? get blackHole => throw _privateConstructorUsedError;

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
      String? campusName,
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
      @JsonKey(name: "campus_users") List<CampusUser>? campusUsers,
      BlackHoleData? blackHole});

  $ImageCopyWith<$Res>? get image;
  $BlackHoleDataCopyWith<$Res>? get blackHole;
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
    Object? campusName = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? usualFullName = freezed,
    Object? usualFirstName = freezed,
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
    Object? alumnizedAt = freezed,
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
    Object? blackHole = freezed,
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
      campusName: freezed == campusName
          ? _value.campusName
          : campusName // ignore: cast_nullable_to_non_nullable
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
      usualFirstName: freezed == usualFirstName
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
      alumnizedAt: freezed == alumnizedAt
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
      blackHole: freezed == blackHole
          ? _value.blackHole
          : blackHole // ignore: cast_nullable_to_non_nullable
              as BlackHoleData?,
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

  @override
  @pragma('vm:prefer-inline')
  $BlackHoleDataCopyWith<$Res>? get blackHole {
    if (_value.blackHole == null) {
      return null;
    }

    return $BlackHoleDataCopyWith<$Res>(_value.blackHole!, (value) {
      return _then(_value.copyWith(blackHole: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? email,
      String? login,
      String? campusName,
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
      @JsonKey(name: "campus_users") List<CampusUser>? campusUsers,
      BlackHoleData? blackHole});

  @override
  $ImageCopyWith<$Res>? get image;
  @override
  $BlackHoleDataCopyWith<$Res>? get blackHole;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? login = freezed,
    Object? campusName = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? usualFullName = freezed,
    Object? usualFirstName = freezed,
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
    Object? alumnizedAt = freezed,
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
    Object? blackHole = freezed,
  }) {
    return _then(_$UserImpl(
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
      campusName: freezed == campusName
          ? _value.campusName
          : campusName // ignore: cast_nullable_to_non_nullable
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
      usualFirstName: freezed == usualFirstName
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
      alumnizedAt: freezed == alumnizedAt
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
      blackHole: freezed == blackHole
          ? _value.blackHole
          : blackHole // ignore: cast_nullable_to_non_nullable
              as BlackHoleData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {this.id,
      this.email,
      this.login,
      this.campusName,
      @JsonKey(name: "first_name") this.firstName,
      @JsonKey(name: "last_name") this.lastName,
      @JsonKey(name: "usual_full_name") this.usualFullName,
      @JsonKey(name: "usual_first_name") this.usualFirstName,
      this.url,
      this.phone,
      @JsonKey(name: "displayname") this.displayname,
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
      this.active,
      final List<dynamic>? groups,
      @JsonKey(name: "cursus_users") final List<CursusUser>? cursusUsers,
      @JsonKey(name: "projects_users") final List<ProjectsUser>? projectsUsers,
      @JsonKey(name: "languages_users")
      final List<LanguagesUser>? languagesUsers,
      final List<Achievement>? achievements,
      final List<dynamic>? titles,
      @JsonKey(name: "titles_users") final List<dynamic>? titlesUsers,
      final List<dynamic>? partnerships,
      final List<dynamic>? patroned,
      final List<dynamic>? patroning,
      @JsonKey(name: "expertises_users")
      final List<ExpertisesUser>? expertisesUsers,
      final List<dynamic>? roles,
      final List<Campus>? campus,
      @JsonKey(name: "campus_users") final List<CampusUser>? campusUsers,
      this.blackHole})
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

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final int? id;
  @override
  final String? email;
  @override
  final String? login;
  @override
  final String? campusName;
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
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CursusUser>? _cursusUsers;
  @override
  @JsonKey(name: "cursus_users")
  List<CursusUser>? get cursusUsers {
    final value = _cursusUsers;
    if (value == null) return null;
    if (_cursusUsers is EqualUnmodifiableListView) return _cursusUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProjectsUser>? _projectsUsers;
  @override
  @JsonKey(name: "projects_users")
  List<ProjectsUser>? get projectsUsers {
    final value = _projectsUsers;
    if (value == null) return null;
    if (_projectsUsers is EqualUnmodifiableListView) return _projectsUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LanguagesUser>? _languagesUsers;
  @override
  @JsonKey(name: "languages_users")
  List<LanguagesUser>? get languagesUsers {
    final value = _languagesUsers;
    if (value == null) return null;
    if (_languagesUsers is EqualUnmodifiableListView) return _languagesUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Achievement>? _achievements;
  @override
  List<Achievement>? get achievements {
    final value = _achievements;
    if (value == null) return null;
    if (_achievements is EqualUnmodifiableListView) return _achievements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _titles;
  @override
  List<dynamic>? get titles {
    final value = _titles;
    if (value == null) return null;
    if (_titles is EqualUnmodifiableListView) return _titles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _titlesUsers;
  @override
  @JsonKey(name: "titles_users")
  List<dynamic>? get titlesUsers {
    final value = _titlesUsers;
    if (value == null) return null;
    if (_titlesUsers is EqualUnmodifiableListView) return _titlesUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _partnerships;
  @override
  List<dynamic>? get partnerships {
    final value = _partnerships;
    if (value == null) return null;
    if (_partnerships is EqualUnmodifiableListView) return _partnerships;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _patroned;
  @override
  List<dynamic>? get patroned {
    final value = _patroned;
    if (value == null) return null;
    if (_patroned is EqualUnmodifiableListView) return _patroned;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _patroning;
  @override
  List<dynamic>? get patroning {
    final value = _patroning;
    if (value == null) return null;
    if (_patroning is EqualUnmodifiableListView) return _patroning;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ExpertisesUser>? _expertisesUsers;
  @override
  @JsonKey(name: "expertises_users")
  List<ExpertisesUser>? get expertisesUsers {
    final value = _expertisesUsers;
    if (value == null) return null;
    if (_expertisesUsers is EqualUnmodifiableListView) return _expertisesUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _roles;
  @override
  List<dynamic>? get roles {
    final value = _roles;
    if (value == null) return null;
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Campus>? _campus;
  @override
  List<Campus>? get campus {
    final value = _campus;
    if (value == null) return null;
    if (_campus is EqualUnmodifiableListView) return _campus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CampusUser>? _campusUsers;
  @override
  @JsonKey(name: "campus_users")
  List<CampusUser>? get campusUsers {
    final value = _campusUsers;
    if (value == null) return null;
    if (_campusUsers is EqualUnmodifiableListView) return _campusUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final BlackHoleData? blackHole;

  @override
  String toString() {
    return 'User(id: $id, email: $email, login: $login, campusName: $campusName, firstName: $firstName, lastName: $lastName, usualFullName: $usualFullName, usualFirstName: $usualFirstName, url: $url, phone: $phone, displayname: $displayname, kind: $kind, imageUrl: $imageUrl, image: $image, newImageUrl: $newImageUrl, staff: $staff, correctionPoint: $correctionPoint, poolMonth: $poolMonth, poolYear: $poolYear, location: $location, wallet: $wallet, anonymizeDate: $anonymizeDate, dataErasureDate: $dataErasureDate, createdAt: $createdAt, updatedAt: $updatedAt, alumnizedAt: $alumnizedAt, alumni: $alumni, active: $active, groups: $groups, cursusUsers: $cursusUsers, projectsUsers: $projectsUsers, languagesUsers: $languagesUsers, achievements: $achievements, titles: $titles, titlesUsers: $titlesUsers, partnerships: $partnerships, patroned: $patroned, patroning: $patroning, expertisesUsers: $expertisesUsers, roles: $roles, campus: $campus, campusUsers: $campusUsers, blackHole: $blackHole)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.campusName, campusName) ||
                other.campusName == campusName) &&
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
                .equals(other._campusUsers, _campusUsers) &&
            (identical(other.blackHole, blackHole) ||
                other.blackHole == blackHole));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        email,
        login,
        campusName,
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
        const DeepCollectionEquality().hash(_campusUsers),
        blackHole
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {final int? id,
      final String? email,
      final String? login,
      final String? campusName,
      @JsonKey(name: "first_name") final String? firstName,
      @JsonKey(name: "last_name") final String? lastName,
      @JsonKey(name: "usual_full_name") final String? usualFullName,
      @JsonKey(name: "usual_first_name") final dynamic usualFirstName,
      final String? url,
      final String? phone,
      @JsonKey(name: "displayname") final String? displayname,
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
      final bool? active,
      final List<dynamic>? groups,
      @JsonKey(name: "cursus_users") final List<CursusUser>? cursusUsers,
      @JsonKey(name: "projects_users") final List<ProjectsUser>? projectsUsers,
      @JsonKey(name: "languages_users")
      final List<LanguagesUser>? languagesUsers,
      final List<Achievement>? achievements,
      final List<dynamic>? titles,
      @JsonKey(name: "titles_users") final List<dynamic>? titlesUsers,
      final List<dynamic>? partnerships,
      final List<dynamic>? patroned,
      final List<dynamic>? patroning,
      @JsonKey(name: "expertises_users")
      final List<ExpertisesUser>? expertisesUsers,
      final List<dynamic>? roles,
      final List<Campus>? campus,
      @JsonKey(name: "campus_users") final List<CampusUser>? campusUsers,
      final BlackHoleData? blackHole}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int? get id;
  @override
  String? get email;
  @override
  String? get login;
  @override
  String? get campusName;
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
  BlackHoleData? get blackHole;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
abstract class _$$AchievementImplCopyWith<$Res>
    implements $AchievementCopyWith<$Res> {
  factory _$$AchievementImplCopyWith(
          _$AchievementImpl value, $Res Function(_$AchievementImpl) then) =
      __$$AchievementImplCopyWithImpl<$Res>;
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
class __$$AchievementImplCopyWithImpl<$Res>
    extends _$AchievementCopyWithImpl<$Res, _$AchievementImpl>
    implements _$$AchievementImplCopyWith<$Res> {
  __$$AchievementImplCopyWithImpl(
      _$AchievementImpl _value, $Res Function(_$AchievementImpl) _then)
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
    return _then(_$AchievementImpl(
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
class _$AchievementImpl implements _Achievement {
  const _$AchievementImpl(
      {this.id,
      this.name,
      this.description,
      this.tier,
      this.kind,
      this.visible,
      this.image,
      @JsonKey(name: "nbr_of_success") this.nbrOfSuccess,
      @JsonKey(name: "users_url") this.usersUrl});

  factory _$AchievementImpl.fromJson(Map<String, dynamic> json) =>
      _$$AchievementImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AchievementImpl &&
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
  _$$AchievementImplCopyWith<_$AchievementImpl> get copyWith =>
      __$$AchievementImplCopyWithImpl<_$AchievementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AchievementImplToJson(
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
      @JsonKey(name: "users_url") final String? usersUrl}) = _$AchievementImpl;

  factory _Achievement.fromJson(Map<String, dynamic> json) =
      _$AchievementImpl.fromJson;

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
  _$$AchievementImplCopyWith<_$AchievementImpl> get copyWith =>
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
abstract class _$$CampusImplCopyWith<$Res> implements $CampusCopyWith<$Res> {
  factory _$$CampusImplCopyWith(
          _$CampusImpl value, $Res Function(_$CampusImpl) then) =
      __$$CampusImplCopyWithImpl<$Res>;
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
class __$$CampusImplCopyWithImpl<$Res>
    extends _$CampusCopyWithImpl<$Res, _$CampusImpl>
    implements _$$CampusImplCopyWith<$Res> {
  __$$CampusImplCopyWithImpl(
      _$CampusImpl _value, $Res Function(_$CampusImpl) _then)
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
    return _then(_$CampusImpl(
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
class _$CampusImpl implements _Campus {
  const _$CampusImpl(
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

  factory _$CampusImpl.fromJson(Map<String, dynamic> json) =>
      _$$CampusImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampusImpl &&
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
  _$$CampusImplCopyWith<_$CampusImpl> get copyWith =>
      __$$CampusImplCopyWithImpl<_$CampusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CampusImplToJson(
      this,
    );
  }
}

abstract class _Campus implements Campus {
  const factory _Campus(
      {final int? id,
      final String? name,
      @JsonKey(name: "time_zone") final String? timeZone,
      final Language? language,
      @JsonKey(name: "users_count") final int? usersCount,
      @JsonKey(name: "vogsphere_id") final int? vogsphereId,
      final String? country,
      final String? address,
      final String? zip,
      final String? city,
      final String? website,
      final String? facebook,
      final String? twitter,
      final bool? active,
      final bool? public,
      @JsonKey(name: "email_extension") final String? emailExtension,
      @JsonKey(name: "default_hidden_phone")
      final bool? defaultHiddenPhone}) = _$CampusImpl;

  factory _Campus.fromJson(Map<String, dynamic> json) = _$CampusImpl.fromJson;

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
  _$$CampusImplCopyWith<_$CampusImpl> get copyWith =>
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
abstract class _$$LanguageImplCopyWith<$Res>
    implements $LanguageCopyWith<$Res> {
  factory _$$LanguageImplCopyWith(
          _$LanguageImpl value, $Res Function(_$LanguageImpl) then) =
      __$$LanguageImplCopyWithImpl<$Res>;
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
class __$$LanguageImplCopyWithImpl<$Res>
    extends _$LanguageCopyWithImpl<$Res, _$LanguageImpl>
    implements _$$LanguageImplCopyWith<$Res> {
  __$$LanguageImplCopyWithImpl(
      _$LanguageImpl _value, $Res Function(_$LanguageImpl) _then)
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
    return _then(_$LanguageImpl(
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
class _$LanguageImpl implements _Language {
  const _$LanguageImpl(
      {this.id,
      this.name,
      this.identifier,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$LanguageImpl.fromJson(Map<String, dynamic> json) =>
      _$$LanguageImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageImpl &&
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
  _$$LanguageImplCopyWith<_$LanguageImpl> get copyWith =>
      __$$LanguageImplCopyWithImpl<_$LanguageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LanguageImplToJson(
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
      @JsonKey(name: "updated_at") final DateTime? updatedAt}) = _$LanguageImpl;

  factory _Language.fromJson(Map<String, dynamic> json) =
      _$LanguageImpl.fromJson;

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
  _$$LanguageImplCopyWith<_$LanguageImpl> get copyWith =>
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
abstract class _$$CampusUserImplCopyWith<$Res>
    implements $CampusUserCopyWith<$Res> {
  factory _$$CampusUserImplCopyWith(
          _$CampusUserImpl value, $Res Function(_$CampusUserImpl) then) =
      __$$CampusUserImplCopyWithImpl<$Res>;
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
class __$$CampusUserImplCopyWithImpl<$Res>
    extends _$CampusUserCopyWithImpl<$Res, _$CampusUserImpl>
    implements _$$CampusUserImplCopyWith<$Res> {
  __$$CampusUserImplCopyWithImpl(
      _$CampusUserImpl _value, $Res Function(_$CampusUserImpl) _then)
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
    return _then(_$CampusUserImpl(
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
class _$CampusUserImpl implements _CampusUser {
  const _$CampusUserImpl(
      {this.id,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "campus_id") this.campusId,
      @JsonKey(name: "is_primary") this.isPrimary,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$CampusUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$CampusUserImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampusUserImpl &&
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
  _$$CampusUserImplCopyWith<_$CampusUserImpl> get copyWith =>
      __$$CampusUserImplCopyWithImpl<_$CampusUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CampusUserImplToJson(
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
          @JsonKey(name: "updated_at") final DateTime? updatedAt}) =
      _$CampusUserImpl;

  factory _CampusUser.fromJson(Map<String, dynamic> json) =
      _$CampusUserImpl.fromJson;

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
  _$$CampusUserImplCopyWith<_$CampusUserImpl> get copyWith =>
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
abstract class _$$CursusUserImplCopyWith<$Res>
    implements $CursusUserCopyWith<$Res> {
  factory _$$CursusUserImplCopyWith(
          _$CursusUserImpl value, $Res Function(_$CursusUserImpl) then) =
      __$$CursusUserImplCopyWithImpl<$Res>;
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
class __$$CursusUserImplCopyWithImpl<$Res>
    extends _$CursusUserCopyWithImpl<$Res, _$CursusUserImpl>
    implements _$$CursusUserImplCopyWith<$Res> {
  __$$CursusUserImplCopyWithImpl(
      _$CursusUserImpl _value, $Res Function(_$CursusUserImpl) _then)
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
    return _then(_$CursusUserImpl(
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
class _$CursusUserImpl implements _CursusUser {
  const _$CursusUserImpl(
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

  factory _$CursusUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$CursusUserImplFromJson(json);

  @override
  final String? grade;
  @override
  final double? level;
  final List<Skill>? _skills;
  @override
  List<Skill>? get skills {
    final value = _skills;
    if (value == null) return null;
    if (_skills is EqualUnmodifiableListView) return _skills;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CursusUserImpl &&
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
  _$$CursusUserImplCopyWith<_$CursusUserImpl> get copyWith =>
      __$$CursusUserImplCopyWithImpl<_$CursusUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CursusUserImplToJson(
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
      final Cursus? cursus}) = _$CursusUserImpl;

  factory _CursusUser.fromJson(Map<String, dynamic> json) =
      _$CursusUserImpl.fromJson;

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
  _$$CursusUserImplCopyWith<_$CursusUserImpl> get copyWith =>
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
abstract class _$$CursusImplCopyWith<$Res> implements $CursusCopyWith<$Res> {
  factory _$$CursusImplCopyWith(
          _$CursusImpl value, $Res Function(_$CursusImpl) then) =
      __$$CursusImplCopyWithImpl<$Res>;
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
class __$$CursusImplCopyWithImpl<$Res>
    extends _$CursusCopyWithImpl<$Res, _$CursusImpl>
    implements _$$CursusImplCopyWith<$Res> {
  __$$CursusImplCopyWithImpl(
      _$CursusImpl _value, $Res Function(_$CursusImpl) _then)
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
    return _then(_$CursusImpl(
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
class _$CursusImpl implements _Cursus {
  const _$CursusImpl(
      {this.id,
      @JsonKey(name: "created_at") this.createdAt,
      this.name,
      this.slug,
      this.kind});

  factory _$CursusImpl.fromJson(Map<String, dynamic> json) =>
      _$$CursusImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CursusImpl &&
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
  _$$CursusImplCopyWith<_$CursusImpl> get copyWith =>
      __$$CursusImplCopyWithImpl<_$CursusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CursusImplToJson(
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
      final String? kind}) = _$CursusImpl;

  factory _Cursus.fromJson(Map<String, dynamic> json) = _$CursusImpl.fromJson;

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
  _$$CursusImplCopyWith<_$CursusImpl> get copyWith =>
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
abstract class _$$SkillImplCopyWith<$Res> implements $SkillCopyWith<$Res> {
  factory _$$SkillImplCopyWith(
          _$SkillImpl value, $Res Function(_$SkillImpl) then) =
      __$$SkillImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, double? level});
}

/// @nodoc
class __$$SkillImplCopyWithImpl<$Res>
    extends _$SkillCopyWithImpl<$Res, _$SkillImpl>
    implements _$$SkillImplCopyWith<$Res> {
  __$$SkillImplCopyWithImpl(
      _$SkillImpl _value, $Res Function(_$SkillImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? level = freezed,
  }) {
    return _then(_$SkillImpl(
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
class _$SkillImpl implements _Skill {
  const _$SkillImpl({this.id, this.name, this.level});

  factory _$SkillImpl.fromJson(Map<String, dynamic> json) =>
      _$$SkillImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SkillImpl &&
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
  _$$SkillImplCopyWith<_$SkillImpl> get copyWith =>
      __$$SkillImplCopyWithImpl<_$SkillImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SkillImplToJson(
      this,
    );
  }
}

abstract class _Skill implements Skill {
  const factory _Skill(
      {final int? id, final String? name, final double? level}) = _$SkillImpl;

  factory _Skill.fromJson(Map<String, dynamic> json) = _$SkillImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  double? get level;
  @override
  @JsonKey(ignore: true)
  _$$SkillImplCopyWith<_$SkillImpl> get copyWith =>
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
    Object? usualFirstName = freezed,
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
    Object? alumnizedAt = freezed,
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
      usualFirstName: freezed == usualFirstName
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
      alumnizedAt: freezed == alumnizedAt
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
abstract class _$$UserClassImplCopyWith<$Res>
    implements $UserClassCopyWith<$Res> {
  factory _$$UserClassImplCopyWith(
          _$UserClassImpl value, $Res Function(_$UserClassImpl) then) =
      __$$UserClassImplCopyWithImpl<$Res>;
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
class __$$UserClassImplCopyWithImpl<$Res>
    extends _$UserClassCopyWithImpl<$Res, _$UserClassImpl>
    implements _$$UserClassImplCopyWith<$Res> {
  __$$UserClassImplCopyWithImpl(
      _$UserClassImpl _value, $Res Function(_$UserClassImpl) _then)
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
    Object? usualFirstName = freezed,
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
    Object? alumnizedAt = freezed,
    Object? alumni = freezed,
    Object? active = freezed,
  }) {
    return _then(_$UserClassImpl(
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
      usualFirstName: freezed == usualFirstName
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
      alumnizedAt: freezed == alumnizedAt
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
class _$UserClassImpl implements _UserClass {
  const _$UserClassImpl(
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

  factory _$UserClassImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserClassImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserClassImpl &&
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
  _$$UserClassImplCopyWith<_$UserClassImpl> get copyWith =>
      __$$UserClassImplCopyWithImpl<_$UserClassImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserClassImplToJson(
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
      final bool? active}) = _$UserClassImpl;

  factory _UserClass.fromJson(Map<String, dynamic> json) =
      _$UserClassImpl.fromJson;

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
  _$$UserClassImplCopyWith<_$UserClassImpl> get copyWith =>
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
abstract class _$$ImageImplCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$ImageImplCopyWith(
          _$ImageImpl value, $Res Function(_$ImageImpl) then) =
      __$$ImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? link, Versions? versions});

  @override
  $VersionsCopyWith<$Res>? get versions;
}

/// @nodoc
class __$$ImageImplCopyWithImpl<$Res>
    extends _$ImageCopyWithImpl<$Res, _$ImageImpl>
    implements _$$ImageImplCopyWith<$Res> {
  __$$ImageImplCopyWithImpl(
      _$ImageImpl _value, $Res Function(_$ImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = freezed,
    Object? versions = freezed,
  }) {
    return _then(_$ImageImpl(
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
class _$ImageImpl implements _Image {
  const _$ImageImpl({this.link, this.versions});

  factory _$ImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageImplFromJson(json);

  @override
  final String? link;
  @override
  final Versions? versions;

  @override
  String toString() {
    return 'Image(link: $link, versions: $versions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageImpl &&
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
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      __$$ImageImplCopyWithImpl<_$ImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageImplToJson(
      this,
    );
  }
}

abstract class _Image implements Image {
  const factory _Image({final String? link, final Versions? versions}) =
      _$ImageImpl;

  factory _Image.fromJson(Map<String, dynamic> json) = _$ImageImpl.fromJson;

  @override
  String? get link;
  @override
  Versions? get versions;
  @override
  @JsonKey(ignore: true)
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
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
abstract class _$$VersionsImplCopyWith<$Res>
    implements $VersionsCopyWith<$Res> {
  factory _$$VersionsImplCopyWith(
          _$VersionsImpl value, $Res Function(_$VersionsImpl) then) =
      __$$VersionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? large, String? medium, String? small, String? micro});
}

/// @nodoc
class __$$VersionsImplCopyWithImpl<$Res>
    extends _$VersionsCopyWithImpl<$Res, _$VersionsImpl>
    implements _$$VersionsImplCopyWith<$Res> {
  __$$VersionsImplCopyWithImpl(
      _$VersionsImpl _value, $Res Function(_$VersionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? large = freezed,
    Object? medium = freezed,
    Object? small = freezed,
    Object? micro = freezed,
  }) {
    return _then(_$VersionsImpl(
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
class _$VersionsImpl implements _Versions {
  const _$VersionsImpl({this.large, this.medium, this.small, this.micro});

  factory _$VersionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$VersionsImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VersionsImpl &&
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
  _$$VersionsImplCopyWith<_$VersionsImpl> get copyWith =>
      __$$VersionsImplCopyWithImpl<_$VersionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VersionsImplToJson(
      this,
    );
  }
}

abstract class _Versions implements Versions {
  const factory _Versions(
      {final String? large,
      final String? medium,
      final String? small,
      final String? micro}) = _$VersionsImpl;

  factory _Versions.fromJson(Map<String, dynamic> json) =
      _$VersionsImpl.fromJson;

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
  _$$VersionsImplCopyWith<_$VersionsImpl> get copyWith =>
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
abstract class _$$ExpertisesUserImplCopyWith<$Res>
    implements $ExpertisesUserCopyWith<$Res> {
  factory _$$ExpertisesUserImplCopyWith(_$ExpertisesUserImpl value,
          $Res Function(_$ExpertisesUserImpl) then) =
      __$$ExpertisesUserImplCopyWithImpl<$Res>;
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
class __$$ExpertisesUserImplCopyWithImpl<$Res>
    extends _$ExpertisesUserCopyWithImpl<$Res, _$ExpertisesUserImpl>
    implements _$$ExpertisesUserImplCopyWith<$Res> {
  __$$ExpertisesUserImplCopyWithImpl(
      _$ExpertisesUserImpl _value, $Res Function(_$ExpertisesUserImpl) _then)
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
    return _then(_$ExpertisesUserImpl(
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
class _$ExpertisesUserImpl implements _ExpertisesUser {
  const _$ExpertisesUserImpl(
      {this.id,
      @JsonKey(name: "expertise_id") this.expertiseId,
      this.interested,
      this.value,
      @JsonKey(name: "contact_me") this.contactMe,
      @JsonKey(name: "created_at") this.createdAt,
      this.userId});

  factory _$ExpertisesUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpertisesUserImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpertisesUserImpl &&
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
  _$$ExpertisesUserImplCopyWith<_$ExpertisesUserImpl> get copyWith =>
      __$$ExpertisesUserImplCopyWithImpl<_$ExpertisesUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpertisesUserImplToJson(
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
      final int? userId}) = _$ExpertisesUserImpl;

  factory _ExpertisesUser.fromJson(Map<String, dynamic> json) =
      _$ExpertisesUserImpl.fromJson;

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
  _$$ExpertisesUserImplCopyWith<_$ExpertisesUserImpl> get copyWith =>
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
abstract class _$$LanguagesUserImplCopyWith<$Res>
    implements $LanguagesUserCopyWith<$Res> {
  factory _$$LanguagesUserImplCopyWith(
          _$LanguagesUserImpl value, $Res Function(_$LanguagesUserImpl) then) =
      __$$LanguagesUserImplCopyWithImpl<$Res>;
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
class __$$LanguagesUserImplCopyWithImpl<$Res>
    extends _$LanguagesUserCopyWithImpl<$Res, _$LanguagesUserImpl>
    implements _$$LanguagesUserImplCopyWith<$Res> {
  __$$LanguagesUserImplCopyWithImpl(
      _$LanguagesUserImpl _value, $Res Function(_$LanguagesUserImpl) _then)
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
    return _then(_$LanguagesUserImpl(
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
class _$LanguagesUserImpl implements _LanguagesUser {
  const _$LanguagesUserImpl(
      {this.id,
      @JsonKey(name: "language_id") this.languageId,
      @JsonKey(name: "user_id") this.userId,
      this.position,
      @JsonKey(name: "created_at") this.createdAt});

  factory _$LanguagesUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$LanguagesUserImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguagesUserImpl &&
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
  _$$LanguagesUserImplCopyWith<_$LanguagesUserImpl> get copyWith =>
      __$$LanguagesUserImplCopyWithImpl<_$LanguagesUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LanguagesUserImplToJson(
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
      _$LanguagesUserImpl;

  factory _LanguagesUser.fromJson(Map<String, dynamic> json) =
      _$LanguagesUserImpl.fromJson;

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
  _$$LanguagesUserImplCopyWith<_$LanguagesUserImpl> get copyWith =>
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
abstract class _$$ProjectsUserImplCopyWith<$Res>
    implements $ProjectsUserCopyWith<$Res> {
  factory _$$ProjectsUserImplCopyWith(
          _$ProjectsUserImpl value, $Res Function(_$ProjectsUserImpl) then) =
      __$$ProjectsUserImplCopyWithImpl<$Res>;
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
class __$$ProjectsUserImplCopyWithImpl<$Res>
    extends _$ProjectsUserCopyWithImpl<$Res, _$ProjectsUserImpl>
    implements _$$ProjectsUserImplCopyWith<$Res> {
  __$$ProjectsUserImplCopyWithImpl(
      _$ProjectsUserImpl _value, $Res Function(_$ProjectsUserImpl) _then)
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
    return _then(_$ProjectsUserImpl(
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
class _$ProjectsUserImpl implements _ProjectsUser {
  const _$ProjectsUserImpl(
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

  factory _$ProjectsUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectsUserImplFromJson(json);

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
    if (_cursusIds is EqualUnmodifiableListView) return _cursusIds;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectsUserImpl &&
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
  _$$ProjectsUserImplCopyWith<_$ProjectsUserImpl> get copyWith =>
      __$$ProjectsUserImplCopyWithImpl<_$ProjectsUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectsUserImplToJson(
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
      _$ProjectsUserImpl;

  factory _ProjectsUser.fromJson(Map<String, dynamic> json) =
      _$ProjectsUserImpl.fromJson;

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
  _$$ProjectsUserImplCopyWith<_$ProjectsUserImpl> get copyWith =>
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
  @JsonKey(name: "parent_id")
  dynamic get parentId => throw _privateConstructorUsedError;

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
      @JsonKey(name: "parent_id") dynamic parentId});
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
    Object? parentId = freezed,
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
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectImplCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$$ProjectImplCopyWith(
          _$ProjectImpl value, $Res Function(_$ProjectImpl) then) =
      __$$ProjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? slug,
      @JsonKey(name: "parent_id") dynamic parentId});
}

/// @nodoc
class __$$ProjectImplCopyWithImpl<$Res>
    extends _$ProjectCopyWithImpl<$Res, _$ProjectImpl>
    implements _$$ProjectImplCopyWith<$Res> {
  __$$ProjectImplCopyWithImpl(
      _$ProjectImpl _value, $Res Function(_$ProjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? parentId = freezed,
  }) {
    return _then(_$ProjectImpl(
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
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectImpl implements _Project {
  const _$ProjectImpl(
      {this.id,
      this.name,
      this.slug,
      @JsonKey(name: "parent_id") this.parentId});

  factory _$ProjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? slug;
  @override
  @JsonKey(name: "parent_id")
  final dynamic parentId;

  @override
  String toString() {
    return 'Project(id: $id, name: $name, slug: $slug, parentId: $parentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            const DeepCollectionEquality().equals(other.parentId, parentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, slug,
      const DeepCollectionEquality().hash(parentId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      __$$ProjectImplCopyWithImpl<_$ProjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectImplToJson(
      this,
    );
  }
}

abstract class _Project implements Project {
  const factory _Project(
      {final int? id,
      final String? name,
      final String? slug,
      @JsonKey(name: "parent_id") final dynamic parentId}) = _$ProjectImpl;

  factory _Project.fromJson(Map<String, dynamic> json) = _$ProjectImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get slug;
  @override
  @JsonKey(name: "parent_id")
  dynamic get parentId;
  @override
  @JsonKey(ignore: true)
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
