
import 'dart:typed_data';
import 'package:isar/isar.dart';

part 'img.g.dart';

@collection
class Img {

  final Id id = Isar.autoIncrement;
  @Index(unique: true, replace: true)
  final String url;
  final List<int> data;
  const Img({required this.url, required this.data});

}

