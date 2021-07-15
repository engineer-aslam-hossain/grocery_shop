import 'package:flutter/material.dart';
import 'package:grocery_shop/constant.dart';
import 'package:grocery_shop/screens/product/product_screen.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(kDefaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: kDefaultPadding * 2,
              ),
              Image.asset(
                'assets/images/all.png',
                fit: BoxFit.cover,
              ),
              Text(
                'Shop Your Daily \nNecessary',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ProductScreen()));
                },
                child: Text('Get Started'),
                style: ElevatedButton.styleFrom(
                  primary: kPrimaryColor,
                  padding: EdgeInsets.symmetric(
                    vertical: kDefaultPadding * .75,
                    horizontal: kDefaultPadding * 3,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
