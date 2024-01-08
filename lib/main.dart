import 'package:flutter/material.dart';
import 'package:basics/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            [Colors.deepPurple, Color.fromARGB(255, 79, 48, 163)]),
      ),
    ),
  );
}
