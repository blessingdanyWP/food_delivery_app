import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/cus_current_location.dart';
import 'package:food_delivery_app/components/cus_descriptionBox.dart';
import 'package:food_delivery_app/components/cus_drawer.dart';
import 'package:food_delivery_app/components/cus_food_tile.dart';
import 'package:food_delivery_app/components/cus_silver_app_bar.dart';
import 'package:food_delivery_app/components/cus_tab_bar.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/models/resturant.dart';
import 'package:food_delivery_app/pages/food_page.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  /// tab controller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  ///sort out and return a list of food items that belong to specific category
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  /// return list of foods in given category
  List<Widget> getFoodInTHisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      //get category menu

      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);
      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          //get individual food
          final food = categoryMenu[index];
          //retun food tile
          return FoodTile(
              food: food,
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FoodPage(food: food))));
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: CusDrawer(),
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  CusSilverAppBar(
                    title: CusTabBar(
                      tabController: _tabController,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(
                          indent: 25,
                          endIndent: 25,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        // my current Location
                        CusCurrentLocation(),

                        // description
                        CusDescriptionBox(),
                      ],
                    ),
                  ),
                ],
            body: Consumer<Resturant>(
              builder: (context, resturant, child) => TabBarView(
                controller: _tabController,
                children: getFoodInTHisCategory(resturant.menu),
              ),
            )));
  }
}
