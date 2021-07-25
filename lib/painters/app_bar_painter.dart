import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.strokeWidth = 2.3;
    paint.color = Colors.teal.shade900;
    canvas.drawLine(Offset(-10, 10), Offset(10.0, 10), paint);
    canvas.drawLine(Offset(-14, 16), Offset(6.0, 16), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
