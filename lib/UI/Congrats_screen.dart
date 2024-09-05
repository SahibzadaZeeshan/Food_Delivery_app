import 'package:flutter/material.dart';

import 'package:food_delivery_app/bottom_nav_bar/bottom_bar_screen.dart';
import 'package:food_delivery_app/customs/custom_continer.dart';
import 'package:food_delivery_app/customs/text/custom_text.dart';

class CongratsScreen extends StatefulWidget {
  const CongratsScreen({super.key});

  @override
  State<CongratsScreen> createState() => _CongratsScreenState();
}

class _CongratsScreenState extends State<CongratsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Image(image: AssetImage("assets/images/congrats.png"))),
            SizedBox(
              height: 15,
            ),
            CustomText(
              text: "Congrats!",
              textcolors: Colors.green,
              fontWeight: FontWeight.bold,
              fontsize: 30,
            ),
            CustomText(
              text: "Your Profile Is Ready To Use",
              fontWeight: FontWeight.bold,
              fontsize: 25,
            ),
            SizedBox(
              height: 10,
            ),
            CustomContiner(
              text: "Track Order",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BottomBarScreen()));
              },
              height: 55,
              width: 150,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
