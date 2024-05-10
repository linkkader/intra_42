// Created by linkkader on 9/11/2022

abstract class AuthInterface {
  Future signIn();
  Future signOut();
  Future<bool> updateCookies();
  Future<bool> isUserLoggedIn();
  Future<bool> validateCode(String code);
}