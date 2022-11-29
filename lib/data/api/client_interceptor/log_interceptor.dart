
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:intra_42/data/repositories/auth_repository.dart';

import '../../../core/params/constants.dart';
import '../../../main.dart';

class LogInterceptor extends InterceptorsWrapper{

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    String data = "";
    try{
      data = json.encode(options.data);
    }catch(_){

    }
    App.log.d("$kDioRequestTag =>> ${options.method} \n${options.uri} \n${json.encode(options.headers)} \n $data");

    handler.next(options);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
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
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    App.log.d("$kDioResponseTag <<= ${response.statusCode} ${response.realUri} ${response.statusMessage}");
    App.log.d("$kDioResponseTag <<= ${response.data}");
    handler.next(response);
  }
}