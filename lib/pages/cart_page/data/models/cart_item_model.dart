import 'package:flutter/material.dart';

class CartItemModel {
  final String name;
  final Image image;
  final double price;
  final int count;

  double get subTotal => price * count;

  CartItemModel({
    required this.name,
    required this.image,
    required this.price,
    this.count = 1,
  });
}
