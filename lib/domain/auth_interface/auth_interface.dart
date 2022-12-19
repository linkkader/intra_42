// Created by linkkader on 9/11/2022

import '../../core/utils/pair.dart';
import '../../data/models/logtime.dart';

abstract class AuthInterface {
  Future signIn();
  Future signOut();
  Future<bool> updateCookies();
  Future<bool> isUserLoggedIn();
  Future<bool> validateCode(String code);
  Future<Pair<bool, String>> checkApiAccess(String endpoint, String redirectUrl, String clientId, String clientSecret);
}