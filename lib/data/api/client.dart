// Created by linkkader on 11/10/2022

import 'dart:typed_data';

import 'package:dio/dio.dart';
import '../../core/params/constants.dart';
import '../manager/black_hole_manager.dart';
import '../repositories/black_hole_repository.dart';
import '../repositories/user_repository.dart';
import 'api.dart';
import '../locale_storage/locale_storage.dart';
import '../../core/extensions/string_ext.dart';
import 'client_interceptor/log_interceptor.dart' as log;


class Client {
  static final Client _instance = Client._();
  Client._();

  factory Client() => _instance;

  void initApi(String cookie)
  {
    var token = LocaleStorage().tokenBody;
    if (token != null) {
      var value = token;
      Client.addHeader('Authorization', '${value.tokenType?.capitalize()} ${value.accessToken}');
    }

    _dio.interceptors.add(log.LogInterceptor());


    _dio.options.headers["Cookie"] = cookie;
    // _dio.options.headers["Authorization"] = "Bearer $token";

    var api = Api(_dio, baseUrl: kApiBaseUrl);
    UserRepository().init(api);
    BlackHoleRepository().init(api);

    BlackHoleManager().init();


  }

  static final _dio = Dio();

  static addHeader(String key, String value) {
    // if (LocaleStorage().cookie != null) {
      // _dio.options.headers["cookie"] = LocaleStorage().cookie;
    // }
    _dio.options.headers[key] = value;
  }

  static removeHeader(String key) {
    _dio.options.headers.remove(key);
  }

  static clearHeaders() {
    _dio.options.headers.clear();
  }

  static addInterceptor(Interceptor interceptor) {
    _dio.interceptors.add(interceptor);
  }

  static removeInterceptor(Interceptor interceptor) {
    _dio.interceptors.remove(interceptor);
  }


  Future<Uint8List?> byteImg(String url, {Map<String, String>? headers, bool storageOnly = false}) async {
    var img = await LocaleStorage().img(url);
    if (img != null) return Uint8List.fromList(img.data);
    if (storageOnly){
      return null;
    }
    try{
      var data = (await _dio.get<Uint8List>(url,
          options:
          Options(responseType: ResponseType.bytes, headers: headers)))
          .data;
      if (data != null) {
        LocaleStorage().saveImg(url, data);
        return data;
      }
    }on DioError catch(_){

    }
    return null;
  }

  Map<String, dynamic> headers() {
    return _dio.options.headers;
  }

}