import 'package:flutter/material.dart';
import 'package:project/bottom_nav.dart';
import 'package:project/second_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecondScreenScaffold()
    ),
  );
}