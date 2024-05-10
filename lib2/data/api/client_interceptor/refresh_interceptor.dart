// Created by linkkader on 14/10/2022

import 'package:dio/dio.dart';
import 'package:intra_42/core/extensions/int_ext.dart';
import '../../../main.dart';
import '../../repositories/auth_repository.dart';

class RefreshInterceptor extends Interceptor {

  bool oneTime = false;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401 && !oneTime) {
      // Todo: handle 401
      oneTime = true;
      AuthRepository().refreshToken();
      20.sleep().then((value) {
        oneTime = false;
      });
    }
    handler.next(err);
  }
}