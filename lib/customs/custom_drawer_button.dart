import 'package:flutter/material.dart';
import 'package:marijuana_store_design_app/painters/app_bar_painter.dart';

class CustomDrawerButton extends StatelessWidget {
  const CustomDrawerButton({Key key}) : super(key: key);

  void open(context) {
    Scaffold.of(context).openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => open(context),
      child: Container(
        width: 50.0,
        height: 20.0,
        child: CustomPaint(
          size: Size(20.0, 20.0),
          painter: AppBarPainter(),
        ),
      ),
    );
  }
}
