// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'empty_cluster.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmptyCluster {
  String get id => throw _privateConstructorUsedError;
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  bool get isText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmptyClusterCopyWith<EmptyCluster> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyClusterCopyWith<$Res> {
  factory $EmptyClusterCopyWith(
          EmptyCluster value, $Res Function(EmptyCluster) then) =
      _$EmptyClusterCopyWithImpl<$Res, EmptyCluster>;
  @useResult
  $Res call({String id, int x, int y, int height, int width, bool isText});
}

/// @nodoc
class _$EmptyClusterCopyWithImpl<$Res, $Val extends EmptyCluster>
    implements $EmptyClusterCopyWith<$Res> {
  _$EmptyClusterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? x = null,
    Object? y = null,
    Object? height = null,
    Object? width = null,
    Object? isText = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      isText: null == isText
          ? _value.isText
          : isText // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmptyClusterImplCopyWith<$Res>
    implements $EmptyClusterCopyWith<$Res> {
  factory _$$EmptyClusterImplCopyWith(
          _$EmptyClusterImpl value, $Res Function(_$EmptyClusterImpl) then) =
      __$$EmptyClusterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int x, int y, int height, int width, bool isText});
}

/// @nodoc
class __$$EmptyClusterImplCopyWithImpl<$Res>
    extends _$EmptyClusterCopyWithImpl<$Res, _$EmptyClusterImpl>
    implements _$$EmptyClusterImplCopyWith<$Res> {
  __$$EmptyClusterImplCopyWithImpl(
      _$EmptyClusterImpl _value, $Res Function(_$EmptyClusterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? x = null,
    Object? y = null,
    Object? height = null,
    Object? width = null,
    Object? isText = null,
  }) {
    return _then(_$EmptyClusterImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      isText: null == isText
          ? _value.isText
          : isText // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EmptyClusterImpl implements _EmptyCluster {
  const _$EmptyClusterImpl(
      {required this.id,
      required this.x,
      required this.y,
      required this.height,
      required this.width,
      required this.isText});

  @override
  final String id;
  @override
  final int x;
  @override
  final int y;
  @override
  final int height;
  @override
  final int width;
  @override
  final bool isText;

  @override
  String toString() {
    return 'EmptyCluster(id: $id, x: $x, y: $y, height: $height, width: $width, isText: $isText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyClusterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.isText, isText) || other.isText == isText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, x, y, height, width, isText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyClusterImplCopyWith<_$EmptyClusterImpl> get copyWith =>
      __$$EmptyClusterImplCopyWithImpl<_$EmptyClusterImpl>(this, _$identity);
}

abstract class _EmptyCluster implements EmptyCluster {
  const factory _EmptyCluster(
      {required final String id,
      required final int x,
      required final int y,
      required final int height,
      required final int width,
      required final bool isText}) = _$EmptyClusterImpl;

  @override
  String get id;
  @override
  int get x;
  @override
  int get y;
  @override
  int get height;
  @override
  int get width;
  @override
  bool get isText;
  @override
  @JsonKey(ignore: true)
  _$$EmptyClusterImplCopyWith<_$EmptyClusterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
