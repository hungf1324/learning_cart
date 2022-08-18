import 'package:learning_cart/pages/cart_page/data/models/cart_item_model.dart';

class CartState {
  final Set<CartItemModel> productList;

  CartState({required this.productList});
}
