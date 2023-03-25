// Created by linkkader on 9/11/2022

import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart' as inapp;
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:html/parser.dart';
import 'package:intra_42/core/extensions/int_ext.dart';
import 'package:intra_42/core/extensions/string_ext.dart';
import 'package:intra_42/core/extensions/webview_controller_ext.dart';
import 'package:intra_42/core/extensions/widget_ext.dart';
import 'package:intra_42/core/params/constants.dart';
import 'package:intra_42/core/utils/pair.dart';
import 'package:intra_42/data/api/api.dart';
import 'package:intra_42/data/api/client.dart';
import 'package:intra_42/data/locale_storage/locale_storage.dart';
import 'package:intra_42/data/repositories/user_repository.dart';
import 'package:intra_42/main.dart';
import 'package:intra_42/presentation/page/start_page.dart';
import '../../domain/auth_interface/auth_interface.dart';
import '../../domain/util_interface/provider_interface.dart';
import '../../presentation/page/auth/auto_sign_webview.dart';

class AuthRepository extends AuthInterface with ProviderInterface {
  bool _isInit = false;
  late Api _api;
  Provider<AuthRepository>? _pr;

  static final AuthRepository _instance = AuthRepository._internal();
  AuthRepository._internal();
  factory AuthRepository() => _instance;


  AuthRepository init(Api api) {
    assert(!_isInit, "AuthRepository already initialized");
    _api = api;
    _isInit = true;
    return this;
  }

  @override
  Future signIn() async {
    var body = {
      "utf8": "✓",
      "authenticity_token": "R+Z+L1CQgl9IT6bcFaOmf0a2FobCKeEdFrBIox4eZ9nR5TK47pktnfVhG06aSBw5pSgS/OMSBG92ZXnyl/p60A==",
      "user[login]": "acouliba",
      "user[password]": "********************",
      "commit": "Sign in"
    };
    try{
      var dio = Dio();
      var r = await dio.post("https://signin.intra.42.fr/users/sign_in", data: body);
    }on DioError catch(_){
      App.log.i("DioError");
      App.log.i(_.response);
      App.log.i(_.response?.headers);
      App.log.i(_.response?.extra);
      App.log.i(_.message);

    }
  }

  //clear webview cache and cookies and all tokens
  @override
  Future signOut() async {
    App.log.i("Logged start");
    inapp.CookieManager cookieManager = inapp.CookieManager.instance();
    await cookieManager.deleteAllCookies();
    await LocaleStorage.clearTokenIsar();
    App.log.i("Logged out successfully");
    return true;
  }

  //save user cookies
  @override
  Future<bool> updateCookies() async {
    inapp.CookieManager cookieManager = inapp.CookieManager.instance();
    var cookie = await cookieManager.getCookies(url:  kBaseUrl.uri);
    var c = "";
    if (cookie.isEmpty) return false;
    for (var element in cookie) {
      c += '${element.name}=${element.value}; ';
    }

    cookie = await cookieManager.getCookies(url:  "https://signin.intra.42.fr/users/sign_in".uri);
    try{
      c += 'user.id=${cookie.where((element) => element.name == "user.id").first.value}';
    }catch(_){}
    App.log.wtf("updateCookies: $c");
    LocaleStorage().updateCookie(c);
    Client.addHeader("cookie", c);
    return true;
  }

  //check if user is logged in
  @override
  Future<bool> isUserLoggedIn() async {
    assert(_isInit, "AuthRepository not initialized");
    App.log.i("isUserLoggedIn");
    if (LocaleStorage().tokenBody == null) return false;
    var bool = await refreshToken();
    if (bool == false) return false;
    var allUsers = LocaleStorage().allUsers();
    var me =  LocaleStorage().getMe;
    for (var element in allUsers) {
      if (element.id == me?.id) {
        await LocaleStorage().updateMe(element.copyWith(location: null));
      }
      else{
        await LocaleStorage.setUser(element.copyWith(location: null));
      }
    }
    return UserRepository().me().then((value) {
      return true;
    }).catchError((e) => false);
  }

  @override
  Provider get provider => _pr ??= Provider((ref) => this);


  Map<String, String> _tokenBody(String code, {authorizationCode = "authorization_code"}) {
    return {
      'grant_type': authorizationCode,
      'client_id': kClientId,
      'client_secret': kSecret,
      if (authorizationCode == "authorization_code") 'code': code
      else 'refresh_token': code,
      'redirect_uri': kRedirectUrl,
    };
  }

  //get token from 42 api
  @override
  Future<bool> validateCode(String code) async {
    Client.clearHeaders();
    await updateSecretFromGithub();
    return _api.token(_tokenBody(code)).then((value) async {
          App.log.i("renewToken: $value");
          await LocaleStorage().updateTokenBody(value);
          Client.addHeader('Authorization', '${value.tokenType?.capitalize()} ${value.accessToken}');
          await updateCookies();
          // return true;
          return UserRepository().me().then((value) async {
            return true;
          });
        }
    ).catchError((e) {
      return false;
    });
  }



  Future updateSecretFromGithub() async {
    try{
      var data = json.decode((await Dio().get("https://raw.githubusercontent.com/linkkader/Intra_42/main/last_update.json")).data);
      App.log.i("updateSecretFromGithub: $data");
      if (data["secret_key"] != null){
        var secret = data["secret_key"];
        await LocaleStorage.setString("default_secret_key", secret.toString());
        kSecret = secret.toString();
      }
    }catch(_){}
  }

