// To parse this JSON data, do
//
//     final projectData = projectDataFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_data.freezed.dart';
part 'project_data.g.dart';

@freezed
abstract class ProjectData with _$ProjectData {
  const factory ProjectData({
    String? state,
    @JsonKey(name: "final_mark")
    int? finalMark,
    int? id,
    String? kind,
    String? name,
    double? x,
    double? y,
    List<By>? by,
    @JsonKey(name: 'project_id')
    int? projectId,
    int? difficulty,
    String? duration,
    String? rules,
    String? description,
    String? slug,
  }) = _ProjectData;

  factory ProjectData.fromJson(Map<String, dynamic> json) => _$ProjectDataFromJson(json);
}

@freezed
abstract class By with _$By {
  const factory By({
    @JsonKey(name: 'parent_id')
    int? parentId,
    List<List<double>>? points,
  }) = _By;

  factory By.fromJson(Map<String, dynamic> json) => _$ByFromJson(json);
}