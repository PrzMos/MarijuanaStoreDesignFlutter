import 'package:flutter/material.dart';
import 'package:marijuana_store_design_app/customs/custom_app_bar.dart';
import 'package:marijuana_store_design_app/customs/product_card.dart';
import 'package:marijuana_store_design_app/data/catergory_data.dart';
import 'package:marijuana_store_design_app/data/products_data.dart';
import 'package:marijuana_store_design_app/models/category_model.dart';
import 'package:marijuana_store_design_app/models/product_model.dart';

class HomePage extends StatefulWidget {
  final String title;
  HomePage({this.title, Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categoryList;
  List<ProductModel> productList;
  int selectedCategory = 0;

  @override
  void initState() {
    categoryList = CategoryData.categories;
    productList = ProductsData.products;
    super.initState();
  }

  void itemSelected(int index) {
    var category = categoryList[index];
    var categoryProducts = ProductsData.products
        .where((element) => element.categoryId == category.id)
        .toList();
    setState(() {
      selectedCategory = index;
      productList = categoryProducts;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        child: Column(
          children: [
            //Title
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: Text(
                    "Marijuana\nFlowers",
                    style: TextStyle(
                      color: Colors.teal[900],
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                    softWrap: true,
                  ),
                ),
              ],
            ),
            //Category List
            Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.only(
                    left: 25.0,
                    top: 0.0,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryList.length,
                  itemBuilder: (context, int index) {
                    var item = categoryList[index];
                    return Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                      child: TextButton(
                        onPressed: () => itemSelected(index),
                        child: Text(
                          item.name,
                          style: TextStyle(
                              fontWeight: (index == selectedCategory)
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              color: Colors.teal[900],
                              letterSpacing: 1.1),
                        ),
                      ),
                    );
                  }),
            ),
            //Item List
            Flexible(
              flex: 8,
              child: ListView.builder(
                  padding: EdgeInsets.only(left: 20.0),
                  scrollDirection: Axis.horizontal,
                  itemCount: productList?.length,
                  itemBuilder: (context, int index) {
                    var item = productList[index];
                    var fontColor = Colors.white;
                    var cardColor = index % 2 == 0
                        ? Color.fromRGBO(76, 130, 134, 1)
                        : Color.fromRGBO(182, 209, 184, 1);

                    var secondColor = index % 2 == 0
                        ? Color.fromRGBO(79, 133, 138, 1)
                        : Color.fromRGBO(189, 214, 190, 1);

                    var blurRadiusColor = index % 2 == 0
                        ? Color.fromRGBO(49, 115, 118, 1)
                        : Color.fromRGBO(151, 185, 157, 1);
                    return ProductCard(
                        cardColor: cardColor,
                        index: index,
                        secondColor: secondColor,
                        blurRadiusColor: blurRadiusColor,
                        item: item,
                        fontColor: fontColor);
                  }),
            ),
            //Offset Button
            Flexible(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
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
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
