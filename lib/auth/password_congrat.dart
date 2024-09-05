import 'package:flutter/material.dart';
import 'package:food_delivery_app/customs/custom_continer.dart';
import 'package:food_delivery_app/customs/text/custom_text.dart';
class PasswordCongratScreen extends StatefulWidget {
  const PasswordCongratScreen({super.key});

  @override
  State<PasswordCongratScreen> createState() => _PasswordCongratScreenState();
}

class _PasswordCongratScreenState extends State<PasswordCongratScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            text: "Password Reset Succssfully",
            fontWeight: FontWeight.bold,
            fontsize: 25,
          ),
          SizedBox(
            height: 10,
          ),
          CustomContiner(
            text: "Next",
            onPress: () {

            },
            height: 55,
            width: 150,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
