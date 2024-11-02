import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:itech/screens/cart_screen.dart';
import 'package:itech/screens/favorites_screen.dart';
import 'package:itech/screens/home_screen.dart';
import 'package:itech/screens/manage_user_screem.dart';
import 'package:itech/screens/profile_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int pageIndex = 0;

  List<Widget> pages = [
    const HomeScreen(),
    const CartScreen(),
    const ProfileScreen(),
    const InvoiceScreen(),
    const ManageUser(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: pageIndex,
          children: pages,
        ),
        floatingActionButton: SafeArea(
          child: FloatingActionButton(
            onPressed: () {},
            child:  const Icon(
              Icons.qr_code,
              size: 30,
              color: Colors.white,
            ),
            backgroundColor: const Color(0xFF4f4fda),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: const [
            CupertinoIcons.home,
            CupertinoIcons.shopping_cart,
            CupertinoIcons.person,
            CupertinoIcons.heart,
          ],
          inactiveColor: Colors.black.withOpacity(0.5),
          activeColor: const Color(0xFF4f4fda),
          splashColor: Colors.black,
          gapLocation: GapLocation.center, // Ubah lokasi celah ke ujung
          activeIndex: pageIndex,
          notchSmoothness: NotchSmoothness.softEdge,
          leftCornerRadius: 10,
          iconSize: 25,
          rightCornerRadius: 10,
          elevation: 0,
          onTap: (index) {
            setState(() {
              pageIndex = index;
            });
          },
        ));
  }
}
