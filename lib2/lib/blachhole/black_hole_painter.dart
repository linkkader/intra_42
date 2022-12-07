/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   painter.dart                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: linkkader <acouliba@student.1337.ma >      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/20 22:39:04 by linkkader         #+#    #+#             */
/*   Updated: 2022/11/27 15:58:26 by linkkader        ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:linkkader/blachhole/core/extensions/double_ext.dart';
import 'package:touchable/touchable.dart';
import 'dart:math' as math;
import 'dart:ui' as ui;
import 'bottom_sheet.dart';
import 'data/models/user.dart';
import 'data/models/user_2.dart';

class BlackHolePainter extends CustomPainter {
  static const dx = 20000.0;
  static const dy = 20000.0;

  final Map<int, List<User2>> items;
  final BuildContext context;
  final Map<String, ui.Image> images;
  final int animationValue;
  final Map<String, double> angleMap;
  final bool longPress;
  const BlackHolePainter(this.items, this.context, this.images, this.animationValue, this.angleMap, this.longPress);

  void drawCore(Canvas canvas, double radius){
    var paint = Paint();
    paint.style = PaintingStyle.stroke;
    paint.color = const Color(0xFF707278);
    paint.strokeWidth = 8;
    canvas.drawCircle(const Offset(dx, dy), radius, paint,);
  }

  @override
  Future<void> paint(Canvas canvas, Size size) async {
    var myCanvas = TouchyCanvas(context,canvas);
    var i = 0;
    for(var item in items.entries){
      i++;
      var radius = 360.0 * i;
      int j = 0;
      drawCore(canvas, radius);
      var angle = 360.0 / item.value.length;
      for (var element in item.value) {
        //animationValue
        angleMap[element.login] ??= j * angle;
        if (!longPress) {
          angleMap[element.login] = (1 / (i / 2)) + angleMap[element.login]!;
        }
        var a = angleMap[element.login]!.toRadians;
        // a = (angle * j + this.animationValue).toRadians;
        var x = radius * math.sin(a) + dx;
        var y = radius * math.cos(a) + dy;
        var paint = Paint();
        paint.color = Colors.red;
        drawImage(x, y, 100, element.img, canvas, myCanvas, angleMap[element.login]!.toRadians, element);
        j++;
      }
    }

  }

  ui.Image? getImg(String url) {
    if (images[url] == null && images["default"] != null) {
      return images["default"];
    }
    return images[url];
  }

  void drawImage(double x, double y, double size, String url, Canvas canvas, TouchyCanvas myCanvas, double angle, User2 value) {
    var paint = Paint();
    var img = getImg(url);
    if (img != null){
      //draw image
      final Size imageSize = Size(img.width.toDouble(), img.height.toDouble());
      var rect = Rect.fromCenter(center: Offset(x.toDouble(), y.toDouble()), width: size * 2, height: size * 2,);
      final FittedSizes sizes = applyBoxFit(BoxFit.cover, imageSize, Size(rect.width, rect.height));
      final Rect inputSubrect = Alignment.center.inscribe(sizes.source, Offset.zero & imageSize);
      final Rect outputSubrect = Alignment.center.inscribe(sizes.destination, rect);

      //rotate image
      canvas.save();
      canvas.translate(x.toDouble(), y.toDouble());
      canvas.rotate(-angle);
      canvas.translate(-x.toDouble(), -y.toDouble());
      canvas.drawImageRect(img, inputSubrect, outputSubrect, paint);
      canvas.restore();
      //rotate image
      myCanvas.drawCircle(Offset(x.toDouble(), y.toDouble()), size ,  paint..color = Colors.transparent, onTapUp: (details) {
        UserBottomSheet.show(value, context: context);
      });

      ///wtf
      // canvas.save();
      // canvas.translate(x, y);
      // canvas.rotate((angleMap.values.reduce(math.max) ?? 0).toRadians);
      // canvas.translate(-x, -y);
    }
  }


  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class Setting{
  double angle = 0;
}