  Future<bool> refreshCookie(){
    var login = LocaleStorage.getString("login");
    var password = LocaleStorage.getString("password");
    if (login == null || password == null) return Future.value(false);
    return checkCookie().then((value) async {
      if (value) return true;
      return autoSign(login, password);
    }).catchError((_) => autoSign(login, password));
  }

  Future<bool> checkCookie(){
    return Client.dio.get("https://profile.intra.42.fr/users/acouliba/locations_stats.json").then((value) => true);
  }

  //refresh token
  Future<bool> refreshToken() async {
    var body = LocaleStorage().tokenBody;
    if (body?.refreshToken == null) return Future.value(false);
    await updateSecretFromGithub();
    await refreshCookie();
    return _api.token(_tokenBody(body!.refreshToken!, authorizationCode: "refresh_token")).then((value){
      App.log.i("renewToken: $value");
      LocaleStorage().updateTokenBody(value);
      Client.addHeader('Authorization', '${value.tokenType?.capitalize()} ${value.accessToken}');
      return true;
    }
    );
  }


  @override
  Future<Pair<bool, String>> checkApiAccess(String endpoint, String redirectUrl, String clientId, String clientSecret) async{
    var dio = Dio();
    dio.interceptors.add(LogInterceptor());
    var newApi = Api(dio);
    var fakeCode = "ufrjhfrjfrjrfjhfbffbejeff";
    fakeCode = "6a59f94a07c20b3374a582c23d2b8f10a4ec377d93315eedaf2c6d538cec3d7a";
    var body = {
      'grant_type': "authorization_code",
      'client_id': clientId,
      'client_secret': clientSecret,
      'code': "fakeCode",
      'redirect_uri': redirectUrl,
    };
    App.log.i(body.toString());
    try{
      var a = await newApi.token(body);
    }on DioError catch(_){
      App.log.i(_.response?.headers["www-authenticate"]);
      
      if (_.response?.headers["www-authenticate"]?.toString().contains("he provided authorization grant is invalid, expired") ?? false){
        LocaleStorage.setString("endpoint", endpoint);
        LocaleStorage.setString("redirectUrl", redirectUrl);
        LocaleStorage.setString("clientId", clientId);
        LocaleStorage.setString("clientSecret", clientSecret);
        kSignInEndpoint = endpoint;
        kRedirectUrl = redirectUrl;
        kClientId = clientId;
        kSecret = clientSecret;
        return const Pair(true, "saved");
      }
      return Pair(false, _.response?.headers["www-authenticate"]?.toString() ?? _.message);
    }
    return const Pair(false, "Something went wrong");
  }

  @override
  Future<bool> autoSign(String email, String password) async {
    await signOut();
    await updateCookies();
    await AutoSignWebView.controller.loadUrl(urlRequest: URLRequest(url: kSignIn.uri));
    await AutoSignWebView.loading();
    var html = await AutoSignWebView.controller.getHtml();
    var doc = parse(html);
    var post = Uint8List.fromList(utf8.encode("username=$email&password=$password&credentialId="));
    var url = doc.querySelector("form")?.attributes["action"];
    await AutoSignWebView.controller.postUrl(url: Uri.parse(url!), postData: post);
    await AutoSignWebView.loading();
    html = await AutoSignWebView.controller.getHtml();
    await updateCookies();
    App.log.i(html);
    if ((await AutoSignWebView.controller.getUrl()).toString() != "https://profile.intra.42.fr/"){
      throw Exception("Wrong login or password");
    }
    await LocaleStorage.setString("login", email);
    await LocaleStorage.setString("password", password);
    return true;

    // await controller.loadUrl(urlRequest: URLRequest(url: kSignInEndpoint.uri));
    // await AutoSignWebView.loading();
    // html = await controller.getHtml();
    // doc = parse(html);
    // var lst = doc.querySelector("form")!.querySelectorAll("input");
    // var data = "";
    // for (var value in lst) {
    //   if (data != ""){
    //     data += "&${value.attributes["name"]}=${value.attributes["value"]}";
    //   }
    //   else{
    //     data += "${value.attributes["name"]}=${value.attributes["value"]}";
    //   }
    // }
    //
    // var url2 = kOAuthAuthorize;
    // inapp.CookieManager cookieManager = inapp.CookieManager.instance();
    // var cookie = await cookieManager.getCookies(url:  kBaseUrl.uri);
    // var headers = {
    //   "Cookie": cookie.map((e) => "${e.name}=${e.value}").join("; "),
    //   "Content-Type": "application/x-www-form-urlencoded",
    // };
    // var res = await Client.dio.post(url2, data: data);
    //
    // return false;
    // await controller.postUrl(url: kOAuthAuthorize.uri, postData: Uint8List.fromList(utf8.encode(data)));
    // await AutoSignWebView.loading();
    // App.log.wtf("done $data ${await controller.getUrl()}");
    // App.log.wtf("done ${await controller.getHtml()}");

    return false;
  }
}

// Bearer realm="42 API", error="invalid_grant", error_description="The provided authorization grant is invalid, expired, revoked, does not match the redirection URI used in the authorization request, or was issued to another client."
// Bearer realm="42 API", error="invalid_client", error_description="Client authentication failed due to unknown client, no client authentication included, or unsupported authentication method."