import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackButtonPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.strokeWidth = 2.0;
    paint.color = Colors.teal.shade900;

    canvas.drawLine(Offset(10, 10), Offset(30, 10), paint);
    canvas.drawLine(Offset(10, 10), Offset(17, 5), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
