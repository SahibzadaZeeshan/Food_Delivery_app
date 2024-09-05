import 'package:flutter/widgets.dart';

class OrderDetailModel {
  final String text1;
  final String? text2;
  final String? text3;
  final String text4;
  final String Image;
  final Widget? navigate;

  OrderDetailModel(
      {required this.Image, this.navigate, required this.text1, this.text2, this.text3, required this.text4});
}
