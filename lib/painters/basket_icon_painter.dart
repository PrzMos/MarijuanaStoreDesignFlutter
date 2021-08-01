import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class BasketIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.strokeCap = StrokeCap.square;
    paint.strokeJoin = StrokeJoin.bevel;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 2.0;
    paint.color = Colors.teal;

    // var rect = Rect.fromPoints(Offset(-20, -20), Offset(20, 20));
    // canvas.drawRect(rect, paint);
    double l1 = -12;
    double l2 = 12;
    double endingLine = 2;

    var rect = Rect.fromPoints(Offset(l1, l2), Offset(l1, l2));

    canvas.drawLine(Offset(l1, l1), Offset(l2, l1), paint);
    canvas.drawLine(Offset(l1, l1), Offset(l1, l2), paint);
    canvas.drawLine(Offset(l2, l1), Offset(l2, endingLine), paint);
    canvas.drawLine(Offset(l1, l2), Offset(endingLine, l2), paint);

    size = Size(12, 20);

    var rectne = Rect.fromCenter(
        center: Offset(0, -8), width: size.width, height: size.height);
    canvas.drawArc(rectne, math.pi, math.pi, false, paint);

    double horizontalPoint = 6;
    double verticalPoint = 6;
    canvas.drawLine(Offset(horizontalPoint, verticalPoint + 5),
        Offset(horizontalPoint + 10, verticalPoint + 5), paint);
    canvas.drawLine(Offset(verticalPoint + 5, verticalPoint),
        Offset(verticalPoint + 5, verticalPoint + 10), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
