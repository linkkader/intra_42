// Created by linkkader on 7/9/2022

import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../main.dart';

extension ProviderExtension<T> on T {
  Provider<T> get futureProvider => Provider((ref) => this);
}

extension FutureProviderExtension on FutureProvider {

  Future<void> refresh(WidgetRef ref, {Object? error, StackTrace? stackTrace}) async {
    StreamSubscription? subscription;
    var connectivity = Connectivity();
    ref.refresh(this);
    //todo:need
    return;
    App.log.i("Connectivity: ${await connectivity.checkConnectivity()}");
    if(await connectivity.checkConnectivity() == ConnectivityResult.none){
      subscription = connectivity.onConnectivityChanged.listen((event) async {
        if (event != ConnectivityResult.none) {
          ref.refresh(this);
          subscription?.cancel();
        }
      });
    }
  }
}