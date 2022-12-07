// Created by linkkader on 9/9/2022

extension StringExtension on String {

  String capitalize() {
    if (length > 1) {
      return '${this[0].toUpperCase()}${substring(1)}';
    } else {
      return toUpperCase();
    }
  }

  String get time {
    var time = split(":");
    try{
      var hour = int.parse(time[0]);
      var min = int.parse(time[1]);
      var sec = int.parse(time[2]);
      var res = "";
      res += hour == 0 ? "00" : "$hour";
      res += min == 0 ? ":00" : ":$min";
      if(sec > 0) res += ":$sec";
      return res;
    }
    catch(e){
      return this;
    }
  }

  //00:00:00
  DateTime toDateTime() {
    var time = split(":");
    try{
      var now = DateTime.now();
      var hour = int.parse(time[0]);
      var min = int.parse(time[1]);
      var sec = int.parse(time[2]);
      return DateTime(now.year, now.month, now.day, hour, min, sec);
    }
    catch(e){
      return DateTime.now();
    }
  }

  //27/01/2023
  DateTime toDateTime2() {
    var time = split("/");
    try{
      var days = int.parse(time[0]);
      var month = int.parse(time[1]);
      var year = int.parse(time[2]);
      return DateTime(year, month, days);
    }
    catch(e){
      return DateTime.now();
    }
  }

  //to uri
  Uri get uri => Uri.parse(this);

  bool emailValidator() {
    if (isEmpty) return false;
    var reg = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return reg.hasMatch(this);
  }

  //Must contain at least one uppercase letter, one lowercase letter, one special character, and one number.
  bool passwordValidator() {
    if (isEmpty) return false;
    var reg = RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z]).{8,15}$");
    return reg.hasMatch(this);
  }

  //substring before
  String substringBefore(String str) {
    if (isEmpty) return "";
    if (str.isEmpty) return this;
    if (contains(str)) {
      return substring(0, indexOf(str));
    } else {
      return this;
    }
  }

  //substring after
  String substringAfter(String str) {
    if (isEmpty) return "";
    if (str.isEmpty) return this;
    if (contains(str)) {
      return substring(indexOf(str) + str.length);
    } else {
      return this;
    }
  }

  //substring after last
  String substringAfterLast(String str) {
    if (isEmpty) return "";
    if (str.isEmpty) return this;
    if (contains(str)) {
      return substring(lastIndexOf(str) + str.length);
    } else {
      return this;
    }
  }

  //substring before last
  String substringBeforeLast(String str) {
    if (isEmpty) return "";
    if (str.isEmpty) return this;
    if (contains(str)) {
      return substring(0, lastIndexOf(str));
    } else {
      return this;
    }
  }

  //to int
  int toInt() {
    try {
      return int.parse(this);
    } catch (e) {
      return 0;
    }
  }

  //is numeric
  bool isNumeric() {
    try {
      int.parse(this);
      return true;
    } catch (e) {
      return false;
    }
  }
}