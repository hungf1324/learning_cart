import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    Key? key,
    required this.itemName,
    required this.image,
    required this.price,
    this.itemCount = 1,
    this.onPressedDeleteButton,
    this.onPressedMinusButton,
    this.onPressedAddButton,
  }) : super(key: key);

  final String itemName;
  final Image image;
  final double price;
  final int itemCount;
  final Function()? onPressedDeleteButton;
  final Function()? onPressedMinusButton;
  final Function()? onPressedAddButton;

  @override
  Widget build(BuildContext context) {
    double subTotal = price * itemCount;
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      child: Container(
        height: 160,
        margin: const EdgeInsets.only(bottom: 3.0, right: 3.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 3.0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 150,
              height: 150,
              child: image,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          itemName,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(width: 10),
                      IconButton(
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                        onPressed: onPressedDeleteButton,
                      ),
                    ],
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Price:  ',
                      children: [
                        TextSpan(
                          text: '\$${price.toString()}',
                          style: const TextStyle(),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Sub Total:  ',
                      children: [
                        TextSpan(
                          text: '\$${subTotal.toString()}',
                          style: const TextStyle(
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Ships Free',
                        style: TextStyle(
                          color: Colors.orange,
                        ),
                      ),
                      Row(
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