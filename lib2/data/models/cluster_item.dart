
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:developer' as dev;

import 'package:intra_42/core/extensions/string_ext.dart';
import 'package:intra_42/core/utils/pair.dart';
import 'package:intra_42/main.dart';
import 'package:intra_42/presentation/page/main_page/cluster/cluster.dart';

part 'cluster_item.freezed.dart';
part 'cluster_item.g.dart';

String _before(String str){
  var i = 0;
  for (var value in str.characters) {
    try{
      value.toInt();
    }catch(_){
      break;
    }
    i++;
  }
  return str.substring(0, i);
}

String _after(String str){
  var i = 0;
  for (var value in str.characters) {
    try{
      value.toInt();
    }catch(_){
      break;
    }
    i++;
  }
  return str.substring(i + 1);
}

Map<Pair<String, String>, Map<String, ClusterItem>> mapClusterItemFromJson(List<ClusterItem> lst, List<Pair<String, String>> pairs){
  Map<Pair<String, String>, Map<String, ClusterItem>> maps = {};
  Map<String, ClusterItem> map = {};
  for(var c in lst){
    map[c.host!] = c;
  }
  for (var p in pairs) {
    maps[p] = {};
    maps[p] = map;
  }
  return maps;
}


@freezed
class ClusterItem with _$ClusterItem{
  const factory ClusterItem({
    String? host,
    @JsonKey(name: 'begin_at')
    String? beginAt,
    @JsonKey(name: 'end_at')
    String? endAt,
    String? login,
    @JsonKey(name: 'cdn_uri')
    String? cdnUri,
    String? image,
    @JsonKey(name: 'campus_id')
    int? campusId
    }) = _ClusterItem;

  factory ClusterItem.fromJson(Map<String, Object?> json) => _$ClusterItemFromJson(json);
}

