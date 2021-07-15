import 'package:flutter/material.dart';
import 'package:grocery_shop/constant.dart';
import 'package:grocery_shop/models/Products.dart';
import 'package:grocery_shop/screens/item/components/related_items.dart';

class ItemDetailsCard extends StatelessWidget {
  final Products item;

  ItemDetailsCard(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                item.title!,
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black12,
                    width: 1,
                  ),
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        child: Icon(
                          Icons.add,
                          color: Colors.black54,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding * .4,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          color: Color(0xFFC4C4C4).withOpacity(.2),
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        '2',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      width: 30,
                      alignment: Alignment.center,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        child: Icon(
                          Icons.remove,
                          color: Colors.black54,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          color: Color(0xFFC4C4C4).withOpacity(.2),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding * .4,
                          vertical: 3,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Text(
            '\$${item.price} /kg',
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 18,
                ),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Text(
            'Tometo is It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution.',
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  height: 1.5,
                  color: Colors.black45,
                ),
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          RelatedItems(),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Add to Cart',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                primary: kPrimaryColor,
                padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding * 3,
                  vertical: kDefaultPadding * .75,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
