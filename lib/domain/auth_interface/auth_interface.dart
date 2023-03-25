// Created by linkkader on 9/11/2022

import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import '../../core/utils/pair.dart';
import '../../data/models/logtime.dart';

abstract class AuthInterface {
  Future signIn();
  Future signOut();
  Future<bool> updateCookies();
  Future<bool> isUserLoggedIn();
  Future<bool> validateCode(String code);
  Future<Pair<bool, String>> checkApiAccess(String endpoint, String redirectUrl, String clientId, String clientSecret);
  Future<bool> autoSign(String email, String password);
}