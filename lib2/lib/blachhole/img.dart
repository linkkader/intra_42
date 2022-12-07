import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class Img extends StatelessWidget {
  final String url;
  final BoxFit fit;
  const Img(this.url,{Key? key, this.fit = BoxFit.cover}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedImage.network(url, fit: fit, cache: true,);
  }
}
