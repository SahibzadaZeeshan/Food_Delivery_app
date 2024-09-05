import 'package:flutter/material.dart';
import 'package:food_delivery_app/customs/text/custom_text.dart';

class CustomContiner extends StatelessWidget {
  final double? height;
  final double? width;
  final String? text;
  final Color? color;
  final VoidCallback onPress;
  final double? fontSize;
  final FontWeight? fontWeight;

  const CustomContiner(
      {super.key,
      this.height,
      this.width = double.infinity,
      required this.text,
      this.color,
      required this.onPress,
      this.fontSize,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/CTA Button.png"))),
        child: Center(
          child: Text(
            text!,
            style: TextStyle(
                color: color, fontWeight: fontWeight, fontSize: fontSize),
          ),
        ),
      ),
    );
  }
}
