import 'package:flutter/material.dart';
import 'package:whats_app_task/view/homescreen/home_screen.dart';

void main() {
  runApp(MyApp());
}

int dmIndex = 0;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
