import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product(
      {required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.size,
      required this.id,
      required this.color});
}

List<Product> products = [
  /* Product(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_1.png",
      color: const Color(0xFF3D82AE)), */
  Product(
    id: 9,
    title: "jacket lether",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/jacket.jpg",
    color: const Color.fromARGB(255, 0, 0, 0),
  ),
  Product(
    id: 7,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_6.png",
    color: const Color(0xFFAEAEAE),
  ),
  Product(
      id: 3,
      title: "Hang Top",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/trouser2.jpg",
      color: const Color(0xFF989493)),
  Product(
      id: 4,
      title: "Old Fashion",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/bag_4.png",
      color: const Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_5.png",
      color: const Color(0xFFFB7883)),
  Product(
    id: 8,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_6.png",
    color: const Color(0xFFAEAEAE),
  ),
  Product(
    id: 6,
    title: "Tshirt ",
    price: 50,
    size: 12,
    description: dummyText,
    image: "assets/images/swetter.jpg",
    color: const Color.fromARGB(255, 255, 30, 30),
  ),
];

String dummyText =
    "ጫማዎች የእግር መሣሪያዎች ናቸው።ነሱ በተለያዩ እቅፎች እና የቀለም ይታወቃሉ።ጫማዎች በተለያዩ ዕድሜዎች የሚገኙ እና በዕድሜ ላይ ይሰሩ ይሆናሉ።";
