// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'scale_team.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScaleTeam _$ScaleTeamFromJson(Map<String, dynamic> json) {
  return _Scale.fromJson(json);
}

/// @nodoc
mixin _$ScaleTeam {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'scale_id')
  int? get scaleId => throw _privateConstructorUsedError;
  dynamic get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  dynamic get feedback => throw _privateConstructorUsedError;
  @JsonKey(name: 'final_mark')
  dynamic get finalMark => throw _privateConstructorUsedError;
  Flag? get flag => throw _privateConstructorUsedError;
  @JsonKey(name: 'begin_at')
  DateTime? get beginAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'correcteds')
  List<Corrector>? get correcteds => throw _privateConstructorUsedError;
  Corrector? get corrector => throw _privateConstructorUsedError;
  Truant? get truant => throw _privateConstructorUsedError;
  @JsonKey(name: 'filled_at')
  dynamic get filledAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'questions_with_answers')
  List<dynamic>? get questionsWithAnswers => throw _privateConstructorUsedError;
  ScaleClass? get scale => throw _privateConstructorUsedError;
  Team? get team => throw _privateConstructorUsedError;
  List<Feedback>? get feedbacks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScaleTeamCopyWith<ScaleTeam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScaleTeamCopyWith<$Res> {
  factory $ScaleTeamCopyWith(ScaleTeam value, $Res Function(ScaleTeam) then) =
      _$ScaleTeamCopyWithImpl<$Res, ScaleTeam>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'scale_id')
          int? scaleId,
      dynamic comment,
      @JsonKey(name: 'created_at')
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
          DateTime? updatedAt,
      dynamic feedback,
      @JsonKey(name: 'final_mark')
          dynamic finalMark,
      Flag? flag,
      @JsonKey(name: 'begin_at')
          DateTime? beginAt,
      @JsonKey(name: 'correcteds')
          List<Corrector>? correcteds,
      Corrector? corrector,
      Truant? truant,
      @JsonKey(name: 'filled_at')
          dynamic filledAt,
      @JsonKey(name: 'questions_with_answers')
          List<dynamic>? questionsWithAnswers,
      ScaleClass? scale,
      Team? team,
      List<Feedback>? feedbacks});

  $FlagCopyWith<$Res>? get flag;
  $CorrectorCopyWith<$Res>? get corrector;
  $TruantCopyWith<$Res>? get truant;
  $ScaleClassCopyWith<$Res>? get scale;
  $TeamCopyWith<$Res>? get team;
}

