
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:touchable/touchable.dart';
import 'dart:math' as math;
import 'dart:ui' as ui;
import '../../../../data/models/project_data.dart';
import '../../../../data/models/user.dart';
import 'bottom_sheet.dart';

class GraphPainter extends CustomPainter {

  final List<ProjectData> projects;
  final BuildContext context;
  final WidgetRef ref;
  final StateProvider<ProjectData?> notifier;
  final User user;
  const GraphPainter({required this.projects, required this.context, required this.user, required this.ref, required this.notifier});

  void  drawCore(TouchyCanvas canvas){
    var dist = 167.0;
    var raduis = dist;
    var x = 3000.0;
    var y = 3000.0;
    var lst = projects.where((element) => element.kind == "exam").toList();
    var firstCore = true;
    for (var element in projects) {
     if(_dist(element).toInt() == 166 && element.kind != 'done'){
       firstCore = firstCore;
       break ;
     }
    }
    var paint = Paint();
    paint.style = PaintingStyle.stroke;
    paint.color = firstCore ? const Color(0xFF00bbbd) : const Color(0xFF707278);
    paint.strokeWidth = 8;
    if (lst.isNotEmpty)canvas.drawCircle(Offset(x, y), dist, paint,);
    lst.sort((a,b){
      return a.name!.compareTo(b.name!);
    });
    for (var value in lst) {
      var paint = Paint();
      paint.style = PaintingStyle.stroke;
      paint.color = const Color(0xFF707278);
      paint.strokeWidth = 8;
      switch (value.state!) {
        case 'done' : paint.color = const Color(0xFF00bbbd); break;
        default : paint.color = const Color(0xFF707278); break;
      }
      raduis += dist;
      canvas.drawCircle(Offset(x, y), raduis, paint,);
    }
  }

  void drawPiscine(ProjectData project, TouchyCanvas myCanvas, Canvas canvas){
    var paint = Paint();
    switch (project.state!) {
      case 'done' : paint.color = const Color(0xFF00bbbd); break;
      case 'fail' : paint.color = const Color(0xFFcc6256); break;
      default : paint.color = const Color(0xFF46484c); break;
    }
    var rect = Rect.fromCenter(center: Offset(project.x!, project.y!), width: 160, height: 70);
    myCanvas.drawRect(
        rect,
        paint,
        onTapDown: (_){
          ref.read(notifier.notifier).state = project;
        });
    switch (project.state){
      case "unavailable" : {
        var paint = Paint();
        paint..color = const Color(0xff707278)
          ..strokeWidth = 4
          ..style = PaintingStyle.stroke;
        myCanvas.drawRect(rect, paint);
        break;
      }
      case "available" : {
        var paint = Paint();
        paint..color = Colors.white
          ..strokeWidth = 11
          ..style = PaintingStyle.stroke;
        myCanvas.drawRect(rect, paint);
        break;
      }
    }
    _drawName( canvas, project, rect.width,);
  }

  void drawExam(ProjectData project, TouchyCanvas myCanvas, Canvas canvas){
    var paint = Paint();
    var rect = RRect.fromRectAndRadius(Rect.fromCenter(center: Offset(project.x!, project.y!), width: 160, height: 70), const Radius.circular(20));
    switch (project.state!) {
      case 'done' : paint.color = const Color(0xFF00bbbd); break;
      case 'fail' : paint.color = const Color(0xFFcc6256); break;
      default : paint.color = const Color(0xFF46484c); break;
    }
    myCanvas.drawRRect(
        rect, paint,
        onTapDown: (_){
          ref.read(notifier.notifier).state = project;
          // notif.update(project, glowColor!);
        }
    );
    switch (project.state){
      case "unavailable" : {
        var paint = Paint();
        paint..color = const Color(0xff707278)
          ..strokeWidth = 4
          ..style = PaintingStyle.stroke;
        myCanvas.drawRRect(rect, paint);
        break;
      }
      case "available" : {
        var paint = Paint();
        paint..color = Colors.white
          ..strokeWidth = 11
          ..style = PaintingStyle.stroke;
        myCanvas.drawRRect(rect, paint);
        break;
      }
    }
    _drawName(canvas, project, rect.width,);
  }
  void drawDefault(ProjectData project, TouchyCanvas myCanvas, Canvas canvas){
    var paint = Paint();
    var r = _raduis(project);
    switch (project.state!) {
      case 'done' : paint.color = const Color(0xFF00bbbd); break;
      case 'fail' : paint.color = const Color(0xFFcc6256); break;
      default : paint.color = const Color(0xFF46484c); break;
    }
    myCanvas.drawCircle(
        Offset(project.x!, project.y!), _raduis(project),
        paint,
        onTapDown: (_){
          ref.read(notifier.notifier).state = project;
          showModalBottomSheet(
              context: context,
              backgroundColor: Colors.transparent,
              builder: (_) => BottomSheetProject(project, user,));
        });
    switch (project.state){
      case "unavailable" : {
        var paint = Paint();
        paint..color = const Color(0xff707278)
          ..strokeWidth = 4
          ..style = PaintingStyle.stroke;
        myCanvas.drawCircle(Offset(project.x!, project.y!), _raduis(project), paint);
        break;
      }
      case "available" : {
        var paint = Paint();
        paint..color = Colors.white
          ..strokeWidth = 11
          ..style = PaintingStyle.stroke;
        myCanvas.drawCircle(Offset(project.x!, project.y!), _raduis(project), paint);
        break;
      }
    }
    _drawName(canvas, project, r * 2,);
  }


