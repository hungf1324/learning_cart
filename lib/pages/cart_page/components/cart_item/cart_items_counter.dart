import 'package:flutter/material.dart';

class CartItemsCounter extends StatefulWidget {
  const CartItemsCounter({
    Key? key,
    this.itemCount = 1,
  }) : super(key: key);

  final int itemCount;

  @override
  State<CartItemsCounter> createState() => _CartItemsCounterState();
}

class _CartItemsCounterState extends State<CartItemsCounter> {
  late int itemCount = widget.itemCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: onPressedMinusButton,
          icon: const Icon(
            Icons.remove,
            color: Colors.red,
          ),
        ),
        Card(
          elevation: 2.5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(itemCount.toString()),
          ),
        ),
        IconButton(
          onPressed: onPressedAddButton,
          icon: const Icon(
            Icons.add,
            color: Colors.green,
          ),
        ),
      ],
    );
  }

  void onPressedMinusButton() {
    setState(() {
      itemCount--;
      if (itemCount <= 0) itemCount = 1;
    });
  }

  void onPressedAddButton() {
    setState(() {
      itemCount++;
    });
  }
}
