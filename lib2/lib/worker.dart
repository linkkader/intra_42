// Created by linkkader on 27/11/2022

import 'dart:async';
import 'dart:html';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';

class WorkerManager {
  final Map<int, Function(MessageEvent)> _listeners = {};
  static final WorkerManager _instance = WorkerManager._();
  var myWorker = Worker('worker.js');
  WorkerManager._();

  factory WorkerManager() {
    return _instance;
  }

  WorkerManager init() {
    myWorker.onMessage.listen((event) {
      for(var i in _listeners.keys){
        if (event.data is List){
          for(var j in event.data){
            if(i == j){
              _listeners[i]!(event);
            }
          }
        }
      }
    });
    // myWorker.onMessage.listen((event) {
    //   print("new event");
    //   print(event.data);
    // });
    // var data = await Client().byteImg("https://cdn.intra.42.fr/users/43cb54a519c75efaf81dd607b2b89990/small_nforay.jpg");
    // myWorker.postMessage(["crop", data!]);
    return this;
  }

  Future<Uint8List> cropImage(Uint8List data) async {
    var completer = Completer<Uint8List>();
    var currentId = UniqueKey().hashCode;
    _listeners[currentId] = (event) {
      completer.complete(event.data[0]);
    };
    myWorker.postMessage(["crop", data, currentId]);
    var img = await completer.future;
    _listeners.remove(currentId);
    return img;
  }

}