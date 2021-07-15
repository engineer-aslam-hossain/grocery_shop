import 'package:flutter/material.dart';
import 'package:grocery_shop/constant.dart';
import 'package:grocery_shop/models/Categories.dart';
import 'package:grocery_shop/screens/category/category_screen.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Categories',
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                  demoCategory.length,
                  (index) => CategoryCard(
                    title: demoCategory[index].title!,
                    imageUrl: demoCategory[index].imageUrl!,
                    color: demoCategory[index].color!,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title, imageUrl;
  final Color color;

  CategoryCard({
    required this.title,
    required this.imageUrl,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        CategoryScreen.routeName,
        arguments: {'categoryName': title},
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          right: kDefaultPadding,
        ),
        child: Column(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                imageUrl,
              ),
            ),
            SizedBox(
              height: kDefaultPadding / 2,
            ),
            Text(
              title,
              style: TextStyle(
                color: Color(0xFF275A02),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
