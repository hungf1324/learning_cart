import 'package:flutter/material.dart';
import 'package:learning_cart/pages/cart_page/components/cart_item/components/cart_item_price_detail.dart';
import 'package:learning_cart/pages/cart_page/components/cart_item/components/cart_item_titled.dart';
import 'package:learning_cart/pages/cart_page/components/cart_item/components/cart_items_counter.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    Key? key,
    required this.itemName,
    required this.image,
    required this.price,
    this.itemCount = 1,
    this.borderRadius = const BorderRadius.all(Radius.circular(20)),
    this.onPressedDeleteButton,
  }) : super(key: key);

  final String itemName;
  final Image image;
  final double price;
  final int itemCount;
  final BorderRadius? borderRadius;
  final Function()? onPressedDeleteButton;

  @override
  Widget build(BuildContext context) {
    double subTotal = price * itemCount;
    return ClipRRect(
      borderRadius: borderRadius,
      child: Container(
        margin: const EdgeInsets.only(bottom: 3.0, right: 3.0),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 3.0,
            ),
          ],
          borderRadius: borderRadius,
        ),
        child: Row(
          children: [
            SizedBox(
              width: 155,
              height: 140,
              child: image,
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CartItemTitled(
                    itemName: itemName,
                    onPressedDeleteButton: onPressedDeleteButton,
                  ),
                  CartItemPriceDetail(
                    price: price,
                    subTotal: subTotal,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Ships Free',
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 18,
                        ),
                      ),
                      CartItemsCounter(
                        itemCount: itemCount,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
