import 'package:flutter/material.dart';

class cus_drawerTile extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onTap;

  const cus_drawerTile(
      {super.key, required this.text, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: ListTile(
          title: Text(
            text,
            style:
                TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
          ),
          leading: Icon(
            icon,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          onTap: onTap),
    );
  }
}
