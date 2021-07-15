import 'package:flutter/material.dart';
import 'package:grocery_shop/constant.dart';
import 'package:grocery_shop/screens/item/item_details_screen.dart';

class ProductCard extends StatelessWidget {
  final String title, imageUrl;
  final bool isFav;
  final Color backColor;
  final double price;

  ProductCard({
    required this.title,
    required this.imageUrl,
    required this.isFav,
    required this.backColor,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        ItemDetailsScreen.routeName,
        arguments: {'name': title},
      ),
      child: Container(
        margin: EdgeInsets.only(
          top: 45,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: backColor,
        ),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              top: -40,
              left: 5,
              child: Container(
                height: 120,
                width: 120,
                alignment: Alignment.center,
                child: Hero(
                  tag: '$title',
                  child: Image.asset(
                    imageUrl,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding / 2,
                  ),
                  margin: EdgeInsets.only(
                    top: 10,
                  ),
                  decoration: BoxDecoration(
                    color: backColor.withOpacity(.6),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$$price',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/icons/heart.png',
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
