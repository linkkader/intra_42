
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:touchable/touchable.dart';
import 'dart:ui' as ui;
import '../../../../data/models/cluster_item.dart';
import '../../../../data/models/empty_cluster.dart';
import '../../bottom_sheet.dart';

class ClusterPainter extends CustomPainter {

  final List<EmptyCluster> items;
  final Map<String,ClusterItem> maps;
  final BuildContext context;
  final Map<String, ui.Image> images;
  const ClusterPainter(this.items, this.maps, this.context, this.images);

  @override
  Future<void> paint(Canvas canvas, Size size) async {
    var myCanvas = TouchyCanvas(context,canvas);
    var paint = Paint();
    for (var item in items) {
      if (item.isText) {
        _drawText(canvas, item);
      } else {
        paint..color = const Color(0xFFcccccd)
          ..strokeWidth = 1
          ..style = PaintingStyle.stroke;
        myCanvas.drawRect(Rect.fromCenter(center: Offset(item.x.toDouble(), item.y.toDouble()), width: item.width.toDouble(), height: item.height.toDouble()), paint,);
        drawImage(item, canvas, myCanvas);
      }
    }
  }

  ui.Image? getImg(String? url) {
    if (images[url] == null && images["default"] != null) {
      return images["default"];
    }
    return images[url];
  }

  void drawImage(EmptyCluster item, Canvas canvas, TouchyCanvas myCanvas){
    if (maps[item.id] != null){
      var paint = Paint();
      var img = getImg(maps[item.id]!.cdnUri);
      if (img != null){
        final Size imageSize = Size(img.width.toDouble(), img.height.toDouble());
        var rect = Rect.fromCenter(center: Offset(item.x.toDouble(), item.y.toDouble()), width: item.width.toDouble(), height: item.height.toDouble());
        final FittedSizes sizes = applyBoxFit(BoxFit.cover, imageSize, rect.size);
        final Rect inputSubrect = Alignment.center.inscribe(sizes.source, Offset.zero & imageSize);
        final Rect outputSubrect = Alignment.center.inscribe(sizes.destination, rect);
        canvas.drawImageRect(img, inputSubrect, outputSubrect, paint);
        myCanvas.drawRect(Rect.fromCenter(center: Offset(item.x.toDouble(), item.y.toDouble()), width: item.width.toDouble(), height: item.height.toDouble()), Paint()..color = Colors.transparent,
            onTapDown: ((details) async{
              UserBottomSheet.show(null, login: maps[item.id]!.login, context: context);
            })
        );
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

void _drawText(Canvas canvas, EmptyCluster item){
  if (item.id.contains('R')){
    TextSpan span = TextSpan(style: const TextStyle(color: Color(0xFFcccccd), overflow: TextOverflow.ellipsis,
        fontFamily: 'helve', fontSize: 22), text: item.id, );
    TextPainter tp = TextPainter(
      text: span, textAlign: TextAlign.center,
      textDirection: TextDirection.ltr, maxLines: 1,
    );
    tp.layout();
    tp.paint(canvas, Offset(item.x.toDouble(), item.y.toDouble() - tp.height));
  }else{
    TextSpan span = TextSpan(style: const TextStyle(color: Color(0xFFcccccd), overflow: TextOverflow.ellipsis, fontFamily: 'helve', fontSize: 44), text: item.id, );
    TextPainter tp = TextPainter(text: span, textAlign: TextAlign.center, textDirection: TextDirection.ltr, maxLines: 1, );
    tp.layout();
    tp.paint(canvas, Offset(item.x.toDouble(), item.y.toDouble() - tp.height));
  }
}
