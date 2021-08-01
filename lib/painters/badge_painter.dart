import 'package:flutter/material.dart';

class BadgePainter extends CustomPainter {
  final Offset center;
  final double radius;
  final String text;

  BadgePainter(
    this.center,
    this.radius,
    this.text,
  );

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill;
    canvas.drawCircle(center, radius, paint);
    final textStyle = TextStyle(
      color: Colors.black,
      fontSize: 16,
    );
    final textSpan = TextSpan(
      text: text,
      style: textStyle,
    );
    TextPainter tp = TextPainter(
        text: textSpan,
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr);
    tp.layout(minWidth: 0, maxWidth: center.dx);
    tp.paint(canvas, Offset(center.dx - 5, center.dy - 10));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    var oldPainter = oldDelegate as BadgePainter;
    return text != oldPainter.text;
  }
}
