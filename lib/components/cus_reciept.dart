import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/resturant.dart';
import 'package:provider/provider.dart';

class CusReciept extends StatelessWidget {
  const CusReciept({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 25, bottom: 2, top: 50),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Thank You for your order!"),
            const SizedBox(
              height: 25,
            ),
            Container(
              decoration: BoxDecoration(
                border:
                    Border.all(color: Theme.of(context).colorScheme.secondary),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(25),
              child: Consumer<Resturant>(
                builder: (context, resturant, child) =>
                    Text(resturant.displayCartReciept()),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text("Estimated delivery time is: 4:10 PM")
          ],
        ),
      ),
    );
  }
}
