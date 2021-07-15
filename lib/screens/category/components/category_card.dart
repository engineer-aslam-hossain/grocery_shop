import 'package:flutter/material.dart';
import 'package:grocery_shop/constant.dart';
import 'package:grocery_shop/screens/item/item_details_screen.dart';

class CategoryCard extends StatelessWidget {
  final String title, imageUrl;
  final Color color;
  final double price;

  CategoryCard({
    required this.title,
    required this.imageUrl,
    required this.color,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, ItemDetailsScreen.routeName,
          arguments: {'name': title}),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color.withOpacity(.2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: color.withOpacity(.3),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              // padding: EdgeInsets.all(kDefaultPadding),
              width: double.infinity,
              height: 125,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Hero(
                    tag: '$title',
                    child: Image.asset(
                      imageUrl,
                      width: 80,
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 10,
                    child: Image.asset(
                      'assets/icons/heart.png',
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding / 2,
                vertical: kDefaultPadding / 2,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black.withOpacity(.7),
                    ),
                  ),
                  Text(
                    '\$$price',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
