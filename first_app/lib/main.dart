import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          body: GradientContainer([
        Color.fromARGB(170, 245, 9, 139),
        Color.fromARGB(231, 214, 20, 20),
        Color.fromARGB(124, 13, 192, 192),
      ])),
    ),
  );
}
