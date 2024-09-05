import 'package:flutter/material.dart';
import 'package:food_delivery_app/auth/password_congrat.dart';
import 'package:food_delivery_app/customs/customTextFeild.dart';
import 'package:food_delivery_app/customs/custom_continer.dart';
import 'package:food_delivery_app/customs/text/custom_text.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.orange,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              CustomText(
                text: "Reset Your Password\nHere",
                fontWeight: FontWeight.bold,
                fontsize: 25,
              ),
              CustomText(
                text:
                "Select which contact details should we\nuse to reset your password",
              ),
              SizedBox(
                height: 20,
              ),
              Customtextfeild(
                suffix: Icons.remove_red_eye,
                hintText: "New Password",
              ),
              SizedBox(
                height: 15,
              ),
              Customtextfeild(
                suffix: Icons.remove_red_eye,
                obsecuretext: true,
                hintText: "Confirm Password",
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: CustomContiner(
                  text: "Next",
                  onPress: () {

                  },
                  height: 55,
                  width: 150,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
