import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/UI/Congrats_screen.dart';
import 'package:food_delivery_app/customs/custom_continer.dart';
import 'package:food_delivery_app/customs/text/custom_text.dart';

class SetLocationScreen extends StatefulWidget {
  const SetLocationScreen({super.key});

  @override
  State<SetLocationScreen> createState() => _SetLocationScreenState();
}

class _SetLocationScreenState extends State<SetLocationScreen> {
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
                padding: const EdgeInsets.only(top: 18.0),
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
                text: "Set Your Location",
                fontWeight: FontWeight.bold,
                fontsize: 25,
              ),
              CustomText(
                text:
                    "This data will be displayed in your account\nprofile for security",
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.orange,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CustomText(
                            text: "Your Location",
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: PhysicalModel(
                        color: Colors.white,
                        shadowColor: Colors.grey,
                        elevation: 5,
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                            height: 40,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            child: Center(
                                child: CustomText(
                              text: "Set Location",
                              fontWeight: FontWeight.bold,
                            ))),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: CustomContiner(
                  text: "Next",
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CongratsScreen(),
                        ));
                  },
                  height: 55,
                  color: Colors.white,
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
