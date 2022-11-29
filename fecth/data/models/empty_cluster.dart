// Created by linkkader on 14/11/2022

import 'package:freezed_annotation/freezed_annotation.dart';
part 'empty_cluster.freezed.dart';

@freezed
class EmptyCluster with _$EmptyCluster{
  const factory EmptyCluster({
    required String id,
    required int x,
    required int y,
    required int height,
    required int width,
    required bool isText
  }) = _EmptyCluster;
}