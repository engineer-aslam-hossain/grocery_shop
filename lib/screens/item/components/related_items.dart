import 'package:flutter/material.dart';
import 'package:grocery_shop/constant.dart';
import 'package:grocery_shop/models/Products.dart';

class RelatedItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Related Items',
          style: Theme.of(context).textTheme.headline6!.copyWith(
                color: Color(0xFF2E6C00),
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(
          height: kDefaultPadding * 1.5,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => RelatedItemsCard(
                  product: demoProducts[index],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class RelatedItemsCard extends StatelessWidget {
  final Products product;

  RelatedItemsCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      padding: EdgeInsets.all(
        kDefaultPadding / 4,
      ),
      margin: EdgeInsets.only(right: kDefaultPadding),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.pink[50],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            product.imageUrl!,
            width: 70,
            height: 70,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 5,
              vertical: kDefaultPadding * .4,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Text(
                    product.title!,
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: kDefaultPadding,
                  ),
                  Text(
                    '\$${product.price}',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
