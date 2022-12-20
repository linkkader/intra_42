// Created by linkkader on 18/11/2022

import 'dart:async';
import 'dart:isolate';
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:image/image.dart' as image;
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:intra_42/core/extensions/map_ext.dart';
import 'package:intra_42/data/api/client.dart';
import 'package:flutter/src/foundation/isolates.dart' as isolate;
import 'package:intra_42/main.dart';
import '../../core/utils/pair.dart';
import '../../core/utils/task_runner.dart';

class ImageManager {
  int computeCount = 0;
  final Map<int, Function(Uint8List)> _callbacks = {};
  late final SendPort _sendPort;
  ui.Image? _default ;
  bool _isInit = false;
  static final ImageManager _instance = ImageManager._();
  ImageManager._();

  factory ImageManager() {
    return _instance;
  }


  Future init() async {
    assert(!_isInit, "ImageManager is already initialized");
    await _createIsolate();
    _isInit = true;
  }

  Future _createIsolate() async{
    var receivePort = ReceivePort();
    Completer<SendPort> completer = Completer();
    await Isolate.spawn((SendPort sendPort) async {
      ReceivePort receivePort = ReceivePort();
      sendPort.send(receivePort.sendPort);
      receivePort.listen((message) async {
        try{
          var data = message as Pair<int, Uint8List>;
          var newData = await cropImage(data.second);
          sendPort.send(Pair(data.first, newData));
        }catch(_){
          App.log.e(_);
        }
      });
    }, receivePort.sendPort);
    receivePort.listen((message) {
      if (message is Pair<int, Uint8List>) {
        _callbacks[message.first]!(message.second);
        _callbacks.remove(message.first);
      }
      if (message is SendPort) {
        completer.complete(message);
      }
    });
    _sendPort = await completer.future;
  }

  Future<Uint8List> decodeIsolate(Uint8List data) async {
    var completer = Completer<Uint8List>();
    var id = UniqueKey().hashCode;
    _callbacks[id] = (Uint8List data) => completer.complete(data);
    _sendPort.send(Pair(id,  data));
    return completer.future;
  }

  Future<Uint8List> cropImage(Uint8List data) async {
    var crop = image.copyCropCircle(image.decodeImage(data)!);
    return Uint8List.fromList(image.encodePng(crop));
  }

  Future<Map<String, Uint8List> > cropImageMap(Map<String, Uint8List> data) async {
    Map<String, Uint8List> result = {};
    var completer = Completer<Map<String, Uint8List>>();
    var runner = TaskRunner<String>(
      (item, runner) async{
        try{
          result[item] = await decodeIsolate(data[item]!);
        }catch(_){}
        if(runner.isLast) completer.complete(result);
      },maxConcurrentTasks: data.length
    );
    runner.addAll(data.keys);
    return completer.future;
  }

  Future<ui.Image> decodeImage(Uint8List img, bool circle) async {
    if (circle == false){
      return await decodeImageFromList(img);
    }
    var decode = await decodeIsolate(img);
    return decodeImageFromList(decode);
  }

  void decodeAll(Map<String, Uint8List> data, bool circle, Function(Map<String, ui.Image> images) onData) async {
    Map<String, ui.Image> images = {};
    for (var i = 0; i < data.length; ) {
      Map<String, Uint8List>  newData = {};
      for(var key in data.keys.skip(i).take(10)) {
        newData[key] = data[key]!;
      }
      if (circle){
        newData = await cropImageMap(newData);
      }
      for (var key in newData.keys) {
        images[key] = await decodeImageFromList(newData[key]!);
      }
      i += 10;
      onData(images.copy);
    }
  }

  //todo need protect to many isolate crash
  Future fetchAllImage(List<String?> values, Function(Map<String, ui.Image> images) onData, {bool circle = false}) async {
    List<String> urls = [];
    Map<String, ui.Image> images = {};
    Map<String, Uint8List> data = {};
    try{
      if (_default == null){
        await rootBundle.load('assets/img/default.png').then((value) async {
          var img = value.buffer.asUint8List();
          images['default'] = await decodeImage(img, circle);
          onData(images.copy);
        });
      }
      else{
        images['default'] = _default!;
        onData(images.copy);
      }
    }catch(_){}
    for (var value in values) {
      if (value == null){
        continue;
      }
      var img = await Client().byteImg(value, storageOnly: true);
      if (img == null) {
        urls.add(value);
        continue;
      }
      data[value] = img;
    }
    decodeAll(data, circle, onData);
    var runner = TaskRunner<String>(maxConcurrentTasks: 20,(item, p1) async {
      var img = await Client().byteImg(item);
      if (img == null) {
        return;
      }
      images[item] = await decodeImage(img, circle);
      onData(images.copy);
    });
    runner.addAll(urls);
  }

  //todo: add retry
  // Future fetchAllImage(List<String?> values, Function(Map<String, ui.Image> images) onData, {bool circle = false}) async {
  //   List<String> urls = [];
  //   Map<String, ui.Image> images = {};
  //
  //   try{
  //     await rootBundle.load('assets/img/default.png').then((value) async {
  //       var img = value.buffer.asUint8List();
  //       if (circle)
  //       {
  //         var crop = image.copyCropCircle(image.decodeImage(img)!);
  //         var im = await decodeImageFromList(Uint8List.fromList(image.encodePng(crop)));
  //         images['default'] = im;
  //       }
  //       else {
  //         images["default"] = await decodeImageFromList(img);
  //       }
  //       onData(images.copy);
  //     });
  //   }catch(_){}
  //
  //   for (var value in values) {
  //     if (value == null){
  //       continue;
  //     }
  //     var img = await Client().byteImg(value, storageOnly: true);
  //     if (img == null) {
  //       urls.add(value);
  //       continue;
  //     }
  //     if (circle)
  //     {
  //       var crop = image.copyCropCircle(image.decodeImage(img)!);
  //       var im = await decodeImageFromList(Uint8List.fromList(image.encodePng(crop)));
  //       images[value] = im;
  //     }
  //     else {
  //       images[value] = await decodeImageFromList(img);
  //     }
  //     onData(images.copy);
  //   }
  //   for (var value in urls) {
  //     var img = await Client().byteImg(value);
  //     if (img == null) {
  //       continue;
  //     }
  //     if (circle)
  //     {
  //       var crop = image.copyCropCircle(image.decodeImage(img)!);
  //       var im = await decodeImageFromList(Uint8List.fromList(image.encodePng(crop)));
  //       images[value] = im;
  //     }
  //     else {
  //       images[value] = await decodeImageFromList(img);
  //     }
  //     onData(images.copy);
  //   }
  // }
}