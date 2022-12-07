import 'package:hive/hive.dart';

part 'Saveimage.g.dart';

@HiveType(typeId: 3)
class SaveImg {
  @HiveField(0) final List<int> img;
  const SaveImg(this.img);
}

String safeId(String s) {
  for (var e in s.codeUnits) {
    if ((e > 47 && e < 57) ||
        (e > 64 && e < 91) ||
        (e > 96 && e < 124) ||
        e == 32) {
      continue;
    }
    s = s.replaceAll(String.fromCharCode(e), "");
  }
  if (s.length > 254) {
    s = s.substring(0, 254);
  }
  return s;
}

