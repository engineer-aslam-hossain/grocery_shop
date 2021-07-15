import 'package:flutter/material.dart';
import 'package:grocery_shop/models/Products.dart';
import 'package:grocery_shop/screens/category/category_screen.dart';
import 'package:grocery_shop/screens/product/components/products_card.dart';

class TopProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Top Products',
                style: Theme.of(context).textTheme.headline5,
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  'See All',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
              itemCount: demoProducts.length,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                childAspectRatio: .75,
              ),
              itemBuilder: (ctx, indx) => ProductCard(
                title: demoProducts[indx].title!,
                imageUrl: demoProducts[indx].imageUrl!,
                isFav: demoProducts[indx].isFav!,
                backColor: demoProducts[indx].backColor!,
                price: demoProducts[indx].price!,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
