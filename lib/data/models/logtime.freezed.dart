// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'logtime.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_LogTimeCopyWith<$Res> implements $LogTimeCopyWith<$Res> {
  factory _$$_LogTimeCopyWith(
          _$_LogTime value, $Res Function(_$_LogTime) then) =
      __$$_LogTimeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Duration duration, DateTime day});
}

/// @nodoc
class __$$_LogTimeCopyWithImpl<$Res>
    extends _$LogTimeCopyWithImpl<$Res, _$_LogTime>
    implements _$$_LogTimeCopyWith<$Res> {
  __$$_LogTimeCopyWithImpl(_$_LogTime _value, $Res Function(_$_LogTime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? day = null,
  }) {
    return _then(_$_LogTime(
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

class _$_LogTime implements _LogTime {
  const _$_LogTime({required this.duration, required this.day});

  @override
  final Duration duration;
  @override
  final DateTime day;

  @override
  String toString() {
    return 'LogTime(duration: $duration, day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogTime &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.day, day) || other.day == day));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration, day);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogTimeCopyWith<_$_LogTime> get copyWith =>
      __$$_LogTimeCopyWithImpl<_$_LogTime>(this, _$identity);
}

abstract class _LogTime implements LogTime {
  const factory _LogTime(
      {required final Duration duration,
      required final DateTime day}) = _$_LogTime;

  @override
  Duration get duration;
  @override
  DateTime get day;
  @override
  @JsonKey(ignore: true)
  _$$_LogTimeCopyWith<_$_LogTime> get copyWith =>
      throw _privateConstructorUsedError;
}
