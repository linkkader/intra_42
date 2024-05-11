// Created by linkkader on 7/9/2022

import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../main.dart';

extension ProviderExtension<T> on T {
  Provider<T> get futureProvider => Provider((ref) => this);
}

extension FutureProviderExtension on FutureProvider {


}