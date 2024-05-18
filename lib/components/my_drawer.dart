import 'package:flutter/material.dart';
import 'package:food_buzz/components/my_drawer_title.dart';
import 'package:food_buzz/components/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // ignore: deprecated_member_use
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          // App Logo
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          // Home List
          MyDrawerTitle(
            text: "H O M E",
            icon: Icons.home, // Fixed icon reference
            onTap: () => Navigator.pop(context),
          ),
          // Setting List
          MyDrawerTitle(
            text: "S E T T I N G S",
            icon: Icons.settings, // Fixed icon reference
            onTap: () {
              // Define the onTap functionality here
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ),
              );
            },
          ),

          const Spacer(),

          //Logout Part
          MyDrawerTitle(
            text: "L O G O U T",
            icon: Icons.logout, // Fixed icon reference
            onTap: () {
              // Define the onTap functionality here
            },
          ),
          const SizedBox(height: 25),
          // Add more drawer items here if needed
        ],
      ),
    );
  }
}
