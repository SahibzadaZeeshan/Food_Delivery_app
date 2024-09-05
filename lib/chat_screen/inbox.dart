// import 'package:flutter/material.dart';
// import 'package:food_delivery_app/customs/customTextFeild.dart';
// import 'package:food_delivery_app/customs/text/custom_text.dart';
// import 'package:food_delivery_app/model_class/order_detail_model.dart';
//
// class InboxScreen extends StatefulWidget {
//   const InboxScreen({super.key});
//
//   @override
//   State<InboxScreen> createState() => _InboxState();
// }
//
// class _InboxState extends State<InboxScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.all(18.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 height: 50,
//                 width: 50,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                   color: Colors.orangeAccent,
//                 ),
//                 child: const Icon(Icons.arrow_back_ios_new),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               CustomText(
//                 text: "Chat",
//                 fontsize: 30,
//                 fontWeight: FontWeight.bold,
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Expanded(
//                 child: Container(
//                   width: MediaQuery.of(context).size.width,
//                   color: Colors.white70,
//                   child: SingleChildScrollView(
//                     child: Column(
//                       children: [
//                         PhysicalModel(
//                           color: Colors.white,
//                           shadowColor: Colors.grey,
//                           elevation: 10,
//                           borderRadius: BorderRadius.circular(20),
//                           child: Container(
//                               height: 100,
//                               width: double.infinity,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 color: Colors.white,
//                               ),
//                               child: Row(
//                                 children: [
//                                   Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: Container(
//                                       height: 90,
//                                       width: 80,
//                                       decoration: BoxDecoration(
//                                           image: DecorationImage(
//                                               image: AssetImage(
//                                                   "assets/chatImages/zee.png")),
//                                           borderRadius:
//                                               BorderRadius.circular(20)),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         CustomText(
//                                           text: "Zeeshan",
//                                           fontWeight: FontWeight.bold,
//                                           fontsize: 20,
//                                         ),
//                                         CustomText(
//                                           text: "Online",
//                                           textcolors: Colors.grey,
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   Spacer(),
//                                   Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: Container(
//                                       height: 50,
//                                       width: 50,
//                                       decoration: BoxDecoration(
//                                           borderRadius:
//                                               BorderRadius.circular(50),
//                                           color: Colors.blueGrey),
//                                       child: Icon(
//                                         Icons.phone,
//                                         color: Colors.green,
//                                       ),
//                                     ),
//                                   )
//                                 ],
//                               )),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 height: 50,
//                                 width: 130,
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(20),
//                                     color: Colors.grey),
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: CustomText(
//                                     text: "Hi how are you",
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               Container(
//                                 height: 50,
//                                 width: 130,
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(20),
//                                     color: Colors.green),
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: CustomText(
//                                     text: "I am fine and you",
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 height: 50,
//                                 width: 130,
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(20),
//                                     color: Colors.grey),
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: CustomText(
//                                     text: "I am good",
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 260,
//                         ),
//                         Customtextfeild(
//                           hintText: "",
//                           suffix: Icons.send,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/chat_screen/call_screen.dart';
import 'package:food_delivery_app/customs/text/custom_text.dart';

class InboxScreen extends StatefulWidget {
  final String userName;
  final String userStatus;
  final String userImage;

  const InboxScreen(
      {super.key,
      required this.userName,
      required this.userStatus,
      required this.userImage});

  @override
  State<InboxScreen> createState() => _InboxState();
}

class _InboxState extends State<InboxScreen> {
  @override
  Widget build(BuildContext context) {
    SizedBox size = SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
    );
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
                  color: Colors.orangeAccent,
                ),
                child: const Icon(Icons.arrow_back_ios_new),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomText(
                text: "Chat with ${widget.userName}",
                fontsize: 30,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white70,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        PhysicalModel(
                          color: Colors.white,
                          shadowColor: Colors.grey,
                          elevation: 10,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 100,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 90,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(widget.userImage),
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                        text: widget.userName,
                                        fontWeight: FontWeight.bold,
                                        fontsize: 20,
                                      ),
                                      CustomText(
                                        text: widget.userStatus,
                                        textcolors: Colors.grey,
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => CallInfoScreen(),
                                          ));
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.blueGrey,
                                      ),
                                      child: Icon(
                                        Icons.phone,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: CupertinoColors.systemGrey),
                              child: Center(
                                  child: CustomText(
                                text: "hi how are you",
                              )),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 40,
                              width: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.green),
                              child: Center(
                                  child: CustomText(
                                text: "i am fine and you",
                              )),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: CupertinoColors.systemGrey),
                              child: Center(
                                  child: CustomText(
                                text: "i am also good",
                              )),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 40,
                              width: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.green),
                              child: Center(
                                  child: CustomText(
                                text: "whats up",
                              )),
                            )
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.35,
                        ),
                        Container(
                          height: 55,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.black)),
                          child: Row(
                            children: [
                              CustomText(
                                text: "",
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.send,
                                  color: Colors.green,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
