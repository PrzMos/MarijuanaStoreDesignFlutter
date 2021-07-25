import 'package:flutter/material.dart';

class StarsCounter extends StatelessWidget {
  const StarsCounter({
    Key key,
    @required this.fontColor,
    @required this.starsNumber,
  }) : super(key: key);

  final Color fontColor;
  final int starsNumber;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 20,
        child: ListView.builder(
            itemCount: starsNumber,
            padding: EdgeInsets.all(0.0),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, int index) {
              return Icon(
                Icons.star,
                color: fontColor,
                size: 10.0,
              );
            }),
      ),
    );
  }
}
