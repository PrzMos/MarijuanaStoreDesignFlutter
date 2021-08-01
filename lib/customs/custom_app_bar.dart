import 'package:flutter/material.dart';
import 'package:marijuana_store_design_app/customs/custom_back_button.dart';
import 'package:marijuana_store_design_app/customs/custom_drawer_button.dart';
import 'package:marijuana_store_design_app/painters/app_bar_painter.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key key, this.isBackButtonVisible = false})
      : super(key: key);

  final bool isBackButtonVisible;
  // final Key _drawerKey;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 40,
        padding: const EdgeInsets.only(right: 8.0, top: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            (isBackButtonVisible) ? CustomBackButton() : SizedBox(),
            CustomDrawerButton(),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100);
}
