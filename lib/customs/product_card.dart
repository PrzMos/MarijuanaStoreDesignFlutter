import 'package:flutter/material.dart';
import 'package:marijuana_store_design_app/customs/custom_app_bar.dart';
import 'package:marijuana_store_design_app/customs/stars_numer.dart';
import 'package:marijuana_store_design_app/models/product_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    @required this.cardColor,
    @required this.secondColor,
    @required this.blurRadiusColor,
    @required this.item,
    @required this.fontColor,
    @required this.index,
  }) : super(key: key);

  final Color cardColor;
  final Color secondColor;
  final Color blurRadiusColor;
  final ProductModel item;
  final Color fontColor;
  final int index;

  void _goToDetailsPage(BuildContext context, ProductModel item) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) {
          return SafeArea(
            child: Scaffold(
              appBar: CustomAppBar(
                isBackButtonVisible: true,
              ),
              body: Hero(
                tag: "product-detail $index",
                child: AnimatedContainer(
                  duration: Duration(
                    milliseconds: 200,
                  ),
                  child: Text(item.name),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "product-detail $index",
      child: GestureDetector(
        onTap: () => _goToDetailsPage(context, item),
        child: Container(
          width: 250,
          margin: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 15.0,
          ),
          decoration: BoxDecoration(
            color: Colors.teal,
            gradient: RadialGradient(colors: [
              cardColor,
              // Colors.teal.shade300,
              // Colors.teal[700],
              cardColor,
              secondColor,
            ]),
            borderRadius: BorderRadius.circular(130.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Stack(children: [
                    Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            offset: Offset.fromDirection(20.5, 20.0),
                            spreadRadius: 5.0,
                            color: blurRadiusColor,
                            blurRadius: 20.0,
                          ),
                        ], borderRadius: BorderRadius.circular(100)),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(item.image),
                          radius: 100,
                        )),
                    Positioned(
                      left: 130.0,
                      top: 110.0,
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0),
                          color: Colors.teal.shade100.withOpacity(0.9),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add_shopping_cart,
                            color: Colors.teal.shade900,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        StarsCounter(
                          fontColor: fontColor,
                          starsNumber: 5,
                        ),
                        CustomText(
                          text: item.location,
                          fontColor: fontColor,
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          fontSize: 14.0,
                        ),
                        CustomText(
                          text: item.name,
                          fontColor: fontColor,
                          alignment: Alignment.topLeft,
                          fontWeight: FontWeight.bold,
                          padding: EdgeInsets.only(top: 5.0, bottom: 10.0),
                          fontSize: 25,
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                "1 Oz / ${item.price}",
                                style: TextStyle(color: fontColor),
                              ),
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({
    Key key,
    @required this.text,
    @required this.fontColor,
    this.fontSize = 18.0,
    this.fontWeight = FontWeight.normal,
    this.alignment = Alignment.centerLeft,
    this.padding = EdgeInsets.zero,
  }) : super(key: key);

  final String text;
  final Color fontColor;
  final double fontSize;
  final FontWeight fontWeight;
  final Alignment alignment;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Padding(
        padding: padding,
        child: Text(
          text,
          style: TextStyle(
            color: fontColor,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
