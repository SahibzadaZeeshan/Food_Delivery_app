import 'package:flutter/material.dart';
import 'package:food_delivery_app/customs/customTextFeild.dart';
import 'package:food_delivery_app/customs/text/custom_text.dart';
import 'package:food_delivery_app/model_class/order_detail_model.dart';

class ViewMorePopularScreenItem extends StatefulWidget {
  const ViewMorePopularScreenItem({super.key});

  @override
  State<ViewMorePopularScreenItem> createState() =>
      _ViewMorePopularScreenItemState();
}

class _ViewMorePopularScreenItemState extends State<ViewMorePopularScreenItem> {
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
                  height: 10,
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
                              text: "Burger",fontWeight: FontWeight.bold,
                            ),
                            Icon(Icons.close)
                          ],
                        )),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),

                SizedBox(
                  height: 15,
                ),
                CustomText(
                  text: "Popular Menu",
                  fontWeight: FontWeight.bold,
                  fontsize: 15,
                ),

                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 550,
                    child: ListView.builder(
                      itemCount: OrderDetail.length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
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
