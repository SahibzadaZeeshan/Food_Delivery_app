import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/UI/HomeScreens/HomeScreen.dart';
import 'package:food_delivery_app/addToCart.dart';
import 'package:food_delivery_app/order_screen/order_detail_screen.dart';
import 'package:food_delivery_app/profile_screen/profilescreen.dart';

import '../chat_screen/chat_screen_one.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int _currentPage = 0;
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          Homescreen(),
          ProfileScreen(),
         AddToCart(),
          ChatScreen(),
        ],
        onPageChanged: (index) {
          // Use a better state management solution
          // setState is used for simplicity
          setState(() => _currentPage = index);
        },
      ),
      bottomNavigationBar: BottomBar(
        selectedIndex: _currentPage,
        onTap: (int index) {
          _pageController.jumpToPage(index);
          setState(() => _currentPage = index);
        },
        items: <BottomBarItem>[
          BottomBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.green,
          ),
          BottomBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            activeColor: Colors.green,
          ),
          BottomBarItem(
            icon: Icon(Icons.notifications),
            title: Text('Add to Cart'),
            activeColor: Colors.green,
          ),
          BottomBarItem(
            icon: Icon(Icons.chat),
            title: Text('chat'),
            activeColor: Colors.green,
          ),
        ],
      ),
    );
    ;
  }
}
