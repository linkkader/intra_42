// Created by linkkader on 9/11/2022

import 'dart:io';

import 'ext/string.dart';
class Pair<T1, T2> {
  final T1 a;
  final T2 b;
  Pair(this.a, this.b);
}

void main() {
  var file = File('convert_freeze_to_izar/file.dart');
  Map classes = <String, bool>{};
  var str = file.readAsStringSync();
  while (str.contains("class ")){
    var className = str.substringAfter("class ").substringBefore(" ");
    classes[className] = true;
    str = str.substringAfter("class");
  }
  var lines = file.readAsLinesSync();
  var out = """\nimport 'package:isar/isar.dart';\n\n""";
  var collection = true;
  for(var i = 0; i < lines.length; i++){
    List<Pair<String, String>> vars = [];
    if (lines[i].contains("@freezed")){
      print("line $i");
      print(lines[i]);
      i++;
      if (collection){
        out += "@collection\n";
      }else{
        out += "@embedded\n";
      }
      collection = false;
      var className = "${lines[i].substringAfter("class ").substringBefore(" ")}Isar";
      out += "class $className {\n";
      i++;
      while(!lines[i + 1].contains("})")){
        i++;
        if(lines[i].contains("JsonKey")){
          continue;
        }
        print(lines[i]);
        print(lines[i].substringAfter("    "));
        vars.add(Pair(lines[i].substringAfter("    ").split(" ")[0], lines[i].substringAfter("    ").split(" ")[1].replaceAll(",", ""))) ;
      }
      for(var a in vars){
        if (a.a == "dynamic"){
          out += "  @ignore\n";
          out += "  final ${a.a} ${a.b};\n";
        }
        else{
          var className = a.a.substringBefore(">").substringAfter("<").replaceAll("?", "");
          if (className == "dynamic"){
            out += "  @ignore\n";
          }
          var name = a.a.replaceAll(className, classes[className] == true ? "${className}Isar" : className);
          out += "  final $name ${a.b};\n";
        }
      }
      out += "\n";
      out += "  const $className({";
      for(var a in vars){
        out += "this.${a.b}, ";
      }
      out += "});\n\n";

      out += "   factory $className.fromFreezed(${className.substringBefore("Isar")}? objet) => $className (\n";
      for(var a in vars){
        if (a.a.contains("dynamic")) continue;
        if (a.a.contains("List")){
          if (classes[a.a.substringBefore(">").substringAfter("<").replaceAll("?", "")] == true){
            out += "      ${a.b}: objet?.${a.b}?.map((e) => ${a.a.substringBefore(">").substringAfter("<").replaceAll("?", "")}Isar.fromFreezed(e)).toList(),\n";
          }else{
            out += "      ${a.b}: objet?.${a.b}?.map((e) => e).toList(),\n";
          }
          continue;
        }
        if (a.a.contains("Map")){
          out += "      ${a.b}: objet?.${a.b}?.map((key, value) => MapEntry(key, ${a.a.substringBefore(">").substringAfter("<").replaceAll("?", "")}Isar.fromFreezed(value))),\n";
          continue;
        }
        if (classes[a.a.replaceAll("?", "")] == true){
          out += "      ${a.b}: ${a.a.replaceAll("?", "")}Isar.fromFreezed(objet?.${a.b}),\n";
          continue;
        }
        out += "      ${a.b}: objet?.${a.b},\n";
      }
      out += "    );\n\n";

      out += "   ${className.substringBefore("Isar")} toFreezed() => ${className.substringBefore("Isar")}(\n";
      for(var a in vars){
        if (a.a.contains("List")){
          if (classes[a.a.substringBefore(">").substringAfter("<").replaceAll("?", "")] == true){
            out += "      ${a.b}: ${a.b}?.map((e) => e.toFreezed()).toList(),\n";
          }else{
            out += "      ${a.b}: ${a.b}?.map((e) => e).toList(),\n";
          }

          continue;
        }
        if (a.a.contains("Map")){
          out += "      ${a.b}: ${a.b}?.map((key, value) => MapEntry(key, value.toFreezed())),\n";
          continue;
        }
        if (classes[a.a.replaceAll("?", "")] == true){
          out += "      ${a.b}: ${a.b}?.toFreezed(),\n";
          continue;
        }
        out += "      ${a.b}: ${a.b},\n";
      }
      out += "    );\n\n";

      out += "}\n\n";
    }
  }
  var outFile = File('convert_freeze_to_izar/out.dart');
  outFile.writeAsStringSync(out);

}