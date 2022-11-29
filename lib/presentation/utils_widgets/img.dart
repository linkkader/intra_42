import 'dart:typed_data';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intra_42/data/locale_storage/locale_storage.dart';
import '../../data/api/client.dart' as client;

//todo: add retry
class Img extends StatelessWidget {
  final String url;
  final BoxFit fit;
  const Img(this.url,{Key? key, this.fit = BoxFit.cover}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // precachePicture(NetworkPicture(SvgPicture.svgByteDecoderBuilder, ), context)
    if (url.endsWith("svg")) {
      return FutureBuilder(
        future: LocaleStorage().img(url),
        builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return SvgPicture.network(url, fit: fit, colorBlendMode: BlendMode.color,);
          } else {
            return Container(
              color: Colors.black12,
            );
          }
        },
      );
    }
    return FutureBuilder(
        future: client.Client().byteImg(url),
        builder: (BuildContext context, AsyncSnapshot<Uint8List?> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return ExtendedImage.network(url, fit: fit, cache: true, loadStateChanged: (ExtendedImageState state) {
            return ExtendedImage.memory(snapshot.data!, fit: fit,);
          },);
        } else {
          return Container(
            color: Colors.black12,
          );
        }
    });
    return ExtendedImage.network(url, fit: fit, cache: true,);
  }
}
