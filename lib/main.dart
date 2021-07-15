import 'package:flutter/material.dart';
import 'package:grocery_shop/constant.dart';
import 'package:grocery_shop/screens/category/category_screen.dart';
import 'package:grocery_shop/screens/home/home_screen.dart';
import 'package:grocery_shop/screens/item/item_details_screen.dart';
import 'package:grocery_shop/screens/product/product_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
            bodyText1: TextStyle(color: kTextColor.withOpacity(.6)),
            headline5: TextStyle(
              color: kPrimaryColor,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            )),
      ),
      home: HomeScreen(),
      routes: {
        HomeScreen.routeName: (ctx) => HomeScreen(),
        ProductScreen.routeName: (ctx) => ProductScreen(),
        CategoryScreen.routeName: (ctx) => CategoryScreen(),
        ItemDetailsScreen.routeName: (ctx) => ItemDetailsScreen(),
      },
    );
  }
}
