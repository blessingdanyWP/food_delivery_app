import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Resturant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    //Biryani
    //1
    Food(
        name: "Chicken Biryani",
        description:
            "This biryani comes with two pieces of chicken, raita, gravy and is cooked in our freshly prepared spice blend. it is moderately spicy.",
        imagePath: "lib/images/biryani/3.png",
        price: 299.00,
        category: FoodCategory.Biryani,
        availableAddons: [
          Addon(name: "Coke", price: 45.00),
          Addon(name: "Bread Halwa", price: 90.00),
          Addon(name: "Egg", price: 10.00),
        ]),

    //2
    Food(
        name: "Aloo Dum Biryani",
        description:
            "Chunks of potatoes marinated and cooked in our freshly made spice blend are topped on this biryani. it is moderately spicy.",
        imagePath: "lib/images/biryani/2.png",
        price: 299.00,
        category: FoodCategory.Biryani,
        availableAddons: [
          Addon(name: "Coke", price: 45.00),
          Addon(name: "Bread Halwa", price: 90.00),
          Addon(name: "Egg", price: 10.00),
        ]),

    //3
    Food(
        name: "Chicken Boneless Biryani",
        description:
            "We use long grain basmati rice, and the boneless pieces of chicken are cooked in our own andra spice blend. it is spicy. ",
        imagePath: "lib/images/biryani/4.png",
        price: 299.00,
        category: FoodCategory.Biryani,
        availableAddons: [
          Addon(name: "Coke", price: 45.00),
          Addon(name: "Bread Halwa", price: 90.00),
          Addon(name: "Egg", price: 10.00),
        ]),

    //4

    Food(
        name: "Chicken Biryani",
        description: "Rice with Two pieces, brinjal curry and raita",
        imagePath: "lib/images/biryani/5.png",
        price: 299.00,
        category: FoodCategory.Biryani,
        availableAddons: [
          Addon(name: "Coke", price: 45.00),
          Addon(name: "Bread Halwa", price: 90.00),
          Addon(name: "Egg", price: 10.00),
        ]),

    //5
    Food(
        name: "Ambur Dum Biryani",
        description:
            "Traditional Ambur style chicken briyani, cooked with hand grounded spices and jeera samba rice in low flame to make it juicy and aromatic. Served with Raita and Brinjal curry.",
        imagePath: "lib/images/biryani/1.png",
        price: 299.00,
        category: FoodCategory.Biryani,
        availableAddons: [
          Addon(name: "Coke", price: 45.00),
          Addon(name: "Bread Halwa", price: 90.00),
          Addon(name: "Egg", price: 10.00),
        ]),

    //Chicken Starters
    Food(
        name: "Grilled Chicken",
        description:
            "Grilled Chicken [Half] with 4 Parotta and Pepsi Soft Beverage [750 ml]",
        imagePath: "lib/images/Chicken_Starters/2.jpg",
        price: 299.00,
        category: FoodCategory.Starters,
        availableAddons: [
          Addon(name: "Coke", price: 45.00),
          Addon(name: "Bread Halwa", price: 90.00),
          Addon(name: "Egg", price: 10.00),
        ]),

    //2
    Food(
        name: "Fried Chicken",
        description:
            "4pc Hot & crispy chicken, 6 Pc Wings, 4 Chicken Peri Peri Boneless strips,",
        imagePath: "lib/images/Chicken_Starters/3.jpg",
        price: 299.00,
        category: FoodCategory.Starters,
        availableAddons: [
          Addon(name: "Coke", price: 45.00),
          Addon(name: "Bread Halwa", price: 90.00),
          Addon(name: "Egg", price: 10.00),
        ]),

    //3
    Food(
        name: "Barbeque Chicken",
        description:
            "Barbecue chicken is grilled with a tangy, smoky barbecue sauce, offering a juicy, flavorful bite with a caramelized, charred finish.",
        imagePath: "lib/images/Chicken_Starters/1.jpg",
        price: 299.00,
        category: FoodCategory.Starters,
        availableAddons: [
          Addon(name: "Coke", price: 45.00),
          Addon(name: "Bread Halwa", price: 90.00),
          Addon(name: "Egg", price: 10.00),
        ]),

    //4

    Food(
        name: "Al Faham Chicken",
        description:
            "Al Fahm chicken is marinated in a blend of spices and herbs, then grilled over charcoal for a smoky, tender, and flavorful result.",
        imagePath: "lib/images/Chicken_Starters/4.png",
        price: 299.00,
        category: FoodCategory.Starters,
        availableAddons: [
          Addon(name: "Coke", price: 45.00),
          Addon(name: "Bread Halwa", price: 90.00),
          Addon(name: "Egg", price: 10.00),
        ]),

    //5
    Food(
        name: "Chicken Kabab",
        description:
            "Classic Kabab Magic Kabab features marinated chicken pieces cooked in a rich masala, delivering a bold, flavorful taste with a tender, juicy bite.",
        imagePath: "lib/images/Chicken_Starters/5.png",
        price: 299.00,
        category: FoodCategory.Starters,
        availableAddons: [
          Addon(name: "Coke", price: 45.00),
          Addon(name: "Bread Halwa", price: 90.00),
          Addon(name: "Egg", price: 10.00),
        ]),

    //desserts
    Food(
        name: "Kit Kat Delight",
        description:
            "Satiate your sweet tooth cravings with this inconspicuously good dessert that's dulcified with fresh strawberries.",
        imagePath: "lib/images/desserts/2.jpg",
        price: 299.00,
        category: FoodCategory.Desserts,
        availableAddons: [
          Addon(name: "Coke", price: 45.00),
          Addon(name: "Bread Halwa", price: 90.00),
          Addon(name: "Egg", price: 10.00),
        ]),

    //2
    Food(
        name: "Strawberry Ecstacy",
        description:
            "Satiate your sweet tooth cravings with this inconspicuously good dessert that's dulcified with fresh strawberries.",
        imagePath: "lib/images/desserts/4.png",
        price: 299.00,
        category: FoodCategory.Desserts,
        availableAddons: [
          Addon(name: "Coke", price: 45.00),
          Addon(name: "Bread Halwa", price: 90.00),
          Addon(name: "Egg", price: 10.00),
        ]),

    //3
    Food(
        name: "Red Velvet",
        description:
            "An eggless construction of layers of red velvet goodness, carefully layered with vanilla cream and infused with vanilla essence makes for the perfect red velvet pastry",
        imagePath: "lib/images/desserts/1.png",
        price: 299.00,
        category: FoodCategory.Desserts,
        availableAddons: [
          Addon(name: "Coke", price: 45.00),
          Addon(name: "Bread Halwa", price: 90.00),
          Addon(name: "Egg", price: 10.00),
        ]),

    //4

    Food(
        name: "Chocolate CupCake",
        description:
            "Chocolate Jar Cakes - indulgent layers of rich chocolate goodness topped with a patriotic poster",
        imagePath: "lib/images/desserts/1.jpg",
        price: 299.00,
        category: FoodCategory.Desserts,
        availableAddons: [
          Addon(name: "Coke", price: 45.00),
          Addon(name: "Bread Halwa", price: 90.00),
          Addon(name: "Egg", price: 10.00),
        ]),

    //5
    Food(
        name: "Kit Kat Delight",
        description:
            "Satiate your sweet tooth cravings with this inconspicuously good dessert that's dulcified with fresh strawberries.",
        imagePath: "lib/images/desserts/2.jpg",
        price: 299.00,
        category: FoodCategory.Desserts,
        availableAddons: [
          Addon(name: "Coke", price: 45.00),
          Addon(name: "Bread Halwa", price: 90.00),
          Addon(name: "Egg", price: 10.00),
        ]),

    //drinks
    Food(
        name: "Rose Mojito",
        description:
            "blended with Dry Fruit. Allergens : Dairy Nutritional information : Kcal(g):287, Protein(g): 25, Carbohydrate(g): 29, Fat (g):8",
        imagePath: "lib/images/drinks/1.jpg",
        price: 299.00,
        category: FoodCategory.Drinks,
        availableAddons: [
          Addon(name: "Coke", price: 45.00),
          Addon(name: "Bread Halwa", price: 90.00),
          Addon(name: "Egg", price: 10.00),
        ]),

