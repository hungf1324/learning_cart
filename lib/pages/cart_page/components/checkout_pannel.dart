import 'package:flutter/material.dart';

class CheckOutPannel extends StatelessWidget {
  const CheckOutPannel({
    Key? key,
    this.onPressedCheckOutButton,
  }) : super(key: key);

  final Function()? onPressedCheckOutButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Checkout Price:',
                ),
                // Spacer(),
                Text('Rs. 5000'),
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: onPressedCheckOutButton,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Checkout',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}