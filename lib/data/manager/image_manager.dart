// Created by linkkader on 18/11/2022

import 'dart:ui' as ui;
import 'package:image/image.dart' as image;
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:intra_42/core/extensions/map_ext.dart';
import 'package:intra_42/data/api/client.dart';
import 'package:intra_42/main.dart';

class ImageManager {
  static final ImageManager _instance = ImageManager._();
  ImageManager._();

  factory ImageManager() {
    return _instance;
  }

  //todo: add retry
  Future fetchAllImage(List<String?> values, Function(Map<String, ui.Image> images) onData, {bool circle = false}) async {
    List<String> urls = [];
    Map<String, ui.Image> images = {};

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
      if (circle)
      {
        var crop = image.copyCropCircle(image.decodeImage(img)!);
        var im = await decodeImageFromList(Uint8List.fromList(image.encodePng(crop)));
        images[value] = im;
      }
      else {
        images[value] = await decodeImageFromList(img);
      }
      onData(images.copy);
    }
    for (var value in urls) {
      var img = await Client().byteImg(value);
      if (img == null) {
        continue;
      }
      if (circle)
      {
        var crop = image.copyCropCircle(image.decodeImage(img)!);
        var im = await decodeImageFromList(Uint8List.fromList(image.encodePng(crop)));
        images[value] = im;
      }
      else {
        images[value] = await decodeImageFromList(img);
      }
      onData(images.copy);
    }
  }
}