//2
    Food(
        name: "Chocolate Coffe",
        description:
            "Classic lassi churned with mango pulp. Allergens : Dairy Nutritional information : Kcal(g):195, Protein(g): 14, Carbohydrate(g): 29, Fat (g):3",
        imagePath: "lib/images/drinks/2.png",
        price: 299.00,
        category: FoodCategory.Drinks,
        availableAddons: [
          Addon(name: "Coke", price: 45.00),
          Addon(name: "Bread Halwa", price: 90.00),
          Addon(name: "Egg", price: 10.00),
        ]),

    //3
    Food(
        name: "Lassi",
        description:
            "The perfect thirst quencher, get our tangy nimbu pani mixed with cooling spices (250ml)",
        imagePath: "lib/images/drinks/3.png",
        price: 299.00,
        category: FoodCategory.Drinks,
        availableAddons: [
          Addon(name: "Coke", price: 45.00),
          Addon(name: "Bread Halwa", price: 90.00),
          Addon(name: "Egg", price: 10.00),
        ]),

    //4

    Food(
        name: "Double Lemon",
        description:
            "Made fresh with the king of fruits, the perfect Summer Cooler. Contains : NA. Energy : 226 Kcal (300 ml).",
        imagePath: "lib/images/drinks/4.png",
        price: 299.00,
        category: FoodCategory.Drinks,
        availableAddons: [
          Addon(name: "Coke", price: 45.00),
          Addon(name: "Bread Halwa", price: 90.00),
          Addon(name: "Egg", price: 10.00),
        ]),

    //5
    Food(
        name: "Strawbery mix",
        description:
            "A rose-flavoured refreshing drink that is the perfect accompaniment to choose. Contains : NA. Energy : 270 Kcal (300 ml).",
        imagePath: "lib/images/drinks/5.png",
        price: 299.00,
        category: FoodCategory.Drinks,
        availableAddons: [
          Addon(name: "Coke", price: 45.00),
          Addon(name: "Bread Halwa", price: 90.00),
          Addon(name: "Egg", price: 10.00),
        ]),

    //Roti
    Food(
        name: "Aloo Paratha",
        description:
            "Branded multi grain atta used to prepare phulka. Curd and salt added in the dough for softness.",
        imagePath: "lib/images/roti/1.jpg",
        price: 299.00,
        category: FoodCategory.Roti,
        availableAddons: [
          Addon(name: "Coke", price: 45.00),
          Addon(name: "Bread Halwa", price: 90.00),
          Addon(name: "Egg", price: 10.00),
        ]),

    //2
    Food(
        name: "Malabar Parota",
        description:
            "A generous coating of pure cow ghee applied on one side. Wheat phulka. Curd and salt added in the dough for softness.",
        imagePath: "lib/images/roti/2.jpeg",
        price: 299.00,
        category: FoodCategory.Roti,
        availableAddons: [
          Addon(name: "Coke", price: 45.00),
          Addon(name: "Bread Halwa", price: 90.00),
          Addon(name: "Egg", price: 10.00),
        ]),

    //3
    Food(
        name: "Phulka",
        description:
            "Malai paneer stuffed cheese-filled, fresh-herb paratha. Best enjoyed with our signature mixed pickle, sweet mango Chunda, ",
        imagePath: "lib/images/roti/3.jpg",
        price: 299.00,
        category: FoodCategory.Roti,
        availableAddons: [
          Addon(name: "Coke", price: 45.00),
          Addon(name: "Bread Halwa", price: 90.00),
          Addon(name: "Egg", price: 10.00),
        ]),

    //4

    Food(
        name: "Aloo Roti",
        description:
            "Branded multi grain atta used to prepare phulka. Curd and salt added in the dough for softness",
        imagePath: "lib/images/roti/4.png",
        price: 299.00,
        category: FoodCategory.Roti,
        availableAddons: [
          Addon(name: "Coke", price: 45.00),
          Addon(name: "Bread Halwa", price: 90.00),
          Addon(name: "Egg", price: 10.00),
        ]),

    //5
    Food(
        name: "Butter Nan",
        description:
            "Molten cheese and scrumptious eggs sandwiched between layers of delicious paratha with a tang. ",
        imagePath: "lib/images/roti/1.jpg",
        price: 299.00,
        category: FoodCategory.Roti,
        availableAddons: [
          Addon(name: "Coke", price: 45.00),
          Addon(name: "Bread Halwa", price: 90.00),
          Addon(name: "Egg", price: 10.00),
        ]),
  ];

  ///User cart
  final List<CartItem> _cart = [];

  //delivery address (which user can change/update)
  String _deliveryAddress = '100 Brigade road Bangalore';

  /// Getters
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  String get deliveryAddress => _deliveryAddress;

  ////Operations
  ///
  ///
  ///

  //add to cart

  void addToCart(Food food, List<Addon> selectAddons) {
    //see if there is cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check if the food items are the same
      bool isSameFood = item.food == food;
      //check if the list of selected addons are the same

      bool isSameAddons =
          ListEquality().equals(item.selectAddons, selectAddons);

      return isSameFood && isSameAddons;
    });
    //if item already exists, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    //otherwise, add new cart item to the cart
    else {
      _cart.add(CartItem(food: food, selectAddons: selectAddons));
    }

    notifyListeners();
  }
  //remove from cart

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }

    notifyListeners();
  }

  //get total price of cart
  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  //get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }
  //clear cart

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

// update Delivery address

  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  ///helpers

  //generate a receipt
  String displayCartReciept() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your recipt");
    receipt.writeln();

    //format the date to include upt to seconds only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("-----------------------------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_fomatPrice(cartItem.food.price)}");
      if (cartItem.selectAddons.isNotEmpty) {
        receipt.writeln("     Add-ons: ${_fomatAddons(cartItem.selectAddons)}");
      }
      receipt.writeln();
    }

    receipt.writeln("------------------------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_fomatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivering to : $deliveryAddress");

    return receipt.toString();
  }

  // format double value into money
  String _fomatPrice(double price) {
    return "₹ ${price.toStringAsFixed(2)}";
  }

  // format list of  adddons inta a string summary
  String _fomatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} ${_fomatPrice(addon.price)}")
        .join(",");
  }
}
