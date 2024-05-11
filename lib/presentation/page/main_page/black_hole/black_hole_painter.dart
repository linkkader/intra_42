import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intra_42/core/extensions/double_ext.dart';
import 'package:intra_42/data/models/user_2.dart';
import 'package:intra_42/presentation/page/bottom_sheet.dart';
import 'package:riverpod/src/state_controller.dart';
import 'package:touchable/touchable.dart';
import 'dart:math' as math;
import 'dart:ui' as ui;
import '../../../../core/utils/pair.dart';
import '../../../../data/models_izar/black_hole.dart';
import '../../../../data/models_izar/user_isar.dart';

class BlackHolePainter extends CustomPainter {
  static const dx = 20000.0;
  static const dy = 20000.0;

  final List<Pair<int, List<User2>>>  items;
  final BuildContext context;
  final Map<String, ui.Image> images;
  final int animationValue;
  final Map<String, double> angleMap;
  final bool longPress;
  final double speed;
  const BlackHolePainter(this.items, this.context, this.images, this.animationValue, this.angleMap, this.longPress, this.speed);

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
    for(var item in items){
      i++;
      var radius = 360.0 * i;
      int j = 0;
      drawCore(canvas, radius);
      var angle = 360.0 / item.second.length;
      for (var element in item.second) {
        //animationValue
        angleMap[element.login!] ??= j * angle;
        if (!longPress) {
          angleMap[element.login!] = (speed / 3 / (i / 2)) + angleMap[element.login!]!;
        }
        var a = angleMap[element.login!]!.toRadians;
        // a = (angle * j + this.animationValue).toRadians;
        var x = radius * math.sin(a) + dx;
        var y = radius * math.cos(a) + dy;
        var paint = Paint();
        paint.color = Colors.red;
        try{
          drawImage(x, y, 100, canvas, myCanvas, angleMap[element.login!]!.toRadians, element);
        }catch(_){}
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

  void drawImage(double x, double y, double size, Canvas canvas, TouchyCanvas myCanvas, double angle, User2 value) {
    var paint = Paint();
    var img = getImg(value.img!);
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
      myCanvas.drawCircle(Offset(x.toDouble(), y.toDouble()), size * 2, paint..color = Colors.transparent, onTapUp: (details) {
        UserBottomSheet.show(null, login: value.login!, context: context);
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