/// @nodoc
class _$ScaleTeamCopyWithImpl<$Res, $Val extends ScaleTeam>
    implements $ScaleTeamCopyWith<$Res> {
  _$ScaleTeamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? scaleId = freezed,
    Object? comment = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? feedback = null,
    Object? finalMark = null,
    Object? flag = freezed,
    Object? beginAt = freezed,
    Object? correcteds = freezed,
    Object? corrector = freezed,
    Object? truant = freezed,
    Object? filledAt = null,
    Object? questionsWithAnswers = freezed,
    Object? scale = freezed,
    Object? team = freezed,
    Object? feedbacks = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      scaleId: freezed == scaleId
          ? _value.scaleId
          : scaleId // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      feedback: null == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as dynamic,
      finalMark: null == finalMark
          ? _value.finalMark
          : finalMark // ignore: cast_nullable_to_non_nullable
              as dynamic,
      flag: freezed == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as Flag?,
      beginAt: freezed == beginAt
          ? _value.beginAt
          : beginAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      correcteds: freezed == correcteds
          ? _value.correcteds
          : correcteds // ignore: cast_nullable_to_non_nullable
              as List<Corrector>?,
      corrector: freezed == corrector
          ? _value.corrector
          : corrector // ignore: cast_nullable_to_non_nullable
              as Corrector?,
      truant: freezed == truant
          ? _value.truant
          : truant // ignore: cast_nullable_to_non_nullable
              as Truant?,
      filledAt: null == filledAt
          ? _value.filledAt
          : filledAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      questionsWithAnswers: freezed == questionsWithAnswers
          ? _value.questionsWithAnswers
          : questionsWithAnswers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      scale: freezed == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as ScaleClass?,
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team?,
      feedbacks: freezed == feedbacks
          ? _value.feedbacks
          : feedbacks // ignore: cast_nullable_to_non_nullable
              as List<Feedback>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FlagCopyWith<$Res>? get flag {
    if (_value.flag == null) {
      return null;
    }

    return $FlagCopyWith<$Res>(_value.flag!, (value) {
      return _then(_value.copyWith(flag: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CorrectorCopyWith<$Res>? get corrector {
    if (_value.corrector == null) {
      return null;
    }

    return $CorrectorCopyWith<$Res>(_value.corrector!, (value) {
      return _then(_value.copyWith(corrector: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TruantCopyWith<$Res>? get truant {
    if (_value.truant == null) {
      return null;
    }

    return $TruantCopyWith<$Res>(_value.truant!, (value) {
      return _then(_value.copyWith(truant: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ScaleClassCopyWith<$Res>? get scale {
    if (_value.scale == null) {
      return null;
    }

    return $ScaleClassCopyWith<$Res>(_value.scale!, (value) {
      return _then(_value.copyWith(scale: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res>? get team {
    if (_value.team == null) {
      return null;
    }

    return $TeamCopyWith<$Res>(_value.team!, (value) {
      return _then(_value.copyWith(team: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ScaleCopyWith<$Res> implements $ScaleTeamCopyWith<$Res> {
  factory _$$_ScaleCopyWith(_$_Scale value, $Res Function(_$_Scale) then) =
      __$$_ScaleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'scale_id')
          int? scaleId,
      dynamic comment,
      @JsonKey(name: 'created_at')
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
          DateTime? updatedAt,
      dynamic feedback,
      @JsonKey(name: 'final_mark')
          dynamic finalMark,
      Flag? flag,
      @JsonKey(name: 'begin_at')
          DateTime? beginAt,
      @JsonKey(name: 'correcteds')
          List<Corrector>? correcteds,
      Corrector? corrector,
      Truant? truant,
      @JsonKey(name: 'filled_at')
          dynamic filledAt,
      @JsonKey(name: 'questions_with_answers')
          List<dynamic>? questionsWithAnswers,
      ScaleClass? scale,
      Team? team,
      List<Feedback>? feedbacks});

  @override
  $FlagCopyWith<$Res>? get flag;
  @override
  $CorrectorCopyWith<$Res>? get corrector;
  @override
  $TruantCopyWith<$Res>? get truant;
  @override
  $ScaleClassCopyWith<$Res>? get scale;
  @override
  $TeamCopyWith<$Res>? get team;
}

/// @nodoc
class __$$_ScaleCopyWithImpl<$Res>
    extends _$ScaleTeamCopyWithImpl<$Res, _$_Scale>
    implements _$$_ScaleCopyWith<$Res> {
  __$$_ScaleCopyWithImpl(_$_Scale _value, $Res Function(_$_Scale) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? scaleId = freezed,
    Object? comment = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? feedback = null,
    Object? finalMark = null,
    Object? flag = freezed,
    Object? beginAt = freezed,
    Object? correcteds = freezed,
    Object? corrector = freezed,
    Object? truant = freezed,
    Object? filledAt = null,
    Object? questionsWithAnswers = freezed,
    Object? scale = freezed,
    Object? team = freezed,
    Object? feedbacks = freezed,
  }) {
    return _then(_$_Scale(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      scaleId: freezed == scaleId
          ? _value.scaleId
          : scaleId // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      feedback: null == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as dynamic,
      finalMark: null == finalMark
          ? _value.finalMark
          : finalMark // ignore: cast_nullable_to_non_nullable
              as dynamic,
      flag: freezed == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as Flag?,
      beginAt: freezed == beginAt
          ? _value.beginAt
          : beginAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      correcteds: freezed == correcteds
          ? _value._correcteds
          : correcteds // ignore: cast_nullable_to_non_nullable
              as List<Corrector>?,
      corrector: freezed == corrector
          ? _value.corrector
          : corrector // ignore: cast_nullable_to_non_nullable
              as Corrector?,
      truant: freezed == truant
          ? _value.truant
          : truant // ignore: cast_nullable_to_non_nullable
              as Truant?,
      filledAt: null == filledAt
          ? _value.filledAt
          : filledAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      questionsWithAnswers: freezed == questionsWithAnswers
          ? _value._questionsWithAnswers
          : questionsWithAnswers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      scale: freezed == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as ScaleClass?,
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team?,
      feedbacks: freezed == feedbacks
          ? _value._feedbacks
          : feedbacks // ignore: cast_nullable_to_non_nullable
              as List<Feedback>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Scale implements _Scale {
  const _$_Scale(
      {this.id,
      @JsonKey(name: 'scale_id')
          this.scaleId,
      this.comment,
      @JsonKey(name: 'created_at')
          this.createdAt,
      @JsonKey(name: 'updated_at')
          this.updatedAt,
      this.feedback,
      @JsonKey(name: 'final_mark')
          this.finalMark,
      this.flag,
      @JsonKey(name: 'begin_at')
          this.beginAt,
      @JsonKey(name: 'correcteds')
          final List<Corrector>? correcteds,
      this.corrector,
      this.truant,
      @JsonKey(name: 'filled_at')
          this.filledAt,
      @JsonKey(name: 'questions_with_answers')
          final List<dynamic>? questionsWithAnswers,
      this.scale,
      this.team,
      final List<Feedback>? feedbacks})
      : _correcteds = correcteds,
        _questionsWithAnswers = questionsWithAnswers,
        _feedbacks = feedbacks;

  factory _$_Scale.fromJson(Map<String, dynamic> json) =>
      _$$_ScaleFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'scale_id')
  final int? scaleId;
  @override
  final dynamic comment;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  final dynamic feedback;
  @override
  @JsonKey(name: 'final_mark')
  final dynamic finalMark;
  @override
  final Flag? flag;
  @override
  @JsonKey(name: 'begin_at')
  final DateTime? beginAt;
  final List<Corrector>? _correcteds;
  @override
  @JsonKey(name: 'correcteds')
  List<Corrector>? get correcteds {
    final value = _correcteds;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Corrector? corrector;
  @override
  final Truant? truant;
  @override
  @JsonKey(name: 'filled_at')
  final dynamic filledAt;
  final List<dynamic>? _questionsWithAnswers;
  @override
  @JsonKey(name: 'questions_with_answers')
  List<dynamic>? get questionsWithAnswers {
    final value = _questionsWithAnswers;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ScaleClass? scale;
  @override
  final Team? team;
  final List<Feedback>? _feedbacks;
  @override
  List<Feedback>? get feedbacks {
    final value = _feedbacks;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ScaleTeam(id: $id, scaleId: $scaleId, comment: $comment, createdAt: $createdAt, updatedAt: $updatedAt, feedback: $feedback, finalMark: $finalMark, flag: $flag, beginAt: $beginAt, correcteds: $correcteds, corrector: $corrector, truant: $truant, filledAt: $filledAt, questionsWithAnswers: $questionsWithAnswers, scale: $scale, team: $team, feedbacks: $feedbacks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Scale &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.scaleId, scaleId) || other.scaleId == scaleId) &&
            const DeepCollectionEquality().equals(other.comment, comment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other.feedback, feedback) &&
            const DeepCollectionEquality().equals(other.finalMark, finalMark) &&
            (identical(other.flag, flag) || other.flag == flag) &&
            (identical(other.beginAt, beginAt) || other.beginAt == beginAt) &&
            const DeepCollectionEquality()
                .equals(other._correcteds, _correcteds) &&
            (identical(other.corrector, corrector) ||
                other.corrector == corrector) &&
            (identical(other.truant, truant) || other.truant == truant) &&
            const DeepCollectionEquality().equals(other.filledAt, filledAt) &&
            const DeepCollectionEquality()
                .equals(other._questionsWithAnswers, _questionsWithAnswers) &&
            (identical(other.scale, scale) || other.scale == scale) &&
            (identical(other.team, team) || other.team == team) &&
            const DeepCollectionEquality()
                .equals(other._feedbacks, _feedbacks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      scaleId,
      const DeepCollectionEquality().hash(comment),
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(feedback),
      const DeepCollectionEquality().hash(finalMark),
      flag,
      beginAt,
      const DeepCollectionEquality().hash(_correcteds),
      corrector,
      truant,
      const DeepCollectionEquality().hash(filledAt),
      const DeepCollectionEquality().hash(_questionsWithAnswers),
      scale,
      team,
      const DeepCollectionEquality().hash(_feedbacks));

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

abstract class _Scale implements ScaleTeam {
  const factory _Scale(
      {final int? id,
      @JsonKey(name: 'scale_id')
          final int? scaleId,
      final dynamic comment,
      @JsonKey(name: 'created_at')
          final DateTime? createdAt,
      @JsonKey(name: 'updated_at')
          final DateTime? updatedAt,
      final dynamic feedback,
      @JsonKey(name: 'final_mark')
          final dynamic finalMark,
      final Flag? flag,
      @JsonKey(name: 'begin_at')
          final DateTime? beginAt,
      @JsonKey(name: 'correcteds')
          final List<Corrector>? correcteds,
      final Corrector? corrector,
      final Truant? truant,
      @JsonKey(name: 'filled_at')
          final dynamic filledAt,
      @JsonKey(name: 'questions_with_answers')
          final List<dynamic>? questionsWithAnswers,
      final ScaleClass? scale,
      final Team? team,
      final List<Feedback>? feedbacks}) = _$_Scale;

  factory _Scale.fromJson(Map<String, dynamic> json) = _$_Scale.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'scale_id')
  int? get scaleId;
  @override
  dynamic get comment;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  dynamic get feedback;
  @override
  @JsonKey(name: 'final_mark')
  dynamic get finalMark;
  @override
  Flag? get flag;
  @override
  @JsonKey(name: 'begin_at')
  DateTime? get beginAt;
  @override
  @JsonKey(name: 'correcteds')
  List<Corrector>? get correcteds;
  @override
  Corrector? get corrector;
  @override
  Truant? get truant;
  @override
  @JsonKey(name: 'filled_at')
  dynamic get filledAt;
  @override
  @JsonKey(name: 'questions_with_answers')
  List<dynamic>? get questionsWithAnswers;
  @override
  ScaleClass? get scale;
  @override
  Team? get team;
  @override
  List<Feedback>? get feedbacks;
  @override
  @JsonKey(ignore: true)
  _$$_ScaleCopyWith<_$_Scale> get copyWith =>
      throw _privateConstructorUsedError;
}

Feedback _$FeedbackFromJson(Map<String, dynamic> json) {
  return _Feedback.fromJson(json);
}

/// @nodoc
mixin _$Feedback {
  int? get id => throw _privateConstructorUsedError;
  Corrector? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'feedbackable_type')
  String? get feedbackableType => throw _privateConstructorUsedError;
  @JsonKey(name: 'feedbackable_id')
  int? get feedbackableId => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedbackCopyWith<Feedback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackCopyWith<$Res> {
  factory $FeedbackCopyWith(Feedback value, $Res Function(Feedback) then) =
      _$FeedbackCopyWithImpl<$Res, Feedback>;
  @useResult
  $Res call(
      {int? id,
      Corrector? user,
      @JsonKey(name: 'feedbackable_type') String? feedbackableType,
      @JsonKey(name: 'feedbackable_id') int? feedbackableId,
      String? comment,
      int? rating,
      @JsonKey(name: 'created_at') DateTime? createdAt});

  $CorrectorCopyWith<$Res>? get user;
}

/// @nodoc
class _$FeedbackCopyWithImpl<$Res, $Val extends Feedback>
    implements $FeedbackCopyWith<$Res> {
  _$FeedbackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? feedbackableType = freezed,
    Object? feedbackableId = freezed,
    Object? comment = freezed,
    Object? rating = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Corrector?,
      feedbackableType: freezed == feedbackableType
          ? _value.feedbackableType
          : feedbackableType // ignore: cast_nullable_to_non_nullable
              as String?,
      feedbackableId: freezed == feedbackableId
          ? _value.feedbackableId
          : feedbackableId // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CorrectorCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $CorrectorCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FeedbackCopyWith<$Res> implements $FeedbackCopyWith<$Res> {
  factory _$$_FeedbackCopyWith(
          _$_Feedback value, $Res Function(_$_Feedback) then) =
      __$$_FeedbackCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      Corrector? user,
      @JsonKey(name: 'feedbackable_type') String? feedbackableType,
      @JsonKey(name: 'feedbackable_id') int? feedbackableId,
      String? comment,
      int? rating,
      @JsonKey(name: 'created_at') DateTime? createdAt});

  @override
  $CorrectorCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_FeedbackCopyWithImpl<$Res>
    extends _$FeedbackCopyWithImpl<$Res, _$_Feedback>
    implements _$$_FeedbackCopyWith<$Res> {
  __$$_FeedbackCopyWithImpl(
      _$_Feedback _value, $Res Function(_$_Feedback) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? feedbackableType = freezed,
    Object? feedbackableId = freezed,
    Object? comment = freezed,
    Object? rating = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_Feedback(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Corrector?,
      feedbackableType: freezed == feedbackableType
          ? _value.feedbackableType
          : feedbackableType // ignore: cast_nullable_to_non_nullable
              as String?,
      feedbackableId: freezed == feedbackableId
          ? _value.feedbackableId
          : feedbackableId // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
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
class _$_Feedback implements _Feedback {
  const _$_Feedback(
      {this.id,
      this.user,
      @JsonKey(name: 'feedbackable_type') this.feedbackableType,
      @JsonKey(name: 'feedbackable_id') this.feedbackableId,
      this.comment,
      this.rating,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$_Feedback.fromJson(Map<String, dynamic> json) =>
      _$$_FeedbackFromJson(json);

  @override
  final int? id;
  @override
  final Corrector? user;
  @override
  @JsonKey(name: 'feedbackable_type')
  final String? feedbackableType;
  @override
  @JsonKey(name: 'feedbackable_id')
  final int? feedbackableId;
  @override
  final String? comment;
  @override
  final int? rating;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'Feedback(id: $id, user: $user, feedbackableType: $feedbackableType, feedbackableId: $feedbackableId, comment: $comment, rating: $rating, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Feedback &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.feedbackableType, feedbackableType) ||
                other.feedbackableType == feedbackableType) &&
            (identical(other.feedbackableId, feedbackableId) ||
                other.feedbackableId == feedbackableId) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, user, feedbackableType,
      feedbackableId, comment, rating, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeedbackCopyWith<_$_Feedback> get copyWith =>
      __$$_FeedbackCopyWithImpl<_$_Feedback>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedbackToJson(
      this,
    );
  }
}

abstract class _Feedback implements Feedback {
  const factory _Feedback(
      {final int? id,
      final Corrector? user,
      @JsonKey(name: 'feedbackable_type') final String? feedbackableType,
      @JsonKey(name: 'feedbackable_id') final int? feedbackableId,
      final String? comment,
      final int? rating,
      @JsonKey(name: 'created_at') final DateTime? createdAt}) = _$_Feedback;

  factory _Feedback.fromJson(Map<String, dynamic> json) = _$_Feedback.fromJson;

  @override
  int? get id;
  @override
  Corrector? get user;
  @override
  @JsonKey(name: 'feedbackable_type')
  String? get feedbackableType;
  @override
  @JsonKey(name: 'feedbackable_id')
  int? get feedbackableId;
  @override
  String? get comment;
  @override
  int? get rating;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_FeedbackCopyWith<_$_Feedback> get copyWith =>
      throw _privateConstructorUsedError;
}

Corrector _$CorrectorFromJson(Map<String, dynamic> json) {
  return _Corrector.fromJson(json);
}

/// @nodoc
mixin _$Corrector {
  int? get id => throw _privateConstructorUsedError;
  String? get login => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CorrectorCopyWith<Corrector> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CorrectorCopyWith<$Res> {
  factory $CorrectorCopyWith(Corrector value, $Res Function(Corrector) then) =
      _$CorrectorCopyWithImpl<$Res, Corrector>;
  @useResult
  $Res call({int? id, String? login, String? url});
}

/// @nodoc
class _$CorrectorCopyWithImpl<$Res, $Val extends Corrector>
    implements $CorrectorCopyWith<$Res> {
  _$CorrectorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? login = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CorrectorCopyWith<$Res> implements $CorrectorCopyWith<$Res> {
  factory _$$_CorrectorCopyWith(
          _$_Corrector value, $Res Function(_$_Corrector) then) =
      __$$_CorrectorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? login, String? url});
}

/// @nodoc
class __$$_CorrectorCopyWithImpl<$Res>
    extends _$CorrectorCopyWithImpl<$Res, _$_Corrector>
    implements _$$_CorrectorCopyWith<$Res> {
  __$$_CorrectorCopyWithImpl(
      _$_Corrector _value, $Res Function(_$_Corrector) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? login = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_Corrector(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Corrector implements _Corrector {
  const _$_Corrector({this.id, this.login, this.url});

  factory _$_Corrector.fromJson(Map<String, dynamic> json) =>
      _$$_CorrectorFromJson(json);

  @override
  final int? id;
  @override
  final String? login;
  @override
  final String? url;

  @override
  String toString() {
    return 'Corrector(id: $id, login: $login, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Corrector &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, login, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CorrectorCopyWith<_$_Corrector> get copyWith =>
      __$$_CorrectorCopyWithImpl<_$_Corrector>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CorrectorToJson(
      this,
    );
  }
}

abstract class _Corrector implements Corrector {
  const factory _Corrector(
      {final int? id, final String? login, final String? url}) = _$_Corrector;

  factory _Corrector.fromJson(Map<String, dynamic> json) =
      _$_Corrector.fromJson;

  @override
  int? get id;
  @override
  String? get login;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_CorrectorCopyWith<_$_Corrector> get copyWith =>
      throw _privateConstructorUsedError;
}

Flag _$FlagFromJson(Map<String, dynamic> json) {
  return _Flag.fromJson(json);
}

/// @nodoc
mixin _$Flag {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  bool? get positive => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlagCopyWith<Flag> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlagCopyWith<$Res> {
  factory $FlagCopyWith(Flag value, $Res Function(Flag) then) =
      _$FlagCopyWithImpl<$Res, Flag>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      bool? positive,
      String? icon,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$FlagCopyWithImpl<$Res, $Val extends Flag>
    implements $FlagCopyWith<$Res> {
  _$FlagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? positive = freezed,
    Object? icon = freezed,
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
      positive: freezed == positive
          ? _value.positive
          : positive // ignore: cast_nullable_to_non_nullable
              as bool?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_FlagCopyWith<$Res> implements $FlagCopyWith<$Res> {
  factory _$$_FlagCopyWith(_$_Flag value, $Res Function(_$_Flag) then) =
      __$$_FlagCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      bool? positive,
      String? icon,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$_FlagCopyWithImpl<$Res> extends _$FlagCopyWithImpl<$Res, _$_Flag>
    implements _$$_FlagCopyWith<$Res> {
  __$$_FlagCopyWithImpl(_$_Flag _value, $Res Function(_$_Flag) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? positive = freezed,
    Object? icon = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Flag(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      positive: freezed == positive
          ? _value.positive
          : positive // ignore: cast_nullable_to_non_nullable
              as bool?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
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
class _$_Flag implements _Flag {
  const _$_Flag(
      {this.id,
      this.name,
      this.positive,
      this.icon,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$_Flag.fromJson(Map<String, dynamic> json) => _$$_FlagFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final bool? positive;
  @override
  final String? icon;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Flag(id: $id, name: $name, positive: $positive, icon: $icon, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Flag &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.positive, positive) ||
                other.positive == positive) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, positive, icon, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FlagCopyWith<_$_Flag> get copyWith =>
      __$$_FlagCopyWithImpl<_$_Flag>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FlagToJson(
      this,
    );
  }
}

abstract class _Flag implements Flag {
  const factory _Flag(
      {final int? id,
      final String? name,
      final bool? positive,
      final String? icon,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt}) = _$_Flag;

  factory _Flag.fromJson(Map<String, dynamic> json) = _$_Flag.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  bool? get positive;
  @override
  String? get icon;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_FlagCopyWith<_$_Flag> get copyWith => throw _privateConstructorUsedError;
}

ScaleClass _$ScaleClassFromJson(Map<String, dynamic> json) {
  return _ScaleClass.fromJson(json);
}

/// @nodoc
mixin _$ScaleClass {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'evaluation_id')
  int? get evaluationId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  bool? get isPrimary => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'introduction_md')
  String? get introductionMd => throw _privateConstructorUsedError;
  @JsonKey(name: 'disclaimer_md')
  String? get disclaimerMd => throw _privateConstructorUsedError;
  @JsonKey(name: 'guidelines_md')
  String? get guidelinesMd => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'correction_number')
  int? get correctionNumber => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'manual_subscription')
  bool? get manualSubscription => throw _privateConstructorUsedError;
  List<Language>? get languages => throw _privateConstructorUsedError;
  List<Flag>? get flags => throw _privateConstructorUsedError;
  bool? get free => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScaleClassCopyWith<ScaleClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScaleClassCopyWith<$Res> {
  factory $ScaleClassCopyWith(
          ScaleClass value, $Res Function(ScaleClass) then) =
      _$ScaleClassCopyWithImpl<$Res, ScaleClass>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'evaluation_id') int? evaluationId,
      String? name,
      bool? isPrimary,
      String? comment,
      @JsonKey(name: 'introduction_md') String? introductionMd,
      @JsonKey(name: 'disclaimer_md') String? disclaimerMd,
      @JsonKey(name: 'guidelines_md') String? guidelinesMd,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'correction_number') int? correctionNumber,
      int? duration,
      @JsonKey(name: 'manual_subscription') bool? manualSubscription,
      List<Language>? languages,
      List<Flag>? flags,
      bool? free});
}

/// @nodoc
class _$ScaleClassCopyWithImpl<$Res, $Val extends ScaleClass>
    implements $ScaleClassCopyWith<$Res> {
  _$ScaleClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? evaluationId = freezed,
    Object? name = freezed,
    Object? isPrimary = freezed,
    Object? comment = freezed,
    Object? introductionMd = freezed,
    Object? disclaimerMd = freezed,
    Object? guidelinesMd = freezed,
    Object? createdAt = freezed,
    Object? correctionNumber = freezed,
    Object? duration = freezed,
    Object? manualSubscription = freezed,
    Object? languages = freezed,
    Object? flags = freezed,
    Object? free = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      evaluationId: freezed == evaluationId
          ? _value.evaluationId
          : evaluationId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrimary: freezed == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      introductionMd: freezed == introductionMd
          ? _value.introductionMd
          : introductionMd // ignore: cast_nullable_to_non_nullable
              as String?,
      disclaimerMd: freezed == disclaimerMd
          ? _value.disclaimerMd
          : disclaimerMd // ignore: cast_nullable_to_non_nullable
              as String?,
      guidelinesMd: freezed == guidelinesMd
          ? _value.guidelinesMd
          : guidelinesMd // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      correctionNumber: freezed == correctionNumber
          ? _value.correctionNumber
          : correctionNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      manualSubscription: freezed == manualSubscription
          ? _value.manualSubscription
          : manualSubscription // ignore: cast_nullable_to_non_nullable
              as bool?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Language>?,
      flags: freezed == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as List<Flag>?,
      free: freezed == free
          ? _value.free
          : free // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScaleClassCopyWith<$Res>
    implements $ScaleClassCopyWith<$Res> {
  factory _$$_ScaleClassCopyWith(
          _$_ScaleClass value, $Res Function(_$_ScaleClass) then) =
      __$$_ScaleClassCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'evaluation_id') int? evaluationId,
      String? name,
      bool? isPrimary,
      String? comment,
      @JsonKey(name: 'introduction_md') String? introductionMd,
      @JsonKey(name: 'disclaimer_md') String? disclaimerMd,
      @JsonKey(name: 'guidelines_md') String? guidelinesMd,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'correction_number') int? correctionNumber,
      int? duration,
      @JsonKey(name: 'manual_subscription') bool? manualSubscription,
      List<Language>? languages,
      List<Flag>? flags,
      bool? free});
}

/// @nodoc
class __$$_ScaleClassCopyWithImpl<$Res>
    extends _$ScaleClassCopyWithImpl<$Res, _$_ScaleClass>
    implements _$$_ScaleClassCopyWith<$Res> {
  __$$_ScaleClassCopyWithImpl(
      _$_ScaleClass _value, $Res Function(_$_ScaleClass) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? evaluationId = freezed,
    Object? name = freezed,
    Object? isPrimary = freezed,
    Object? comment = freezed,
    Object? introductionMd = freezed,
    Object? disclaimerMd = freezed,
    Object? guidelinesMd = freezed,
    Object? createdAt = freezed,
    Object? correctionNumber = freezed,
    Object? duration = freezed,
    Object? manualSubscription = freezed,
    Object? languages = freezed,
    Object? flags = freezed,
    Object? free = freezed,
  }) {
    return _then(_$_ScaleClass(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      evaluationId: freezed == evaluationId
          ? _value.evaluationId
          : evaluationId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrimary: freezed == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      introductionMd: freezed == introductionMd
          ? _value.introductionMd
          : introductionMd // ignore: cast_nullable_to_non_nullable
              as String?,
      disclaimerMd: freezed == disclaimerMd
          ? _value.disclaimerMd
          : disclaimerMd // ignore: cast_nullable_to_non_nullable
              as String?,
      guidelinesMd: freezed == guidelinesMd
          ? _value.guidelinesMd
          : guidelinesMd // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      correctionNumber: freezed == correctionNumber
          ? _value.correctionNumber
          : correctionNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      manualSubscription: freezed == manualSubscription
          ? _value.manualSubscription
          : manualSubscription // ignore: cast_nullable_to_non_nullable
              as bool?,
      languages: freezed == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Language>?,
      flags: freezed == flags
          ? _value._flags
          : flags // ignore: cast_nullable_to_non_nullable
              as List<Flag>?,
      free: freezed == free
          ? _value.free
          : free // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScaleClass implements _ScaleClass {
  const _$_ScaleClass(
      {this.id,
      @JsonKey(name: 'evaluation_id') this.evaluationId,
      this.name,
      this.isPrimary,
      this.comment,
      @JsonKey(name: 'introduction_md') this.introductionMd,
      @JsonKey(name: 'disclaimer_md') this.disclaimerMd,
      @JsonKey(name: 'guidelines_md') this.guidelinesMd,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'correction_number') this.correctionNumber,
      this.duration,
      @JsonKey(name: 'manual_subscription') this.manualSubscription,
      final List<Language>? languages,
      final List<Flag>? flags,
      this.free})
      : _languages = languages,
        _flags = flags;

  factory _$_ScaleClass.fromJson(Map<String, dynamic> json) =>
      _$$_ScaleClassFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'evaluation_id')
  final int? evaluationId;
  @override
  final String? name;
  @override
  final bool? isPrimary;
  @override
  final String? comment;
  @override
  @JsonKey(name: 'introduction_md')
  final String? introductionMd;
  @override
  @JsonKey(name: 'disclaimer_md')
  final String? disclaimerMd;
  @override
  @JsonKey(name: 'guidelines_md')
  final String? guidelinesMd;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'correction_number')
  final int? correctionNumber;
  @override
  final int? duration;
  @override
  @JsonKey(name: 'manual_subscription')
  final bool? manualSubscription;
  final List<Language>? _languages;
  @override
  List<Language>? get languages {
    final value = _languages;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Flag>? _flags;
  @override
  List<Flag>? get flags {
    final value = _flags;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? free;

  @override
  String toString() {
    return 'ScaleClass(id: $id, evaluationId: $evaluationId, name: $name, isPrimary: $isPrimary, comment: $comment, introductionMd: $introductionMd, disclaimerMd: $disclaimerMd, guidelinesMd: $guidelinesMd, createdAt: $createdAt, correctionNumber: $correctionNumber, duration: $duration, manualSubscription: $manualSubscription, languages: $languages, flags: $flags, free: $free)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScaleClass &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.evaluationId, evaluationId) ||
                other.evaluationId == evaluationId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isPrimary, isPrimary) ||
                other.isPrimary == isPrimary) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.introductionMd, introductionMd) ||
                other.introductionMd == introductionMd) &&
            (identical(other.disclaimerMd, disclaimerMd) ||
                other.disclaimerMd == disclaimerMd) &&
            (identical(other.guidelinesMd, guidelinesMd) ||
                other.guidelinesMd == guidelinesMd) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.correctionNumber, correctionNumber) ||
                other.correctionNumber == correctionNumber) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.manualSubscription, manualSubscription) ||
                other.manualSubscription == manualSubscription) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            const DeepCollectionEquality().equals(other._flags, _flags) &&
            (identical(other.free, free) || other.free == free));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      evaluationId,
      name,
      isPrimary,
      comment,
      introductionMd,
      disclaimerMd,
      guidelinesMd,
      createdAt,
      correctionNumber,
      duration,
      manualSubscription,
      const DeepCollectionEquality().hash(_languages),
      const DeepCollectionEquality().hash(_flags),
      free);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScaleClassCopyWith<_$_ScaleClass> get copyWith =>
      __$$_ScaleClassCopyWithImpl<_$_ScaleClass>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScaleClassToJson(
      this,
    );
  }
}

abstract class _ScaleClass implements ScaleClass {
  const factory _ScaleClass(
      {final int? id,
      @JsonKey(name: 'evaluation_id') final int? evaluationId,
      final String? name,
      final bool? isPrimary,
      final String? comment,
      @JsonKey(name: 'introduction_md') final String? introductionMd,
      @JsonKey(name: 'disclaimer_md') final String? disclaimerMd,
      @JsonKey(name: 'guidelines_md') final String? guidelinesMd,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'correction_number') final int? correctionNumber,
      final int? duration,
      @JsonKey(name: 'manual_subscription') final bool? manualSubscription,
      final List<Language>? languages,
      final List<Flag>? flags,
      final bool? free}) = _$_ScaleClass;

  factory _ScaleClass.fromJson(Map<String, dynamic> json) =
      _$_ScaleClass.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'evaluation_id')
  int? get evaluationId;
  @override
  String? get name;
  @override
  bool? get isPrimary;
  @override
  String? get comment;
  @override
  @JsonKey(name: 'introduction_md')
  String? get introductionMd;
  @override
  @JsonKey(name: 'disclaimer_md')
  String? get disclaimerMd;
  @override
  @JsonKey(name: 'guidelines_md')
  String? get guidelinesMd;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'correction_number')
  int? get correctionNumber;
  @override
  int? get duration;
  @override
  @JsonKey(name: 'manual_subscription')
  bool? get manualSubscription;
  @override
  List<Language>? get languages;
  @override
  List<Flag>? get flags;
  @override
  bool? get free;
  @override
  @JsonKey(ignore: true)
  _$$_ScaleClassCopyWith<_$_ScaleClass> get copyWith =>
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
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
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
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
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
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
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
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$_Language.fromJson(Map<String, dynamic> json) =>
      _$$_LanguageFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? identifier;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
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
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt}) = _$_Language;

  factory _Language.fromJson(Map<String, dynamic> json) = _$_Language.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get identifier;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_LanguageCopyWith<_$_Language> get copyWith =>
      throw _privateConstructorUsedError;
}

Team _$TeamFromJson(Map<String, dynamic> json) {
  return _Team.fromJson(json);
}

/// @nodoc
mixin _$Team {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'final_mark')
  dynamic get finalMark => throw _privateConstructorUsedError;
  @JsonKey(name: 'project_id')
  int? get projectId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'terminating_at')
  dynamic get terminatingAt => throw _privateConstructorUsedError;
  List<ScaleUser>? get users => throw _privateConstructorUsedError;
  bool? get locked => throw _privateConstructorUsedError;
  dynamic get validated => throw _privateConstructorUsedError;
  bool? get closed => throw _privateConstructorUsedError;
  @JsonKey(name: 'repo_url')
  String? get repoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'repo_uuid')
  String? get repoUuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'locked_at')
  DateTime? get lockedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'closed_at')
  DateTime? get closedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'project_session_id')
  int? get projectSessionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'project_gitlab_path')
  String? get projectGitlabPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamCopyWith<Team> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamCopyWith<$Res> {
  factory $TeamCopyWith(Team value, $Res Function(Team) then) =
      _$TeamCopyWithImpl<$Res, Team>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? url,
      @JsonKey(name: 'final_mark') dynamic finalMark,
      @JsonKey(name: 'project_id') int? projectId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? status,
      @JsonKey(name: 'terminating_at') dynamic terminatingAt,
      List<ScaleUser>? users,
      bool? locked,
      dynamic validated,
      bool? closed,
      @JsonKey(name: 'repo_url') String? repoUrl,
      @JsonKey(name: 'repo_uuid') String? repoUuid,
      @JsonKey(name: 'locked_at') DateTime? lockedAt,
      @JsonKey(name: 'closed_at') DateTime? closedAt,
      @JsonKey(name: 'project_session_id') int? projectSessionId,
      @JsonKey(name: 'project_gitlab_path') String? projectGitlabPath});
}

/// @nodoc
class _$TeamCopyWithImpl<$Res, $Val extends Team>
    implements $TeamCopyWith<$Res> {
  _$TeamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? finalMark = null,
    Object? projectId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? status = freezed,
    Object? terminatingAt = null,
    Object? users = freezed,
    Object? locked = freezed,
    Object? validated = null,
    Object? closed = freezed,
    Object? repoUrl = freezed,
    Object? repoUuid = freezed,
    Object? lockedAt = freezed,
    Object? closedAt = freezed,
    Object? projectSessionId = freezed,
    Object? projectGitlabPath = freezed,
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
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      finalMark: null == finalMark
          ? _value.finalMark
          : finalMark // ignore: cast_nullable_to_non_nullable
              as dynamic,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      terminatingAt: null == terminatingAt
          ? _value.terminatingAt
          : terminatingAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<ScaleUser>?,
      locked: freezed == locked
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as bool?,
      validated: null == validated
          ? _value.validated
          : validated // ignore: cast_nullable_to_non_nullable
              as dynamic,
      closed: freezed == closed
          ? _value.closed
          : closed // ignore: cast_nullable_to_non_nullable
              as bool?,
      repoUrl: freezed == repoUrl
          ? _value.repoUrl
          : repoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      repoUuid: freezed == repoUuid
          ? _value.repoUuid
          : repoUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      lockedAt: freezed == lockedAt
          ? _value.lockedAt
          : lockedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      closedAt: freezed == closedAt
          ? _value.closedAt
          : closedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      projectSessionId: freezed == projectSessionId
          ? _value.projectSessionId
          : projectSessionId // ignore: cast_nullable_to_non_nullable
              as int?,
      projectGitlabPath: freezed == projectGitlabPath
          ? _value.projectGitlabPath
          : projectGitlabPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TeamCopyWith<$Res> implements $TeamCopyWith<$Res> {
  factory _$$_TeamCopyWith(_$_Team value, $Res Function(_$_Team) then) =
      __$$_TeamCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? url,
      @JsonKey(name: 'final_mark') dynamic finalMark,
      @JsonKey(name: 'project_id') int? projectId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? status,
      @JsonKey(name: 'terminating_at') dynamic terminatingAt,
      List<ScaleUser>? users,
      bool? locked,
      dynamic validated,
      bool? closed,
      @JsonKey(name: 'repo_url') String? repoUrl,
      @JsonKey(name: 'repo_uuid') String? repoUuid,
      @JsonKey(name: 'locked_at') DateTime? lockedAt,
      @JsonKey(name: 'closed_at') DateTime? closedAt,
      @JsonKey(name: 'project_session_id') int? projectSessionId,
      @JsonKey(name: 'project_gitlab_path') String? projectGitlabPath});
}

/// @nodoc
class __$$_TeamCopyWithImpl<$Res> extends _$TeamCopyWithImpl<$Res, _$_Team>
    implements _$$_TeamCopyWith<$Res> {
  __$$_TeamCopyWithImpl(_$_Team _value, $Res Function(_$_Team) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? finalMark = null,
    Object? projectId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? status = freezed,
    Object? terminatingAt = null,
    Object? users = freezed,
    Object? locked = freezed,
    Object? validated = null,
    Object? closed = freezed,
    Object? repoUrl = freezed,
    Object? repoUuid = freezed,
    Object? lockedAt = freezed,
    Object? closedAt = freezed,
    Object? projectSessionId = freezed,
    Object? projectGitlabPath = freezed,
  }) {
    return _then(_$_Team(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      finalMark: null == finalMark
          ? _value.finalMark
          : finalMark // ignore: cast_nullable_to_non_nullable
              as dynamic,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      terminatingAt: null == terminatingAt
          ? _value.terminatingAt
          : terminatingAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<ScaleUser>?,
      locked: freezed == locked
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as bool?,
      validated: null == validated
          ? _value.validated
          : validated // ignore: cast_nullable_to_non_nullable
              as dynamic,
      closed: freezed == closed
          ? _value.closed
          : closed // ignore: cast_nullable_to_non_nullable
              as bool?,
      repoUrl: freezed == repoUrl
          ? _value.repoUrl
          : repoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      repoUuid: freezed == repoUuid
          ? _value.repoUuid
          : repoUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      lockedAt: freezed == lockedAt
          ? _value.lockedAt
          : lockedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      closedAt: freezed == closedAt
          ? _value.closedAt
          : closedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      projectSessionId: freezed == projectSessionId
          ? _value.projectSessionId
          : projectSessionId // ignore: cast_nullable_to_non_nullable
              as int?,
      projectGitlabPath: freezed == projectGitlabPath
          ? _value.projectGitlabPath
          : projectGitlabPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Team implements _Team {
  const _$_Team(
      {this.id,
      this.name,
      this.url,
      @JsonKey(name: 'final_mark') this.finalMark,
      @JsonKey(name: 'project_id') this.projectId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.status,
      @JsonKey(name: 'terminating_at') this.terminatingAt,
      final List<ScaleUser>? users,
      this.locked,
      this.validated,
      this.closed,
      @JsonKey(name: 'repo_url') this.repoUrl,
      @JsonKey(name: 'repo_uuid') this.repoUuid,
      @JsonKey(name: 'locked_at') this.lockedAt,
      @JsonKey(name: 'closed_at') this.closedAt,
      @JsonKey(name: 'project_session_id') this.projectSessionId,
      @JsonKey(name: 'project_gitlab_path') this.projectGitlabPath})
      : _users = users;

  factory _$_Team.fromJson(Map<String, dynamic> json) => _$$_TeamFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? url;
  @override
  @JsonKey(name: 'final_mark')
  final dynamic finalMark;
  @override
  @JsonKey(name: 'project_id')
  final int? projectId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  final String? status;
  @override
  @JsonKey(name: 'terminating_at')
  final dynamic terminatingAt;
  final List<ScaleUser>? _users;
  @override
  List<ScaleUser>? get users {
    final value = _users;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? locked;
  @override
  final dynamic validated;
  @override
  final bool? closed;
  @override
  @JsonKey(name: 'repo_url')
  final String? repoUrl;
  @override
  @JsonKey(name: 'repo_uuid')
  final String? repoUuid;
  @override
  @JsonKey(name: 'locked_at')
  final DateTime? lockedAt;
  @override
  @JsonKey(name: 'closed_at')
  final DateTime? closedAt;
  @override
  @JsonKey(name: 'project_session_id')
  final int? projectSessionId;
  @override
  @JsonKey(name: 'project_gitlab_path')
  final String? projectGitlabPath;

  @override
  String toString() {
    return 'Team(id: $id, name: $name, url: $url, finalMark: $finalMark, projectId: $projectId, createdAt: $createdAt, updatedAt: $updatedAt, status: $status, terminatingAt: $terminatingAt, users: $users, locked: $locked, validated: $validated, closed: $closed, repoUrl: $repoUrl, repoUuid: $repoUuid, lockedAt: $lockedAt, closedAt: $closedAt, projectSessionId: $projectSessionId, projectGitlabPath: $projectGitlabPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Team &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other.finalMark, finalMark) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.terminatingAt, terminatingAt) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.locked, locked) || other.locked == locked) &&
            const DeepCollectionEquality().equals(other.validated, validated) &&
            (identical(other.closed, closed) || other.closed == closed) &&
            (identical(other.repoUrl, repoUrl) || other.repoUrl == repoUrl) &&
            (identical(other.repoUuid, repoUuid) ||
                other.repoUuid == repoUuid) &&
            (identical(other.lockedAt, lockedAt) ||
                other.lockedAt == lockedAt) &&
            (identical(other.closedAt, closedAt) ||
                other.closedAt == closedAt) &&
            (identical(other.projectSessionId, projectSessionId) ||
                other.projectSessionId == projectSessionId) &&
            (identical(other.projectGitlabPath, projectGitlabPath) ||
                other.projectGitlabPath == projectGitlabPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        url,
        const DeepCollectionEquality().hash(finalMark),
        projectId,
        createdAt,
        updatedAt,
        status,
        const DeepCollectionEquality().hash(terminatingAt),
        const DeepCollectionEquality().hash(_users),
        locked,
        const DeepCollectionEquality().hash(validated),
        closed,
        repoUrl,
        repoUuid,
        lockedAt,
        closedAt,
        projectSessionId,
        projectGitlabPath
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TeamCopyWith<_$_Team> get copyWith =>
      __$$_TeamCopyWithImpl<_$_Team>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeamToJson(
      this,
    );
  }
}

abstract class _Team implements Team {
  const factory _Team(
      {final int? id,
      final String? name,
      final String? url,
      @JsonKey(name: 'final_mark')
          final dynamic finalMark,
      @JsonKey(name: 'project_id')
          final int? projectId,
      @JsonKey(name: 'created_at')
          final DateTime? createdAt,
      @JsonKey(name: 'updated_at')
          final DateTime? updatedAt,
      final String? status,
      @JsonKey(name: 'terminating_at')
          final dynamic terminatingAt,
      final List<ScaleUser>? users,
      final bool? locked,
      final dynamic validated,
      final bool? closed,
      @JsonKey(name: 'repo_url')
          final String? repoUrl,
      @JsonKey(name: 'repo_uuid')
          final String? repoUuid,
      @JsonKey(name: 'locked_at')
          final DateTime? lockedAt,
      @JsonKey(name: 'closed_at')
          final DateTime? closedAt,
      @JsonKey(name: 'project_session_id')
          final int? projectSessionId,
      @JsonKey(name: 'project_gitlab_path')
          final String? projectGitlabPath}) = _$_Team;

  factory _Team.fromJson(Map<String, dynamic> json) = _$_Team.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get url;
  @override
  @JsonKey(name: 'final_mark')
  dynamic get finalMark;
  @override
  @JsonKey(name: 'project_id')
  int? get projectId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  String? get status;
  @override
  @JsonKey(name: 'terminating_at')
  dynamic get terminatingAt;
  @override
  List<ScaleUser>? get users;
  @override
  bool? get locked;
  @override
  dynamic get validated;
  @override
  bool? get closed;
  @override
  @JsonKey(name: 'repo_url')
  String? get repoUrl;
  @override
  @JsonKey(name: 'repo_uuid')
  String? get repoUuid;
  @override
  @JsonKey(name: 'locked_at')
  DateTime? get lockedAt;
  @override
  @JsonKey(name: 'closed_at')
  DateTime? get closedAt;
  @override
  @JsonKey(name: 'project_session_id')
  int? get projectSessionId;
  @override
  @JsonKey(name: 'project_gitlab_path')
  String? get projectGitlabPath;
  @override
  @JsonKey(ignore: true)
  _$$_TeamCopyWith<_$_Team> get copyWith => throw _privateConstructorUsedError;
}

ScaleUser _$ScaleUserFromJson(Map<String, dynamic> json) {
  return _ScaleUser.fromJson(json);
}

/// @nodoc
mixin _$ScaleUser {
  int? get id => throw _privateConstructorUsedError;
  String? get login => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  bool? get leader => throw _privateConstructorUsedError;
  int? get occurrence => throw _privateConstructorUsedError;
  bool? get validated => throw _privateConstructorUsedError;
  @JsonKey(name: 'projects_user_id')
  int? get projectsUserId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScaleUserCopyWith<ScaleUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScaleUserCopyWith<$Res> {
  factory $ScaleUserCopyWith(ScaleUser value, $Res Function(ScaleUser) then) =
      _$ScaleUserCopyWithImpl<$Res, ScaleUser>;
  @useResult
  $Res call(
      {int? id,
      String? login,
      String? url,
      bool? leader,
      int? occurrence,
      bool? validated,
      @JsonKey(name: 'projects_user_id') int? projectsUserId});
}

/// @nodoc
class _$ScaleUserCopyWithImpl<$Res, $Val extends ScaleUser>
    implements $ScaleUserCopyWith<$Res> {
  _$ScaleUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? login = freezed,
    Object? url = freezed,
    Object? leader = freezed,
    Object? occurrence = freezed,
    Object? validated = freezed,
    Object? projectsUserId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      leader: freezed == leader
          ? _value.leader
          : leader // ignore: cast_nullable_to_non_nullable
              as bool?,
      occurrence: freezed == occurrence
          ? _value.occurrence
          : occurrence // ignore: cast_nullable_to_non_nullable
              as int?,
      validated: freezed == validated
          ? _value.validated
          : validated // ignore: cast_nullable_to_non_nullable
              as bool?,
      projectsUserId: freezed == projectsUserId
          ? _value.projectsUserId
          : projectsUserId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScaleUserCopyWith<$Res> implements $ScaleUserCopyWith<$Res> {
  factory _$$_ScaleUserCopyWith(
          _$_ScaleUser value, $Res Function(_$_ScaleUser) then) =
      __$$_ScaleUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? login,
      String? url,
      bool? leader,
      int? occurrence,
      bool? validated,
      @JsonKey(name: 'projects_user_id') int? projectsUserId});
}

/// @nodoc
class __$$_ScaleUserCopyWithImpl<$Res>
    extends _$ScaleUserCopyWithImpl<$Res, _$_ScaleUser>
    implements _$$_ScaleUserCopyWith<$Res> {
  __$$_ScaleUserCopyWithImpl(
      _$_ScaleUser _value, $Res Function(_$_ScaleUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? login = freezed,
    Object? url = freezed,
    Object? leader = freezed,
    Object? occurrence = freezed,
    Object? validated = freezed,
    Object? projectsUserId = freezed,
  }) {
    return _then(_$_ScaleUser(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      leader: freezed == leader
          ? _value.leader
          : leader // ignore: cast_nullable_to_non_nullable
              as bool?,
      occurrence: freezed == occurrence
          ? _value.occurrence
          : occurrence // ignore: cast_nullable_to_non_nullable
              as int?,
      validated: freezed == validated
          ? _value.validated
          : validated // ignore: cast_nullable_to_non_nullable
              as bool?,
      projectsUserId: freezed == projectsUserId
          ? _value.projectsUserId
          : projectsUserId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScaleUser implements _ScaleUser {
  const _$_ScaleUser(
      {this.id,
      this.login,
      this.url,
      this.leader,
      this.occurrence,
      this.validated,
      @JsonKey(name: 'projects_user_id') this.projectsUserId});

  factory _$_ScaleUser.fromJson(Map<String, dynamic> json) =>
      _$$_ScaleUserFromJson(json);

  @override
  final int? id;
  @override
  final String? login;
  @override
  final String? url;
  @override
  final bool? leader;
  @override
  final int? occurrence;
  @override
  final bool? validated;
  @override
  @JsonKey(name: 'projects_user_id')
  final int? projectsUserId;

  @override
  String toString() {
    return 'ScaleUser(id: $id, login: $login, url: $url, leader: $leader, occurrence: $occurrence, validated: $validated, projectsUserId: $projectsUserId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScaleUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.leader, leader) || other.leader == leader) &&
            (identical(other.occurrence, occurrence) ||
                other.occurrence == occurrence) &&
            (identical(other.validated, validated) ||
                other.validated == validated) &&
            (identical(other.projectsUserId, projectsUserId) ||
                other.projectsUserId == projectsUserId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, login, url, leader,
      occurrence, validated, projectsUserId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScaleUserCopyWith<_$_ScaleUser> get copyWith =>
      __$$_ScaleUserCopyWithImpl<_$_ScaleUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScaleUserToJson(
      this,
    );
  }
}

abstract class _ScaleUser implements ScaleUser {
  const factory _ScaleUser(
          {final int? id,
          final String? login,
          final String? url,
          final bool? leader,
          final int? occurrence,
          final bool? validated,
          @JsonKey(name: 'projects_user_id') final int? projectsUserId}) =
      _$_ScaleUser;

  factory _ScaleUser.fromJson(Map<String, dynamic> json) =
      _$_ScaleUser.fromJson;

  @override
  int? get id;
  @override
  String? get login;
  @override
  String? get url;
  @override
  bool? get leader;
  @override
  int? get occurrence;
  @override
  bool? get validated;
  @override
  @JsonKey(name: 'projects_user_id')
  int? get projectsUserId;
  @override
  @JsonKey(ignore: true)
  _$$_ScaleUserCopyWith<_$_ScaleUser> get copyWith =>
      throw _privateConstructorUsedError;
}

Truant _$TruantFromJson(Map<String, dynamic> json) {
  return _Truant.fromJson(json);
}

/// @nodoc
mixin _$Truant {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TruantCopyWith<$Res> {
  factory $TruantCopyWith(Truant value, $Res Function(Truant) then) =
      _$TruantCopyWithImpl<$Res, Truant>;
}

/// @nodoc
class _$TruantCopyWithImpl<$Res, $Val extends Truant>
    implements $TruantCopyWith<$Res> {
  _$TruantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TruantCopyWith<$Res> {
  factory _$$_TruantCopyWith(_$_Truant value, $Res Function(_$_Truant) then) =
      __$$_TruantCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TruantCopyWithImpl<$Res>
    extends _$TruantCopyWithImpl<$Res, _$_Truant>
    implements _$$_TruantCopyWith<$Res> {
  __$$_TruantCopyWithImpl(_$_Truant _value, $Res Function(_$_Truant) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_Truant implements _Truant {
  const _$_Truant();

  factory _$_Truant.fromJson(Map<String, dynamic> json) =>
      _$$_TruantFromJson(json);

  @override
  String toString() {
    return 'Truant()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Truant);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_TruantToJson(
      this,
    );
  }
}

abstract class _Truant implements Truant {
  const factory _Truant() = _$_Truant;

  factory _Truant.fromJson(Map<String, dynamic> json) = _$_Truant.fromJson;
}
