import 'package:flutter/material.dart';
import 'package:instagram/Screen/first_screen.dart';
// import 'package:instagram/Screen/photo.dart';
void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, routes: {
    "/": (context) => First(),

  }));
}
