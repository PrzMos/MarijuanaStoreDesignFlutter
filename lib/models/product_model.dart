import 'package:flutter/foundation.dart';
import 'package:marijuana_store_design_app/models/concurrency.dart';

class ProductModel {
  int id;
  String name;
  String location;
  double price;
  int categoryId;
  Category category;
  String image;
  Currency currency = Currency.USD;

  ProductModel({
    this.id,
    this.name,
    this.location,
    this.price,
    this.currency,
    this.image,
    this.categoryId,
  });
}
