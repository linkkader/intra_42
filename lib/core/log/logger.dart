// Created by linkkader on 16/2/2023

import 'package:logger/logger.dart';

class Log {

  final log = Logger();
  final _tag = "Outlet";
  var _infoCount = 0;
  var printLog = false;

  static final Log _instance = Log._internal();
  Log._internal();
  factory Log() => _instance;


  void d(message, [error, StackTrace? stackTrace]) {
    if (printLog) return;
    log.d(message, error: error, stackTrace: stackTrace);
  }

  void e(message, [error, StackTrace? stackTrace]) {
    if (printLog) return;
    log.e(message, error: error, stackTrace: stackTrace);
  }

  void i(message, [error, StackTrace? stackTrace]) {
    if (printLog) return;
    log.i(message, error: error, stackTrace: stackTrace);
  }

  void info(message, [error, StackTrace? stackTrace]) {
    if (printLog) return;
    _infoCount++;
    log.i("$_tag: $_infoCount $message", error: error, stackTrace: stackTrace);
  }


  void v(message, [error, StackTrace? stackTrace]) {
    if (printLog) return;
    log.t(message,error: error, stackTrace: stackTrace);
  }

  void w(message, [error, StackTrace? stackTrace]) {
    if (printLog) return;
    log.w(message, error: error, stackTrace: stackTrace);
  }

  void wtf(message, [error, StackTrace? stackTrace]) {
    if (printLog) return;
    log.f(message, error: error, stackTrace: stackTrace);
  }

}
