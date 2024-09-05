import 'package:flutter/material.dart';
import 'package:food_delivery_app/chat_screen/inbox.dart';
import 'package:food_delivery_app/customs/text/custom_text.dart';
import 'package:food_delivery_app/model_class/order_detail_model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.orangeAccent),
                child: Icon(Icons.arrow_back_ios_new),
              ),
              SizedBox(
                height: 20,
              ),
              CustomText(
                text: "Chat",
                fontsize: 30,
                fontWeight: FontWeight.bold,
              ),
              Expanded(
                child: Container(
                  height: 580,
                  child: ListView.builder(
                    itemCount: OrderDetail.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: PhysicalModel(
                          color: Colors.white,
                          elevation: 10,
                          shadowColor: Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        OrderDetail[index].navigate,
                                  ));
                            },
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  OrderDetail[index].Image),
                                              fit: BoxFit.fill)),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      CustomText(
                                        fontsize: 20,
                                        text: OrderDetail[index].text1,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CustomText(
                                      text: OrderDetail[index].text4,
                                    ),
                                  ),
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
    );
  }

  List<dynamic> OrderDetail = [
    OrderDetailModel(
      text1: "Zeeshan",
      // text2: "Ameer sahb food",
      // text3: "\$20",
      text4: "2:00pm",
      Image: "assets/chatImages/zee.png",
      navigate: const InboxScreen(
        userName: "Zeeshan",
        userStatus: 'Online',
        userImage: "assets/chatImages/zee.png",
      ),
    ),
    OrderDetailModel(
        text1: "Huziafa",
        // text2: "Ameer sahb food",
        // text3: "\$10",
        text4: "1:50pm",
        Image: "assets/chatImages/a.png",
        navigate: InboxScreen(
          userImage: "assets/chatImages/a.png",
          userName: "Huzaifa",
          userStatus: "Online",
        )),
  ];
}
