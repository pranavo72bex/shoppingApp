import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, id;
  final double quantity, rating;

  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.quantity,
    this.color,
    this.rating,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Apple",
      price: 234,
      quantity: 12,
      description: dummyText,
      image: "assets/products/apple.png",
      rating: 3.5,
      color: Color(0xFFEE5052)),
  Product(
      id: 2,
      title: "Avocado",
      price: 234,
      quantity: 8,
      description: dummyText,
      image: "assets/products/avocado.png",
      rating: 5,
      color: Color(0xFF486E25)),
  Product(
      id: 3,
      title: "Lemon",
      price: 234,
      quantity: 10,
      description: dummyText,
      image: "assets/products/lemon.png",
      rating: 4,
      color: Color(0xFFFDDF28)),
  Product(
      id: 4,
      title: "Mango",
      price: 234,
      quantity: 11,
      description: dummyText,
      image: "assets/products/mango.png",
      rating: 1,
      color: Color(0xFFDFA402)),
  Product(
      id: 5,
      title: "Orange",
      price: 234,
      quantity: 12,
      description: dummyText,
      image: "assets/products/orange.png",
      rating: 3,
      color: Color(0xFFF49A2F)),
  Product(
    id: 6,
    title: "Strawberry",
    price: 234,
    quantity: 12,
    description: dummyText,
    image: "assets/products/strawberry.png",
    rating: 4.5,
    color: Color(0xFFC7030B),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
