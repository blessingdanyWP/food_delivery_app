import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/cus_drawertile.dart';
import 'package:food_delivery_app/pages/homepage.dart';
import 'package:food_delivery_app/pages/settingsPage.dart';
import 'package:food_delivery_app/services/auth/auth_services.dart';

class CusDrawer extends StatelessWidget {
  const CusDrawer({super.key});
  void logout() {
    final authService = AuthServices();
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: Column(
          children: [
            Icon(
              Icons.dinner_dining,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Divider(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            //home list tile
            cus_drawerTile(
              text: "H O M E",
              icon: Icons.home,
              onTap: () {
                Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Homepage(),
                    ));
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => Home(),
                //     ));
              },
            ),
            //Settings Tile
            cus_drawerTile(
              text: "S E T T I N G S",
              icon: Icons.home,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingsPage(),
                    ));
              },
            ),

            Spacer(),

            //Logout Tile

            cus_drawerTile(
              text: "L O G O U T",
              icon: Icons.home,
              onTap: logout,
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
