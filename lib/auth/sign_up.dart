import 'package:flutter/material.dart';
import 'package:food_delivery_app/UI/add_bio.dart';
import 'package:food_delivery_app/auth/login.dart';

import '../customs/customTextFeild.dart';
import '../customs/custom_continer.dart';
import '../customs/text/custom_text.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
            const  Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 38.0),
                  child: Image(
                    image: AssetImage("assets/images/Logo.png"),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            const  CustomText(
                text: "Sign Up For Free",
                fontWeight: FontWeight.bold,
                fontsize: 25,
              ),
              SizedBox(
                height: 10,
              ),
              Customtextfeild(
                prefix: Icons.person,
                hintText: "Name",
              ),
              SizedBox(
                height: 10,
              ),
              Customtextfeild(
                prefix: Icons.email,
                hintText: "Email",
              ),
              SizedBox(
                height: 10,
              ),
              Customtextfeild(
                prefix: Icons.lock,
                obsecuretext: true,
                hintText: "Password",
              ),
              SizedBox(
                height: 10,
              ),
              Customtextfeild(
                prefix: Icons.lock,
                obsecuretext: true,
                hintText: "Confirm password",
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(
                text: "Or Continue With",
                fontWeight: FontWeight.bold,
                fontsize: 20,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage("assets/images/facebook-3 1.png"),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CustomText(
                            text: "Facebook",
                            fontWeight: FontWeight.bold,
                          )
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        children: [
                          Image(
                            image:
                                AssetImage("assets/images/google-icon 1.png"),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CustomText(
                            text: "Google",
                            fontWeight: FontWeight.bold,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),

              SizedBox(
                height: 20,
              ),
              CustomContiner(
                height: 55,
                width: 200,
                text: " Create Account",
                onPress: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AddBioScreen(),));
                },

                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(
                textcolors: Colors.green,
                text: "Already have an account",fontWeight: FontWeight.bold,
                onpress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
