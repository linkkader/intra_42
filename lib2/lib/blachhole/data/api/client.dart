// Created by linkkader on 11/10/2022

import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
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

  void initApi()
  {
    _dio.interceptors.add(log.LogInterceptor());


    // _dio.options.headers["Cookie"] = cookie;
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


  static Future<Uint8List> downloadFile(String url) async {
    var response = await _dio.get<Uint8List>(url, options: Options(responseType: ResponseType.bytes));
    return response.data!;
  }

  //TODO: add cache
  Future<Uint8List?> byteImg(String url, {Map<String, String>? headers, bool storageOnly = false}) async {
    // url = "https://images2.alphacoders.com/115/1152201.jpg";
    var img = await LocaleStorage().img(url);
    if (img != null) return Uint8List.fromList(img);
    if (storageOnly){
      return null;
    }
    try{
      var lst = await compute(downloadFile, url);
      // var data = (await _dio.get<Uint8List>(url,
      //     options:
      //     Options(responseType: ResponseType.bytes, headers: headers)))
      //     .data;
      await LocaleStorage().saveImg(url, lst);
      return lst;
      // var lst2 = Uint8List.fromList(lst);
    }on DioError catch(_){
      print(_);
    }
    return null;
  }

  Map<String, dynamic> headers() {
    return _dio.options.headers;
  }

}