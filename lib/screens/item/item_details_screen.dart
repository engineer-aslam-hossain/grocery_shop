import 'package:flutter/material.dart';
import 'package:grocery_shop/constant.dart';
import 'package:grocery_shop/models/Products.dart';
import 'package:grocery_shop/screens/item/components/items_card_details.dart';

class ItemDetailsScreen extends StatelessWidget {
  static const routeName = '/item_details_screen';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map;
    final item =
        demoProducts.firstWhere((element) => element.title == args['name']);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.pink[50],
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.pink[50],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              alignment: Alignment.center,
              child: Hero(
                tag: '${item.title}',
                child: Image.asset(
                  item.imageUrl!,
                  fit: BoxFit.fill,
                  height: 150,
                ),
              ),
            ),
            ItemDetailsCard(item),
          ],
        ),
      ),
    );
  }
}
