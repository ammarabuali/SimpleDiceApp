import 'package:dice_app/cointaner.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Rolling dice app!"),
        backgroundColor: Color.fromARGB(255, 169, 122, 251),
      ),
      body: GradientCointaner.purple(),
    ),
  ));
}
