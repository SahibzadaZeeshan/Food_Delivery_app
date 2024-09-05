import 'package:flutter/material.dart';

class Customtextfeild extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final IconData? prefix;
  final IconData? suffix;
  final TextEditingController? controller;
  final String? Function(String?)? validate;
  final bool obsecuretext;
  final Function(String)? onChanged;

  const Customtextfeild(
      {super.key,
      this.hintText,
      this.labelText,
      this.prefix,
      this.controller,
      this.validate,
      this.obsecuretext = false,
      this.suffix,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      obscureText: obsecuretext,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        prefixIcon: Icon(prefix),
        suffixIcon: Icon(suffix),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
      validator: validate,
    );
  }
}
