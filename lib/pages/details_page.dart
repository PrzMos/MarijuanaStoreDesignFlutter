import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:marijuana_store_design_app/customs/custom_app_bar.dart';
import 'package:marijuana_store_design_app/customs/custom_image.dart';
import 'package:marijuana_store_design_app/customs/product_card.dart';
import 'package:marijuana_store_design_app/customs/stars_numer.dart';
import 'package:marijuana_store_design_app/models/details_page_model.dart';
import 'package:marijuana_store_design_app/pages/app_drawer.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var arguments =
        ModalRoute.of(context).settings.arguments as DetailPageModel;
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          isBackButtonVisible: true,
        ),
        endDrawer: AppDrawer(),
        body: Container(
          child: Column(
            children: [
              CustomImage(
                imageUrl: arguments.productModel.image,
                backgroundColor: arguments.blurRadiusColor,
                imageRadius: 140,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 40, horizontal: 40),
                child: Column(
                  children: [
                    StarsCounter(
                      fontColor: Colors.teal[900],
                      starsNumber: 5,
                    ),
                    CustomText(
                      text: arguments.productModel.name,
                      fontColor: Colors.teal[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TypeContainer(
                            arguments.productModel.location,
                            "Type",
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          TypeContainer(
                            "generic",
                            "Genetics",
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              CustomText(
                padding: EdgeInsets.only(
                  left: 40.0,
                  right: 40.0,
                  top: 20.0,
                  bottom: 60.0,
                ),
                text: arguments.productModel.description ?? "",
                fontColor: Colors.teal.shade700,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          side: BorderSide(color: Colors.transparent),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          arguments.blurRadiusColor),
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 10.0,
                      ),
                      width: 120,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.backpack),
                          Text("Add To Bag"),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Container(
          margin: EdgeInsets.all(8.0),
          width: 80,
          height: 80,
          decoration: BoxDecoration(
              color: Colors.teal.shade800,
              borderRadius: BorderRadius.circular(100.0)),
          child: Icon(
            Icons.leave_bags_at_home,
            color: Colors.white60,
            size: 50,
          ),
        ),
      ),
    );
  }

  Container TypeContainer(String itemName, String title) {
    var color = Colors.black.withOpacity(0.1);
    return Container(
      child: Row(
        children: [
          SizedBox(
            height: 40,
            width: 1,
            child: Container(
              color: color,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  color: color.withOpacity(0.2),
                ),
              ),
              CustomText(
                text: itemName,
                fontColor: Colors.teal[900],
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