  void drawBg(Canvas canvas, Size size){
    var paint = Paint();
    paint.shader = ui.Gradient.radial(
        const Offset(3000, 3000), 0,
        [const Color(0xFF002534),const Color(0xFF090a0f)]
    );
    canvas.drawRect(Rect.fromPoints(const Offset(0, 0), Offset(size.width, size.height)), paint);
  }

  @override
  void paint(Canvas canvas, Size size) {
    glow(canvas);
    var myCanvas = TouchyCanvas(context,canvas);
    for(var project in projects){
      var paint = Paint()..strokeWidth = 11;
      paint.color = const Color(0xFF666666);
      for (var element in project.by!) {
        myCanvas.drawLine(Offset(element.points![0][0].toDouble(),element.points![0][1].toDouble()),
            Offset(element.points![1][0].toDouble(),element.points![1][1].toDouble()), paint);
      }
    }
    drawCore(myCanvas);
    for(var project in projects){
      switch (project.kind) {
        case 'exam' : drawExam(project, myCanvas, canvas); break;
        case 'piscine' : drawPiscine(project, myCanvas, canvas); break;
        default : drawDefault(project, myCanvas, canvas); break;
      }

    }
  }

  void glow(Canvas canvas){

    if (ref.watch(notifier) != null){
      var color = Colors.white;
      switch (ref.read(notifier)?.state!) {
        case 'done' : color = const Color(0xFF00bbbd); break;
        case 'fail' : color = const Color(0xFFcc6256); break;
        default : color = const Color(0xFF46484c); break;
      }
      var p = Paint()
        ..color= (color).withAlpha(500)
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, convertRadiusToSigma(300));
      canvas.drawCircle(Offset(ref.read(notifier)!.x!, ref.read(notifier)!.y!), 100, p);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

double convertRadiusToSigma(double radius) {
  return radius * 0.57735 + 0.5;
}
double _getFontSize(ProjectData project, double width){
  TextSpan span = TextSpan(style: const TextStyle(fontFamily: 'PtSans', fontSize: 20), text: project.name,);
  TextPainter tp = TextPainter(text: span, textAlign: TextAlign.center, textDirection: TextDirection.ltr, maxLines: 1,);
  tp.layout();
  var font = 20 * width / tp.width;
  if (tp.width < width) return 14;
  return font;
}

void _drawName(Canvas canvas, ProjectData project, double width){
  width = width - 20;
  var color = Colors.white;
  switch (project.state!) {
    case 'done' : color = Colors.white; break;
    case 'fail' : color = Colors.white; break;
    default : color = const Color(0xFF707278); break;
  }
  TextSpan span = TextSpan(style: TextStyle(color: color, fontFamily: 'PtSans', fontSize: _getFontSize(project, width)), text: project.name,);
  TextPainter tp = TextPainter(text: span, textAlign: TextAlign.center, textDirection: TextDirection.ltr, maxLines: 1,);
  tp.layout(minWidth: 0, maxWidth: width);
  tp.paint(canvas, Offset((project.x! - tp.width/2), (project.y! - tp.height/2)));
}

double _raduis(ProjectData project){
  var r = project.difficulty! * 51 / 462;
  if (r < 20) r  = 30;
  if (r > 50) r = 54;
  return r;
}

double _dist(ProjectData project){
  return math.sqrt(math.pow((project.x! - 3000), 2) + math.pow(project.y! - 3000, 2));
}