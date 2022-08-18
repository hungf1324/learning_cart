import 'package:flutter/material.dart';
import 'package:learning_cart/pages/cart_page/components/cart_item/cart_item.dart';
import 'package:learning_cart/pages/cart_page/data/models/cart_item_model.dart';

class CartList extends StatelessWidget {
  const CartList({
    Key? key,
    required this.productList,
  }) : super(key: key);

  final Set<CartItemModel> productList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: CartItem(
            itemName: 'Item ${index + 1}',
            image: Image.network(
              "https://i0.wp.com/www.giztechreview.com/wp-content/uploads/2021/10/Intel-12th-Generation-Core-i9-12900K-Processor-Unboxing-9.jpg",
              fit: BoxFit.fill,
            ),
            itemCount: 2,
            price: 200,
          ),
        );
      },
    );
  }
}
