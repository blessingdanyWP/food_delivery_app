import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CusDescriptionBox extends StatelessWidget {
  const CusDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var myPrimaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.inversePrimary
    );
    var mySecondaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary
    );

    return  Container(
      padding:EdgeInsets.all(25),
      margin: EdgeInsets.only(right: 25, bottom: 25, left: 25),
      decoration: BoxDecoration(border: Border.all(
        color: Theme.of(context).colorScheme.secondary
      ),
      borderRadius: BorderRadius.circular(8)
      ),
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //delivery fee
          Column(children: [
            Text("Rs 59.00", style: myPrimaryTextStyle,),
            Text("Delivery fees",style: mySecondaryTextStyle,),
            ],),

          //delivery time
           Column(children: [
            Text("20-40 min", style: myPrimaryTextStyle,),
            Text("Delivery time",style: mySecondaryTextStyle,),
            ],),

        ],
      ),
    );
  }
}