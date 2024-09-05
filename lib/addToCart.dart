import 'package:flutter/material.dart';
import 'package:food_delivery_app/customs/custom_continer.dart';
import 'package:food_delivery_app/customs/text/custom_text.dart';
import 'package:food_delivery_app/model_class/order_detail_model.dart';
import 'package:food_delivery_app/order_screen/order_detail_screen.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({super.key});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/chatImages/zee.png"),
                        fit: BoxFit.fill)),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomText(
                          text: "Zeeshan",
                          fontWeight: FontWeight.bold,
                          fontsize: 25,
                        ),
                        Spacer(),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(30)),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        )
                      ],
                    ),
                    CustomText(
                      text:
                          "Lorem Ipsum is simply dummy text of the printing and\n typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,\n when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n It has survived not only five centuries, but also the leap into electronic typesetting, ",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomText(
                      text: "Dishes",
                      fontWeight: FontWeight.bold,
                      fontsize: 25,
                    ),
                    Container(
                      height: 500,
                      child: ListView.builder(
                        itemCount: OrderDetail.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: PhysicalModel(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              elevation: 5,
                              shadowColor: Colors.grey,
                              child: Container(
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  OrderDetail[index].Image)),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomText(
                                          text: OrderDetail[index].text1,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        CustomText(
                                          text: OrderDetail[index].text2,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        CustomText(
                                          text: OrderDetail[index].text3,
                                          fontWeight: FontWeight.bold,
                                          textcolors: Colors.orangeAccent,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    CustomContiner(
                      height: 55,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      width: double.infinity,
                      text: "Add To Cart",
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OrderDetailScreen()),
                        );
                      },
                    )
                  ],
                ),
              )
            ],
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
  ];
}
