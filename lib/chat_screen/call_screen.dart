import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/customs/text/custom_text.dart';

class CallInfoScreen extends StatefulWidget {
  const CallInfoScreen({super.key});

  @override
  State<CallInfoScreen> createState() => _CallInfoScreenState();
}

class _CallInfoScreenState extends State<CallInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/chatImages/zee.png",
                      ),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(80),
                  border: Border.all(width: 5, color: Colors.green),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CustomText(
              text: "Zeeshan",
              fontWeight: FontWeight.bold,
              fontsize: 20,
            ),
            CustomText(
              text: "Ringing..",
              textcolors: Colors.grey,
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: CupertinoColors.systemGrey2),
                  child: Center(child: Icon(Icons.record_voice_over)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.red),
                  child: Center(child: Icon(Icons.close)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
