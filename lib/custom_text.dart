import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(this.text, {super.key});
  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
          fontWeight: FontWeight.w500, color: Colors.white54, fontSize: 28.0),
    );
  }
}
