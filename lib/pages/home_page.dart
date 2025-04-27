import 'package:flutter/material.dart';
import 'package:food_booking_app/components/bottom_nav_bar.dart';
import 'package:food_booking_app/pages/add_page.dart';
import 'package:food_booking_app/pages/cart_page.dart';
import 'package:food_booking_app/pages/kitchen_page.dart';
import 'package:food_booking_app/pages/posting_page.dart';
import 'package:food_booking_app/pages/settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // this selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  // this method will update our seleted index
  // when the user taps on the bottom bar
  void navigateBottombar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages to display
  final List<Widget> _pages = [
    // Home page
    const PostingPage(),
    // Kitchen page
    const KitchenPage(),
    // Add page
    const AddPage(),
    // Cart page
    const CartPage(),
    // Settings
    const SettingsButton(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottombar(index),
      ),

      appBar: AppBar(
        backgroundColor:  Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
                icon: const Icon(Icons.menu_rounded),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 11, 33, 49),
        child: Column(
          children: [
            // Logo
           DrawerHeader(
              margin: EdgeInsets.zero, // Remove extra spacing
              padding: EdgeInsets.zero, // Remove internal padding
              decoration: BoxDecoration(
                color: Colors.grey.shade900, // Match drawer background
              ),
              // ClipRect(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
                children: [
                  Image.asset(
                    'assets/cook.png',
                  
                    fit: BoxFit.contain, // Prevents stretching
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child:  Divider(
                color: Colors.transparent,
              ),
            ),

            const Padding(
              padding:  EdgeInsets.only(left: 24.0),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "HOME",
                  style: TextStyle(color: Colors.white),
                  ),
              ),
            ),

            const Padding(
              padding:  EdgeInsets.only(left: 24.0),
              child: ListTile(
                leading: Icon(
                  Icons.post_add,
                  color: Colors.white,
                ),
                title: Text(
                  "Post",
                  style: TextStyle(color: Colors.white),
                  ),
              ),
            ),

            const Padding(
              padding:  EdgeInsets.only(left: 24.0),
              child: ListTile(
                leading: Icon(
                  Icons.info_sharp,
                  color: Colors.white,
                ),
                title: Text(
                  "About Us",
                  style: TextStyle(color: Colors.white),
                  ),
              ),
            ),

            const Padding(
              padding:  EdgeInsets.only(left: 24.0),
              child: ListTile(
                leading: Icon(
                  Icons.login_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(color: Colors.white),
                  ),
              ),
            ),


            
          ],
        )
      ),
      body: _pages[_selectedIndex],
    );
  }
}
