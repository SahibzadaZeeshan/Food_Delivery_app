import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/customs/customTextFeild.dart';
import 'package:food_delivery_app/customs/text/custom_text.dart';
import 'package:food_delivery_app/model_class/order_detail_model.dart';

class ViewMoreItemNearset extends StatefulWidget {
  const ViewMoreItemNearset({super.key});

  @override
  State<ViewMoreItemNearset> createState() => _ViewMoreItemNearsetState();
}

class _ViewMoreItemNearsetState extends State<ViewMoreItemNearset> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  height: 15,
                ),
                Row(
                  children: [
                    Container(
                        height: 55,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: "<10km",fontWeight:FontWeight.bold ,
                            ),
                            Icon(Icons.close)
                          ],
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 55,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            text: "Soup",fontWeight: FontWeight.bold,
                          ),
                          Icon(Icons.close)
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                CustomText(
                  text: "Popular Resturent",
                  fontWeight: FontWeight.bold,
                  fontsize: 15,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: GridView.builder(
                    itemCount: OrderDetail.length,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          width: 180,
                          child: Column(
                            children: [
                              Expanded(
                                child: Image(
                                  image: AssetImage(
                                  OrderDetail[index].Image),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              CustomText(
                                text: OrderDetail[index].text1,
                                fontWeight: FontWeight.bold,
                              ),
                              CustomText(
                                text: OrderDetail[index].text3,
                                textcolors: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  List<dynamic> OrderDetail = [
    OrderDetailModel(
      text1: "Burger",
      text2: "Ameer sahb food",
      text3: "\$20",
      text4: "1",
      Image: "assets/food_images/b.png",
      //navigate:
    ),
    OrderDetailModel(
      text1: "Shorma",
      text2: "Ameer sahb food",
      text3: "\$10",
      text4: "2",
      Image: "assets/food_images/shorma.png",
      // navigate:
    ),
    OrderDetailModel(
      text1: "Soup",
      text2: "Ameer sahb food",
      text3: "\$10",
      text4: "2",
      Image: "assets/food_images/soup.png",
      // navigate:
    ),
    OrderDetailModel(
      text1: "Chiken Soup",
      text2: "Ameer sahb food",
      text3: "\$15",
      text4: "2",
      Image: "assets/food_images/soup.png",
      // navigate:
    ), OrderDetailModel(
      text1: "Chips",
      text2: "Ameer sahb food",
      text3: "\$15",
      text4: "2",
      Image: "assets/food_images/chipsssssssss.png",
      // navigate:
    ),
  ];
}
