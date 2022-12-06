// Created by linkkader on 18/11/2022

import 'dart:async';
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
  static final ImageManager _instance = ImageManager._();
  ImageManager._();

  factory ImageManager() {
    return _instance;
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
          result[item] = await cropImage(data[item]!);
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
    var decode = await isolate.compute(cropImage, img);
    return decodeImageFromList(decode);
  }

  void decodeAll(Map<String, Uint8List> data, bool circle, Function(Map<String, ui.Image> images) onData) async {
    Map<String, ui.Image> images = {};
    App.log.d("Start decoding ${data.length} images");
    // data = {data.keys.first : data.values.first};
    // if (circle){
    //   data = await compute(cropImageMap, data);
    // }
    // App.log.d("decoding finished ${data.length} images");
    // for (var key in data.keys) {
    //   images[key] = await decodeImageFromList(data[key]!);
    // }
    for (var i = 0; i < data.length; i++) {
      Map<String, Uint8List>  newData = {};
      for(var key in data.keys.skip(i).take(10)) {
        newData[key] = data[key]!;
      }
      if (circle){
        newData = await compute(cropImageMap, newData);
      }
      for (var key in newData.keys) {
        images[key] = await decodeImageFromList(newData[key]!);
      }
      i += 10;
      onData(images.copy);
    }
  }

  Future fetchAllImage(List<String?> values, Function(Map<String, ui.Image> images) onData, {bool circle = false}) async {
    List<String> urls = [];
    Map<String, ui.Image> images = {};
    Map<String, Uint8List> data = {};
    try{
      await rootBundle.load('assets/img/default.png').then((value) async {
        var img = value.buffer.asUint8List();
        images['default'] = await decodeImage(img, circle);
        onData(images.copy);
      });
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