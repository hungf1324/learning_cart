import 'package:flutter/material.dart';
import 'package:learning_cart/pages/cart_page/components/cart_item.dart';
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
      itemCount: productList.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 7.5, horizontal: 20),
          child: CartItem(
            itemName: 'Item ${index + 1}',
            image: Image.network(
              'https://ae01.alicdn.com/kf/Hb21b378b136a4d0eb78489bf16fbb643e/Intel-Core-I9-12900K-ES-QXLB-1-2-GHz-8P-8E-16-Core-24-Ch.jpg_Q90.jpg_.webp',
            ),
            itemCount: 2,
            price: 200,
          ),
        );
      },
    );
  }
}
