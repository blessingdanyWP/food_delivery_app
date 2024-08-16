class Food {
  final String name; //Hyderbadi Biryani
  final String description; // Rice with Two pieces, brinjal curry and raita
  final String imagePath; // images
  final double price; // 299
  final FoodCategory category; // biryani
  List<Addon> availableAddons; // extra bread halwa
  Food(
      {required this.name,
      required this.description,
      required this.imagePath,
      required this.price,
      required this.category,
      required this.availableAddons});
}

// food categories
enum FoodCategory {
  Biryani,
  Starters,
  Roti,
  Desserts,
  Drinks,
}

//food addons
class Addon {
  String name;
  double price;

  Addon({required this.name, required this.price});
}
