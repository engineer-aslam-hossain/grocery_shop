import 'package:flutter/material.dart';

class Products {
  final String? title, imageUrl;
  final bool? isFav;
  final Color? backColor;
  final double? price;

  Products({
    this.title,
    this.imageUrl,
    this.isFav,
    this.backColor,
    this.price,
  });
}

List<Products> demoProducts = [
  Products(
    title: 'Grapes',
    imageUrl: 'assets/images/grapes.png',
    isFav: false,
    backColor: Color(0xFFE3CEF3).withOpacity(.62),
    price: 2.50,
  ),
  Products(
    title: 'Tomato',
    imageUrl: 'assets/images/tomato1.png',
    isFav: false,
    backColor: Color(0xFFFFEAE8).withOpacity(.46),
    price: 2.50,
  ),
  Products(
    title: 'Drinks',
    imageUrl: 'assets/images/juice1.png',
    isFav: false,
    backColor: Color(0xFFBBD088).withOpacity(.39),
    price: 2.50,
  ),
  Products(
    title: 'Cauliflower',
    imageUrl: 'assets/images/kopi.png',
    isFav: false,
    backColor: Color(0xFF8CFA91).withOpacity(.16),
    price: 2.50,
  ),
];
