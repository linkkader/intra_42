// Created by linkkader on 9/11/2022

import 'package:dio/dio.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart' as inapp;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intra_42/core/extensions/string_ext.dart';
import 'package:intra_42/core/params/constants.dart';
import 'package:intra_42/core/utils/pair.dart';
import 'package:intra_42/data/api/api.dart';
import 'package:intra_42/data/api/client.dart';
import 'package:intra_42/data/locale_storage/locale_storage.dart';
import 'package:intra_42/data/repositories/user_repository.dart';
import 'package:intra_42/main.dart';
import '../../domain/auth_interface/auth_interface.dart';
import '../../domain/util_interface/provider_interface.dart';

class AuthRepository extends AuthInterface with ProviderInterface {
  bool _isInit = false;
  bool _neverDuplicate = false;
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


  @override
  Future signOut() async {
    App.log.i("Logged start");
    inapp.CookieManager cookieManager = inapp.CookieManager.instance();
    await cookieManager.deleteAllCookies();
    await LocaleStorage.clearTokenIsar();
    App.restart();
    App.log.i("Logged out successfully");
  }

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
    LocaleStorage().updateCookie(c);
    Client.addHeader("cookie", c);
    return true;
  }

  @override
  Future<bool> isUserLoggedIn() async {
    assert(_isInit, "AuthRepository not initialized");
    App.log.i("isUserLoggedIn");
    if (LocaleStorage().tokenBody == null) return false;
    return UserRepository().me().then((value) => true).catchError((e) => false);
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
  
  @override
  Future<bool> validateCode(String code) async {
    // if (_neverDuplicate) return Future.value(false);
    // _neverDuplicate = true;
    Client.clearHeaders();
    return _api.token(_tokenBody(code)).then((value) async {
          _neverDuplicate = false;
          App.log.i("renewToken: $value");
          await LocaleStorage().updateTokenBody(value);
          Client.addHeader('Authorization', '${value.tokenType?.capitalize()} ${value.accessToken}');
          await updateCookies();
          return true;
        }
    ).catchError((e) {
      _neverDuplicate = false;
      return false;
    });
  }

  Future<bool> refreshToken() {
    if (_neverDuplicate) return Future.value(false);
    var body = LocaleStorage().tokenBody;
    if (body?.refreshToken == null) return Future.value(false);
    _neverDuplicate = true;
    return _api.token(_tokenBody(body!.refreshToken!, authorizationCode: "refresh_token")).then((value){
      _neverDuplicate = false;
      App.log.i("renewToken: $value");
      LocaleStorage().updateTokenBody(value);
      Client.addHeader('Authorization', '${value.tokenType?.capitalize()} ${value.accessToken}');
      return true;
    }
    ).catchError((e){
      _neverDuplicate = false;
      return false;
    });
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
}

// Bearer realm="42 API", error="invalid_grant", error_description="The provided authorization grant is invalid, expired, revoked, does not match the redirection URI used in the authorization request, or was issued to another client."
// Bearer realm="42 API", error="invalid_client", error_description="Client authentication failed due to unknown client, no client authentication included, or unsupported authentication method."