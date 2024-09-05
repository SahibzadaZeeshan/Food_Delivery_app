import 'package:flutter/material.dart';
import 'package:food_delivery_app/customs/custom_continer.dart';
import 'package:food_delivery_app/customs/text/custom_text.dart';
import 'package:food_delivery_app/splash_screen/splash_two.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(
              image: AssetImage("assets/images/Illustartion.png"),
              width: MediaQuery.of(context).size.width * 20,
            ),
            SizedBox(
              height: 20,
            ),
            CustomText(
              text: "Find your Comfort\n      Food here",
              fontsize: 25,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 10,
            ),
            CustomText(
              text:
                  "Here You Can find a chef or dish for every\n               taste and color. Enjoy!",
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SplashTwo(),
                    ));
              },
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
