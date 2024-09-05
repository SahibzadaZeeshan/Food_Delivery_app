import 'package:flutter/material.dart';
import 'package:food_delivery_app/customs/text/custom_text.dart';
import 'package:food_delivery_app/model_class/order_detail_model.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomSheet: BottomSheet(
          onClosing: () {},
          builder: (context) {
            return SingleChildScrollView(
              child: Column(children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/chatImages/zee.png"),
                        fit: BoxFit.fitHeight),
                  ),
                  // child: Text('Bottom Sheet Content'),
                ),
                Container(
                  height: 500,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                  ),
                  child: Padding(
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
                            Icon(
                              Icons.edit,
                              size: 25,
                              color: Colors.green,
                            )
                          ],
                        ),
                        CustomText(
                          text: "Zeeshan@gmail.com",
                          textcolors: Colors.grey,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomText(
                          text: "Favorite",
                          fontWeight: FontWeight.bold,
                          fontsize: 25,
                        ),
                        Expanded(
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: ListView.builder(
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: PhysicalModel(
                                    color: Colors.white,
                                    shadowColor: Colors.grey,
                                    elevation: 5,
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                      width: double.infinity,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 70,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          OrderDetail[index]
                                                              .Image))),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                CustomText(
                                                  text:
                                                      OrderDetail[index].text1,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                CustomText(
                                                  textcolors: Colors.grey,
                                                  text:
                                                      OrderDetail[index].text2,
                                                ),
                                                CustomText(
                                                  text:
                                                      OrderDetail[index].text3,
                                                  textcolors:
                                                      Colors.orangeAccent,
                                                ),
                                              ],
                                            ),
                                            Spacer(),
                                            Container(
                                              height: 40,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                  color: Colors.green,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              child: Center(
                                                child: CustomText(
                                                  text: "Buy again",
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ]),
            );
          },
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
      Image: "assets/food_images/chipsssssssss.png",
    ),
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
