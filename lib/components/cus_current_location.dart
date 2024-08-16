import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:food_delivery_app/models/resturant.dart";
import "package:provider/provider.dart";

class CusCurrentLocation extends StatelessWidget {
  const CusCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    final textController = TextEditingController();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Your Location"),
        content: TextField(
          controller: textController,
          decoration: const InputDecoration(hintText: "Enter address.."),
        ),
        actions: [
          //cancel button
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
              textController.clear();
            },
            child: const Text('Cancel'),
          ),
          //save button
          MaterialButton(
            onPressed: () {
              String newAddress = textController.text;
              context.read<Resturant>().updateDeliveryAddress(newAddress);
              Navigator.pop(context);
              textController.clear();
            },
            child: const Text('Save'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver now",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                //address
                Consumer<Resturant>(
                  builder: (context, resturant, child) => Text(
                      resturant.deliveryAddress,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.inversePrimary)),
                ),

                //drop down menu
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Theme.of(context).colorScheme.inversePrimary,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
