import 'package:flutter/material.dart';
import 'package:food_delivery_app/UI/set_location_screen.dart';
import 'package:food_delivery_app/customs/customTextFeild.dart';
import 'package:food_delivery_app/customs/custom_continer.dart';
import 'package:food_delivery_app/customs/text/custom_text.dart';

class AddBioScreen extends StatefulWidget {
  const AddBioScreen({super.key});

  @override
  State<AddBioScreen> createState() => _AddBioScreenState();
}

class _AddBioScreenState extends State<AddBioScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white70),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.orange,
                ),
              ),
              CustomText(
                fontWeight: FontWeight.bold,
                fontsize: 30,
                text: "Fill in your bio to get\nStarted",
              ),
              CustomText(
                text:
                    "This data will be displayed in your account\nprofile for security",
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: CircleAvatar(
                  radius: 80,
                  child: Icon(
                    Icons.camera_alt,
                    size: 80,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Customtextfeild(
                hintText: "First Name",
              ),
              SizedBox(
                height: 10,
              ),
              Customtextfeild(
                hintText: "Last Name",
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
              SizedBox(
                height: 40,
              ),
              Center(
                child: CustomContiner(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  text: "Next",
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SetLocationScreen(),
                        ));
                  },
                  height: 55,
                  width: 150,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
