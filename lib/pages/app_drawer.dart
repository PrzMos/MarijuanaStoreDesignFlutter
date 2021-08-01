import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              top: -50,
              right: -60,
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(160),
                  color: Colors.teal,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  Icons.close,
                  color: Colors.white.withOpacity(0.7),
                  size: 40,
                ),
              ),
            ),
            Positioned(
              bottom: -20,
              right: -30,
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(160),
                  color: Colors.lightGreen.shade200.withOpacity(0.8),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 40,
              child: TextButton(
                child: Text(
                  "Settings",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomDrawerItem("Flowers"),
                CustomDrawerItem("Seeds"),
                CustomDrawerItem("Ediables"),
                CustomDrawerItem("Pre Rolls"),
                CustomDrawerItem("Canabis Oils"),
                CustomDrawerItem("CBD Products"),
                CustomDrawerItem("Vaping"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 15.0,
      ),
      child: Container(
        width: double.infinity,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.teal.shade800,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
