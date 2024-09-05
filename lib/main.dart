import 'package:flutter/material.dart';
import 'package:food_delivery_app/UI/HomeScreens/HomeScreen.dart';
import 'package:food_delivery_app/bottom_nav_bar/bottom_bar_screen.dart';
import 'package:food_delivery_app/splash_screen/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
home: SplashScreen(),
  //  home: Homescreen(),
      //home: BottomBarScreen(),
    );
  }
}

