import 'package:flutter/cupertino.dart';
import 'package:marijuana_store_design_app/painters/back_button_painter.dart';

class CustomBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: CustomPaint(
        painter: BackButtonPainter(),
        size: Size(20, 20),
      ),
    );
  }
}
