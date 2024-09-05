import 'package:flutter/material.dart';
import 'package:food_delivery_app/auth/login.dart';

import '../customs/custom_continer.dart';
import '../customs/text/custom_text.dart';

class SplashTwo extends StatefulWidget {
  const SplashTwo({super.key});

  @override
  State<SplashTwo> createState() => _SplashTwoState();
}

class _SplashTwoState extends State<SplashTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Image(
                image: AssetImage("assets/images/Illustartion.png"),
              ),
              SizedBox(
                height: 20,
              ),
              CustomText(
                text: "Food Ninja is Where Your\n     Comfort Food Lives",
                fontsize: 25,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(
                text:
                    "Enjoy a fast and smooth food delivery at\n                        your doorstep",
              ),
              SizedBox(
                height: 10,
              ),
              CustomContiner(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.5,
                text: "Next",
                color: Colors.white,
                onPress: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => LoginScreen(),) );
                },
              ),
           SizedBox(height: 10,), ],
          ),
        ),
      ),
    );
  }
}
