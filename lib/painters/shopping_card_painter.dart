import 'package:flutter/material.dart';
import 'dart:math' as math;

class ShoppingCardPainter extends CustomPainter {
  final Color color;
  ShoppingCardPainter({this.color = Colors.white});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = color;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 2.0;

    double height = size.height;
    double width = size.width;

    Offset center = Offset(width / 2, height / 2);

    var handlingRect = Rect.fromCenter(
        center: Offset(center.dx, -center.dy + 5),
        width: width,
        height: height + 10);
    canvas.drawArc(handlingRect, math.pi, math.pi, false, paint);

    canvas.drawLine(Offset(center.dx - width + 5, center.dy - height),
        Offset(center.dx + width - 5, center.dy - height), paint);
    canvas.drawLine(Offset(center.dx - width + 5, center.dy - height - 1),
        Offset(center.dx - width, center.dy + height - 5), paint);
    canvas.drawLine(Offset(center.dx - width - 1, center.dy + height - 5),
        Offset(center.dx + width, center.dy + height - 5), paint);
    canvas.drawLine(Offset(center.dx + width, center.dy + height - 4),
        Offset(center.dx + width - 5, center.dy - height - 1), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
