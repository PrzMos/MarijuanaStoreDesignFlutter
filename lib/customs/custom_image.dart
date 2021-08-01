import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final Color backgroundColor;
  final String imageUrl;
  final double imageRadius;
  const CustomImage(
      {@required this.imageUrl,
      @required this.backgroundColor,
      this.imageRadius = 100,
      Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            offset: Offset.fromDirection(20.5, 20.0),
            spreadRadius: 5.0,
            color: backgroundColor,
            blurRadius: 20.0,
          ),
        ], borderRadius: BorderRadius.circular(100)),
        child: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
          radius: imageRadius,
        ),
      ),
    );
  }
}
