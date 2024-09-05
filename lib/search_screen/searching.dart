import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/customs/customTextFeild.dart';
import 'package:food_delivery_app/customs/custom_continer.dart';
import 'package:food_delivery_app/customs/text/custom_text.dart';

class SearchingScreen extends StatefulWidget {
  const SearchingScreen({super.key});

  @override
  State<SearchingScreen> createState() => _SearchingScreenState();
}

class _SearchingScreenState extends State<SearchingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CustomText(
                    text: "Find Your\nFavorite Food",
                    fontWeight: FontWeight.bold,
                    fontsize: 35,
                  ),
                  Spacer(),
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Icon(
                        Icons.notifications_none,
                        color: Colors.green,
                      ))
                ],
              ),
              SizedBox(
                height: 20,
              ),

              ///serach bar
              Row(
                children: [
                  Expanded(
                    child: Customtextfeild(
                      hintText: "What Do You Want To Order",
                      prefix: Icons.search,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CustomText(
                text: "Type",
                fontWeight: FontWeight.bold,
                fontsize: 20,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orangeAccent),
                    child: Center(
                      child: CustomText(text: "Restaurent"),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orangeAccent),
                    child: Center(
                      child: CustomText(text: "Restaurent"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CustomText(
                text: "Location",
                fontWeight: FontWeight.bold,
                fontsize: 20,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orangeAccent),
                    child: Center(
                      child: CustomText(text: "1 Km"),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orangeAccent),
                    child: Center(
                      child: CustomText(text: ">10Km"),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orangeAccent),
                    child: Center(
                      child: CustomText(text: "<10Km"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CustomText(
                text: "Food",
                fontWeight: FontWeight.bold,
                fontsize: 20,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orangeAccent),
                    child: Center(
                      child: CustomText(text: " Cake"),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orangeAccent),
                    child: Center(
                      child: CustomText(text: "Burger"),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orangeAccent),
                    child: Center(
                      child: CustomText(text: "Soup"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orangeAccent),
                    child: Center(
                      child: CustomText(text: " Zinger Burger"),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orangeAccent),
                    child: Center(
                      child: CustomText(text: "Finger Ships"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Center(
                child: CustomContiner(
                  text: "Search",
                  onPress: () {},
                  height: 55,
                  width: MediaQuery.of(context).size.width * 0.80,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
