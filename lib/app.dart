import 'package:flutter/material.dart';
import 'package:marijuana_store_design_app/home.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'Flutter Demo Home Page'),
      // routes: [
      //   "home" (context) => HomePage(),
      // ]
    );
  }
}
