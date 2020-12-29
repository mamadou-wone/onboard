import 'package:flutter/material.dart';
import 'package:onboardScrenn/views/onboardPage.dart';

void main() {
  runApp(MyApp());
}

// 29/12/2020

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: OnboardPage(),
    );
  }
}
