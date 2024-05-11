// Created by linkkader on 7/11/2022

import 'package:flutter/cupertino.dart';

class Bullet extends StatelessWidget {
  final Color? color;
  final double? size;
  final Widget? child;
  const Bullet({this.color, this.child, this.size = 14, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '•',
          style: TextStyle(fontSize: size, color: color),
        ),
        const SizedBox(width: 5),
        child ?? Container()
      ],
    );
  }
}
