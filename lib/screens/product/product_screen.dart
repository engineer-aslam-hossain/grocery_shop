import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:grocery_shop/constant.dart';
import 'package:grocery_shop/screens/product/components/categories.dart';
import 'package:grocery_shop/screens/product/components/search_container.dart';
import 'package:grocery_shop/screens/product/components/top_products.dart';

class ProductScreen extends StatefulWidget {
  static const routeName = '/product_screen';

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      bottomNavigationBar: bottomNavBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchContainer(),
            Categories(),
            TopProducts(),
          ],
        ),
      ),
    );
  }

  CurvedNavigationBar bottomNavBar() {
    return CurvedNavigationBar(
      backgroundColor: kPrimaryColor,
      height: 50,
      items: <Widget>[
        Image.asset(
          'assets/icons/home.png',
          color: _selectedIndex == 0 ? kPrimaryColor : Colors.grey,
        ),
        Image.asset(
          'assets/icons/heart.png',
          color: _selectedIndex == 1 ? kPrimaryColor : Colors.grey,
        ),
        Image.asset(
          'assets/icons/noti.png',
          color: _selectedIndex == 2 ? kPrimaryColor : Colors.grey,
        ),
        Image.asset(
          'assets/icons/user.png',
          color: _selectedIndex == 3 ? kPrimaryColor : Colors.grey,
        ),
      ],
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: IconButton(
        onPressed: () {},
        icon: Image.asset('assets/icons/menu.png'),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Image.asset('assets/icons/cart.png'),
        ),
      ],
    );
  }
}
