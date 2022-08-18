import 'package:flutter/material.dart';
import 'package:learning_cart/pages/cart_page/components/cart_list.dart';
import 'package:learning_cart/pages/cart_page/components/checkout_pannel.dart';
import 'package:learning_cart/pages/cart_page/data/cart_state.dart';
import 'package:learning_cart/pages/cart_page/data/models/cart_item_model.dart';

class CartPage extends StatelessWidget {
  CartPage({Key? key}) : super(key: key);

  final cartState = CartState(productList: <CartItemModel>{});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
        centerTitle: false,
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 25),
            CartList(productList: cartState.productList),
            const SizedBox(height: 15),
          ],
        ),
      ),
      bottomNavigationBar: const CheckOutPannel(),
    );
  }
}
