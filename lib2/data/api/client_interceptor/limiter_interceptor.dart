
import 'dart:async';
import 'dart:collection';

import 'package:dio/dio.dart';
import 'package:intra_42/core/extensions/int_ext.dart';

import '../../../core/params/constants.dart';
import '../../../core/utils/pair.dart';

class LimiterInterceptor extends InterceptorsWrapper{
  final Queue<Pair<int, Completer>> _queue = Queue();
  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.uri.toString().startsWith(kApiBaseUrl)) {
      var completer = Completer();
      _queue.add(Pair(_queue.length, completer));
      if (_queue.length > 1) {
        () async{
          await 30.sleep();
          if (completer.isCompleted == false) completer.complete();
        }();
        await completer.future;
      }
    }
    handler.next(options);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.requestOptions.uri.toString().startsWith(kApiBaseUrl) && _queue.isNotEmpty) {
      //todo: pouf
      await Future.delayed(const Duration(milliseconds: 100));
      var value = _queue.removeFirst();
      value.second.complete();
      if (value.first == 0 && _queue.isNotEmpty) {
        _queue.removeFirst().second.complete();
      }
    }
    // if (err.response?.statusCode == 401) {
    //   Todo: handle 401
      // AuthRepository().refreshToken();
    // }


    handler.next(err);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    if (response.requestOptions.uri.toString().startsWith(kApiBaseUrl) && _queue.isNotEmpty) {
      await 1.sleep();
      var value = _queue.removeFirst();
      value.second.complete();
      if (value.first == 0 && _queue.isNotEmpty) {
        _queue.removeFirst().second.complete();
      }
    }
    handler.next(response);
  }
}