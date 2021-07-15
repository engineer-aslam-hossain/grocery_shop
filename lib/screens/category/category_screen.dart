import 'package:flutter/material.dart';
import 'package:grocery_shop/constant.dart';
import 'package:grocery_shop/models/Products.dart';
import './components/category_card.dart';

class CategoryScreen extends StatelessWidget {
  static const routeName = '/category_screen';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/icons/cart.png'),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
            vertical: kDefaultPadding / 2,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                args['categoryName'],
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(
                height: kDefaultPadding * 1.5,
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 40,
                    childAspectRatio: .9,
                  ),
                  itemCount: demoProducts.length,
                  itemBuilder: (ctx, index) => CategoryCard(
                    title: demoProducts[index].title!,
                    imageUrl: demoProducts[index].imageUrl!,
                    color: demoProducts[index].backColor!,
                    price: demoProducts[index].price!,
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
