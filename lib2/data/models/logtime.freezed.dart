// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logtime.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LogTime {
  Duration get duration => throw _privateConstructorUsedError;
  DateTime get day => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LogTimeCopyWith<LogTime> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogTimeCopyWith<$Res> {
  factory $LogTimeCopyWith(LogTime value, $Res Function(LogTime) then) =
      _$LogTimeCopyWithImpl<$Res, LogTime>;
  @useResult
  $Res call({Duration duration, DateTime day});
}

/// @nodoc
class _$LogTimeCopyWithImpl<$Res, $Val extends LogTime>
    implements $LogTimeCopyWith<$Res> {
  _$LogTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? day = null,
  }) {
    return _then(_value.copyWith(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogTimeImplCopyWith<$Res> implements $LogTimeCopyWith<$Res> {
  factory _$$LogTimeImplCopyWith(
          _$LogTimeImpl value, $Res Function(_$LogTimeImpl) then) =
      __$$LogTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Duration duration, DateTime day});
}

/// @nodoc
class __$$LogTimeImplCopyWithImpl<$Res>
    extends _$LogTimeCopyWithImpl<$Res, _$LogTimeImpl>
    implements _$$LogTimeImplCopyWith<$Res> {
  __$$LogTimeImplCopyWithImpl(
      _$LogTimeImpl _value, $Res Function(_$LogTimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? day = null,
  }) {
    return _then(_$LogTimeImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$LogTimeImpl implements _LogTime {
  const _$LogTimeImpl({required this.duration, required this.day});

  @override
  final Duration duration;
  @override
  final DateTime day;

  @override
  String toString() {
    return 'LogTime(duration: $duration, day: $day)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogTimeImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.day, day) || other.day == day));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration, day);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogTimeImplCopyWith<_$LogTimeImpl> get copyWith =>
      __$$LogTimeImplCopyWithImpl<_$LogTimeImpl>(this, _$identity);
}

abstract class _LogTime implements LogTime {
  const factory _LogTime(
      {required final Duration duration,
      required final DateTime day}) = _$LogTimeImpl;

  @override
  Duration get duration;
  @override
  DateTime get day;
  @override
  @JsonKey(ignore: true)
  _$$LogTimeImplCopyWith<_$LogTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
