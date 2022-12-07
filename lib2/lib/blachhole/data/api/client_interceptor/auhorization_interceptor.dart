// Created by linkkader on 14/10/2022

import 'package:dio/dio.dart';

class AuthorizationInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {

    // if (response.requestOptions.uri.toString().endsWith('auth/signin') &&  response.headers.value('Authorization') != null) {
    //   App.log.d("token ${response.headers.value('Authorization')}");
    //
    //   LocaleStorage().updateAuthorization("Bearer ${response.headers.value('Authorization')}");
    //   Client.addHeader('Authorization', "Bearer ${ response.headers.value('Authorization')}");
    // }

    handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    handler.next(err);
  }
}