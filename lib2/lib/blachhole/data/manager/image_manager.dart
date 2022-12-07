// Created by linkkader on 18/11/2022

import 'dart:math';
import 'dart:ui' as ui;
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:image/image.dart' as image;
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:isolated_worker/isolated_worker.dart';
import 'package:linkkader/blachhole/core/extensions/map_ext.dart';
import 'package:linkkader/blachhole/core/utils/pair.dart';
import 'package:linkkader/blachhole/core/utils/task_runner.dart';
import 'package:linkkader/blachhole/data/api/client.dart';

import '../../../worker.dart';

class ImageManager {
  static final ImageManager _instance = ImageManager._();
  ImageManager._();

  factory ImageManager() {
    return _instance;
  }


  Future<ui.Image> crop(List<int> img) async {

// /    var crop = image.copyCropCircle(image.decodeImage(img)!);
//     var im = await decodeImageFromList(Uint8List.fromList(image.encodePng(crop)));
//     images['default'] = im;


    // return decode;
    var crop = image.copyCropCircle(image.decodeImage(img)!);
    return await decodeImageFromList(Uint8List.fromList(image.encodePng(crop)));
    var decode = await decodeImageFromList(Uint8List.fromList(img));
    // a.data;
    // Image.memory(a.data)
    var cropSize = min(decode.width, decode.height);
    int offsetX = (decode.width - min(decode.width, decode.height)) ~/ 2;
    int offsetY = (decode.height - min(decode.width, decode.height)) ~/ 2;
    // var crop = image.copyCrop(
    //     image.decodeImage(img)!,
    //     offsetX, offsetY,
    //     cropSize,
    //     cropSize
    // );
    return await decodeImageFromList(Uint8List.fromList(image.encodePng(crop)));
    return decode;
    //
    // final imageBytes = decodedImage(img)!;
    // image.
    //
    // image.Image cropOne = copyCrop(
    //   decode,
    //   offsetX,
    //   offsetY,
    //   cropSize,
    //   cropSize,
    // );
    //
    // return decodedImage;

    // final imageBytes = image.decodeImage(File(images!.path).readAsBytesSync())!;


    // return decodeImageFromList(Uint8List.fromList(img));
    // var crop = image.copyCropCircle(image.decodeImage(img)!);
    // var im = await decodeImageFromList(Uint8List.fromList(image.encodePng(crop)));
    // return im;
  }

  // todo: add retry
  Future fetchAllImage(List<String?> values, Function(Map<String, ui.Image> images) onData, {bool circle = false}) async {
    List<String> urls = [];
    Map<String, ui.Image> images = {};
    var runner2 = TaskRunner<Pair<String, Uint8List>>(
      (item, p1) async {
        images[item.first] = await decodeImageFromList(await WorkerManager().cropImage(item.second));
        onData(images.copy);
      },maxConcurrentTasks: 50
    );
    try{
      await rootBundle.load('assets/img/default.png').then((value) async {
        var img = value.buffer.asUint8List();
        if (circle)
        {
          var crop = image.copyCropCircle(image.decodeImage(img)!);
          var im = await decodeImageFromList(Uint8List.fromList(image.encodePng(crop)));
          images['default'] = im;
        }
        else {
          images["default"] = await decodeImageFromList(img);
        }
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
      ()async{
        runner2.add(Pair(value, img));
      }();
    }
    var runner = TaskRunner<String>(maxConcurrentTasks: 20,(item, p1) async {
      var img = await Client().byteImg(item);
      if (img == null) {
        return;
      }
      images[item] = await decodeImageFromList(await WorkerManager().cropImage(img));
      onData(images.copy);
    });
    runner.addAll(urls);
  }

}