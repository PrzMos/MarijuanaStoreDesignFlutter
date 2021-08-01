import 'package:flutter/cupertino.dart';
import 'package:marijuana_store_design_app/models/product_model.dart';

class DetailPageModel {
  ProductModel productModel;
  int index;
  Color blurRadiusColor;

  DetailPageModel({
    this.productModel,
    this.index,
    this.blurRadiusColor,
  });
}
