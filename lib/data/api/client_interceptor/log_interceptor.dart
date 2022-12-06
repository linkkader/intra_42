
import 'dart:async';
import 'dart:collection';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:intra_42/core/extensions/int_ext.dart';
import 'package:intra_42/core/utils/pair.dart';
import 'package:intra_42/data/repositories/auth_repository.dart';

import '../../../core/params/constants.dart';
import '../../../main.dart';

class LogInterceptor extends InterceptorsWrapper{
  static final Queue<Pair<int, Completer>> _queue = Queue();
  var _one = false;
  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    String data = "";
    try{
      data = json.encode(options.data);
    }catch(_){

    }
    App.log.d("$kDioRequestTag =>> ${options.method} \n${options.uri} \n${json.encode(options.headers)} \n $data");
    if (options.uri.toString().startsWith(kApiBaseUrl)) {
      var completer = Completer();
      _queue.add(Pair(_queue.length, completer));
      if (_queue.length > 1) {
        await completer.future;
      }
      else{
        _one = true;
      }
    }
    handler.next(options);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.requestOptions.uri.toString().startsWith(kApiBaseUrl) && _queue.isNotEmpty) {
      await 1.sleep();
      var value = _queue.removeFirst();
      value.second.complete();
      App.log.i("count ${value.first} ${_queue.length}");
      if (value.first == 0 && _queue.isNotEmpty) {
        _queue.removeFirst().second.complete();
      }
      // if (_one) {
      //   _one = false;
      //   _queue.removeFirst().complete();
      // }
    }
    if (err.response?.statusCode == 401) {
      //Todo: handle 401
      AuthRepository().refreshToken();
    }

    var data = err.response?.data;
    App.log.e(
        "$kDioErrorTag ${err.response?.statusCode} ${err.response?.realUri} ${err.response?.statusMessage} data ${data.toString().length > 400 ? data.toString().substring(0, 400) : data}");

    handler.next(err);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    if (response.requestOptions.uri.toString().startsWith(kApiBaseUrl) && _queue.isNotEmpty) {
      await 1.sleep();
      var value = _queue.removeFirst();
      value.second.complete();
      App.log.i("count ${value.first} ${_queue.length}");
      if (value.first == 0 && _queue.isNotEmpty) {
        _queue.removeFirst().second.complete();
      }
      // _queue.removeFirst().complete();
      // App.log.i("one $_one");
      // if (_one) {
      //   _one = false;
      //   _queue.removeFirst().complete();
      // }
    }
    App.log.d("$kDioResponseTag <<= ${response.statusCode} ${response.realUri} ${response.statusMessage}");
    App.log.d("$kDioResponseTag <<= ${response.data}");
    handler.next(response);
  }
}