// Created by linkkader on 9/11/2022

extension StringExt on String{
  //substring after
  String substringAfter(String str) {
    if (contains(str)) {
      return substring(indexOf(str) + str.length);
    }
    return this;
  }

  //substring before
  String substringBefore(String str) {
    if (contains(str)) {
      return substring(0, indexOf(str));
    }
    return this;
  }
}