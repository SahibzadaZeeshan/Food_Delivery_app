import 'package:flutter/material.dart';
import 'package:food_delivery_app/auth/forgot_password.dart';
import 'package:food_delivery_app/customs/customTextFeild.dart';
import 'package:food_delivery_app/customs/custom_continer.dart';
import 'package:food_delivery_app/customs/text/custom_text.dart';
import 'package:food_delivery_app/auth/sign_up.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Center(
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
              CustomText(
                text: "Login To Your Account",
                fontWeight: FontWeight.bold,
                fontsize: 25,
              ),
              SizedBox(
                height: 10,
              ),
              Customtextfeild(
                hintText: "Email",
              ),
              SizedBox(
                height: 10,
              ),
              Customtextfeild(
                hintText: "Password",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    onpress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgotPassword(),
                          ));
                    },
                    text: "Forgot your password",
                    textcolors: Colors.green,
                    fontWeight: FontWeight.bold,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CustomContiner(
                height: 55,
                width: 150,
                text: "Login",
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpScreen(),
                      ));
                },
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )
            ],
          ),
        ),
      ),
    );
  }
}
