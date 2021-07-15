import 'package:flutter/material.dart';

class CategoryDetails {
  final String? title, imageUrl;
  final Color? color;

  CategoryDetails({this.title, this.imageUrl, this.color});
}

List<CategoryDetails> demoCategory = [
  CategoryDetails(
    title: 'Fruits',
    imageUrl: 'assets/images/fruits.png',
    color: Color(0xFFA9B2A9).withOpacity(.06),
  ),
  CategoryDetails(
    title: 'Vegetables',
    imageUrl: 'assets/images/tomato.png',
    color: Color(0xFFE9FFD2).withOpacity(.71),
  ),
  CategoryDetails(
    title: 'Drinks',
    imageUrl: 'assets/images/juice.png',
    color: Color(0xFF8CAF35).withOpacity(.24),
  ),
  CategoryDetails(
    title: 'IceCream',
    imageUrl: 'assets/images/ice_cream.png',
    color: Color(0xFFD6FFDA).withOpacity(.41),
  ),
  CategoryDetails(
    title: 'Bekary',
    imageUrl: 'assets/images/bakery.png',
    color: Color(0xFFFFFACC).withOpacity(.47),
  ),
];
