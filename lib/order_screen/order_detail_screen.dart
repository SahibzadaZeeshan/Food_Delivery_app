import 'package:flutter/material.dart';
import 'package:food_delivery_app/customs/custom_continer.dart';
import 'package:food_delivery_app/customs/text/custom_text.dart';
import 'package:food_delivery_app/model_class/order_detail_model.dart';

class OrderDetailScreen extends StatefulWidget {
  const OrderDetailScreen({super.key});

  @override
  State<OrderDetailScreen> createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.orange),
                  child: Icon(Icons.arrow_back_ios_new),
                ),
                SizedBox(
                  height: 15,
                ),
                CustomText(
                  text: "Order details",
                  fontWeight: FontWeight.bold,
                  fontsize: 25,
                ),
                Container(
                  height: 700,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  child: ListView.builder(
                    itemCount: OrderDetail.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Dismissible(
                          key: UniqueKey(),
                          background: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.orange),
                            child: Row(
                              children: [
                                Spacer(),
                                Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                  size: 50,
                                ),
                              ],
                            ),
                          ),
                          child: PhysicalModel(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            shadowColor: Colors.grey,
                            elevation: 5,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  OrderDetail[index].Image))),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 15,
                                        ),
                                        CustomText(
                                          fontWeight: FontWeight.bold,
                                          text: OrderDetail[index].text1,
                                        ),
                                        CustomText(
                                          textcolors: Colors.grey,
                                          text: OrderDetail[index].text2,
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        CustomText(
                                          textcolors: Colors.green,
                                          fontWeight: FontWeight.bold,
                                          text: OrderDetail[index].text3,
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            color: Colors.grey,
                                          ),
                                          child: Icon(Icons.minimize),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        CustomText(
                                          text: OrderDetail[index].text4,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            color: Colors.green,
                                          ),
                                          child: Icon(Icons.add),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),

                ///payment continer

                Container(
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CustomText(
                              text: "Sub Total",
                              textcolors: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            Spacer(),
                            CustomText(
                              text: "\$120",
                              textcolors: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CustomText(
                              text: "Delivery Charges",
                              textcolors: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            Spacer(),
                            CustomText(
                              text: "\$20",
                              textcolors: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CustomText(
                              text: "Discount",
                              textcolors: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            Spacer(),
                            CustomText(
                              text: "\$10",
                              textcolors: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            CustomText(
                              text: "Total ",
                              textcolors: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontsize: 20,
                            ),
                            Spacer(),
                            CustomText(
                              text: "\$150",
                              textcolors: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 55,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: CustomText(
                              textcolors: Colors.green,
                              text: "Place My Order",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
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
        text1: "Finger Chips",
        text2: "Ameer sahb food",
        text3: "\$10",
        text4: "2",
        Image: "assets/food_images/finger chips.webp",
        // navigate: 
    ),
    OrderDetailModel(
        text1: "Finger",
        text2: "Ameer sahb food",
        text3: "\$20",
        text4: "3",
        Image: "assets/food_images/chipsssssssss.png",),
    OrderDetailModel(
        text1: "Shawarma",
        text2: "Ameer sahb food",
        text3: "\$10",
        text4: "4",
        Image: "assets/food_images/shorma.png"),
    OrderDetailModel(
        text1: "Shawarma",
        text2: "Ameer sahb food",
        text3: "\$10",
        text4: "5",
        Image: "assets/food_images/shorma.png"),
  ];
}
