import 'package:flutter/material.dart';

class MyTextFeild extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final Widget? leading;
  final Widget? trailing;
  final bool obscureText;
  const MyTextFeild({
    super.key, required this.hintText, this.leading, required this.obscureText, this.trailing, this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
         focusedBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.black),
        ),
         enabledBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.black),
        ),
        hintText: hintText,
        suffixIcon: trailing,
        prefixIcon: leading,
      ),
    );
  }
}
