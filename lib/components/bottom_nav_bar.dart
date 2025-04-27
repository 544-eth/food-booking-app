import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white, // Background color
      padding: EdgeInsets.symmetric(vertical: 8), // Add padding for better UI
      child: GNav(
        // backgroundColor: Colors.white,
        color: Color.fromARGB(255, 133, 180, 213), // Inactive icon color
        activeColor: Color.fromARGB(255, 11, 33, 49), // Active icon color
        gap: 4, // Space between icon and text
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        tabBorderRadius: 16,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        tabBackgroundColor: Colors.blue.shade100, // Light blue background for active tab
        iconSize: 28, // Make icons a bit larger
        textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold), // Adjust text styling
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.lunch_dining_outlined,
            text: "Food",
            iconSize: 20,
            textStyle: TextStyle(fontSize: 11),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          ),

          GButton(
            icon: Icons.account_circle_rounded,
            text: "Profile",
            iconSize: 20,
            textStyle: TextStyle(fontSize: 11),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          ),

          GButton(
            icon: Icons.add_box_rounded,
            text: "Add",
            iconSize: 20,
            textStyle: TextStyle(fontSize: 11),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          ),

          GButton(
            icon: Icons.shopping_bag_sharp,
            text: "CheckOut",
            iconSize: 20,
            textStyle: TextStyle(fontSize: 11),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          ),
 
          GButton(
            icon: Icons.settings,
            text: "Settings",
            iconSize: 20,
            textStyle: TextStyle(fontSize: 11),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          ),
        ],
      ),
    );
  }
}
