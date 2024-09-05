import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final FontWeight? fontWeight;
  final double? fontsize;
  final Color? textcolors;
  final void Function()? onpress;

  const CustomText(
      {super.key,
    this.text,
      this.fontWeight,
      this.fontsize,
      this.textcolors,
      this.onpress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Text(
        text!,
        style: TextStyle(
            fontWeight: fontWeight, fontSize: fontsize, color: textcolors),
      ),
    );
  }
}
