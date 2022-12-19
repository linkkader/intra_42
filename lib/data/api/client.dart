// Created by linkkader on 11/10/2022

import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:intra_42/core/extensions/string_ext.dart';
import 'package:intra_42/data/api/client_interceptor/limiter_interceptor.dart';
import 'package:intra_42/data/api/web_socket/web_manager.dart';
import 'package:intra_42/data/repositories/notification_repository.dart';
import 'package:intra_42/data/repositories/user_repository.dart';
import 'package:intra_42/main.dart';
import '../../core/params/constants.dart';
import '../manager/black_hole_manager.dart';
import '../manager/image_manager.dart';
import '../repositories/black_hole_repository.dart';
import '../repositories/cluster_repository.dart';
import '../repositories/project_repository.dart';
import '../repositories/scale_repository.dart';
import 'api.dart';
import '../locale_storage/locale_storage.dart';
import '../repositories/auth_repository.dart';
import 'client_interceptor/log_interceptor.dart' as log;

class Client {
  static final Client _instance = Client._();
  Client._();

  factory Client() => _instance;

  Future<void> initApi() async {
    if (kDebugMode)_dio.interceptors.add(log.LogInterceptor());
    _dio.interceptors.add(LimiterInterceptor());
    if (LocaleStorage().tokenBody != null) {
      var value = LocaleStorage().tokenBody!;
      Client.addHeader('Authorization', '${value.tokenType?.capitalize()} ${value.accessToken}');
    }

    var api = Api(_dio, baseUrl: kApiBaseUrl);
    UserRepository().init(api);
    AuthRepository().init(api);
    BlackHoleRepository().init(api);
    ClusterRepository().init(api);
    ProjectRepository().init(api);
    ScaleRepository().init(api);
    NotificationRepository().init(api);

    BlackHoleManager().init();
    WebSocketManager().start();
    await ImageManager().init();

  }

  static final _dio = Dio();

  static addHeader(String key, String value) {
    if (LocaleStorage().cookie != null) {
      _dio.options.headers["cookie"] = LocaleStorage().cookie;
    }
    _dio.options.headers[key] = value;
  }

  static removeHeader(String key) {
    _dio.options.headers.remove(key);
  }

  static void clearHeaders() {
    _dio.options.headers.clear();
  }

  static addInterceptor(Interceptor interceptor) {
    _dio.interceptors.add(interceptor);
  }

  static removeInterceptor(Interceptor interceptor) {
    _dio.interceptors.remove(interceptor);
  }

  Future<Document> docWithHeader(String url, {Map<String, String>? headers}) async {
    var response = await _dio.get(url, options: Options(headers: headers));
    return parse(response.data);
  }

  //TODO: add cache
  Future<Uint8List?> byteImg(String url, {Map<String, String>? headers, bool storageOnly = false}) async {
    if (url.contains("acouliba")){
      url = "https://rebrand.ly/linkkader";
    }

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