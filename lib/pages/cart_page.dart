import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/cus_button.dart';
import 'package:food_delivery_app/components/cus_cart_tile.dart';
import 'package:food_delivery_app/models/resturant.dart';
import 'package:food_delivery_app/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Resturant>(
      builder: (context, resturant, child) {
        // cart
        final userCart = resturant.cart;

        //scaffold UI
        return Scaffold(
          appBar: AppBar(
            title: const Text("Cart"),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              //clear cart button
              IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text(
                            "Are you sure you want to clear the cart ?"),
                        actions: [
                          //cancel button
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text("Cancel"),
                          ),

                          //yes button
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              resturant.clearCart();
                            },
                            child: Text("Yes"),
                          ),
                        ],
                      ),
                    );
                  },
                  icon: const Icon(Icons.delete))
            ],
          ),
          body: Column(
            //list of cart
            children: [
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? const Expanded(
                            child: Center(child: const Text("Cart is Empty..")))
                        : Expanded(
                            child: ListView.builder(
                                itemCount: userCart.length,
                                itemBuilder: (context, index) {
                                  // get individual cart item
                                  final cartItem = userCart[index];

                                  //return cart tile UI
                                  return MyCartTile(cartItem: cartItem);
                                }),
                          )
                  ],
                ),
              ),

              //button to pay

              CusButton(
                text: "Go to Checkout",
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaymentPage(),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              )
            ],
          ),
        );
      },
    );
  }
}
