import 'package:flutter/material.dart';
import 'package:food_delivery_app/UI/HomeScreens/view_more_item.dart';
import 'package:food_delivery_app/UI/HomeScreens/view_more_popular.dart';
import 'package:food_delivery_app/customs/customTextFeild.dart';
import 'package:food_delivery_app/customs/text/custom_text.dart';
import 'package:food_delivery_app/model_class/order_detail_model.dart';
import 'package:food_delivery_app/search_screen/searching.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
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
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SearchingScreen(),
                        ));
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.search),
                        SizedBox(
                          width: 10,
                        ),
                        CustomText(
                          text: "What do you want to order",
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage("assets/images/Group.png"),
                          fit: BoxFit.cover),
                      color: Colors.green),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 140,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/image 38.png"),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: "Special Deal For \nAugest",
                                  fontWeight: FontWeight.bold,
                                  fontsize: 20,
                                  textcolors: Colors.white,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 50,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                    child: CustomText(
                                      text: "Shop Now",
                                      textcolors: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CustomText(
                      text: "Nearest Restaurant",
                      fontWeight: FontWeight.bold,
                    ),
                    Spacer(),
                    CustomText(
                      onpress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ViewMoreItemNearset(),
                            ));
                      },
                      text: "View More",
                      textcolors: Colors.orange,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 250,
                  child: ListView.builder(
                    itemCount: OrderDetail.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white70,
                          ),
                          width: 180,
                          child: Column(
                            children: [
                              Image(
                                  image: AssetImage(OrderDetail[index].Image)),
                              CustomText(
                                text: OrderDetail[index].text1,
                                fontWeight: FontWeight.bold,
                              ),
                              CustomText(
                                text: OrderDetail[index].text3,
                                fontWeight: FontWeight.bold,
                                textcolors: Colors.orangeAccent,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CustomText(
                      text: "Popular Menu",
                      fontWeight: FontWeight.bold,
                    ),
                    Spacer(),
                    CustomText(
                      onpress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ViewMorePopularScreenItem(),
                            ));
                      },
                      text: "View More",
                      textcolors: Colors.orange,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: 200,
                    child: ListView.builder(
                      itemCount: OrderDetail.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white70,
                            ),
                            width: double.infinity,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                OrderDetail[index].Image))),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: OrderDetail[index].text1,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    CustomText(
                                      text: OrderDetail[index].text2,
                                      textcolors: Colors.grey,
                                    ),
                                  ],
                                ),
                                Spacer(),
                                CustomText(
                                  text: OrderDetail[index].text3,
                                  textcolors: Colors.orange,
                                  fontWeight: FontWeight.bold,
                                  fontsize: 20,
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ))
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
    ),
  ];
}
