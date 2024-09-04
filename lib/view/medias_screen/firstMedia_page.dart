import 'package:flutter/material.dart';

class FirstmediaPage extends StatefulWidget {
  const FirstmediaPage({super.key});

  @override
  State<FirstmediaPage> createState() => _FirstmediaPageState();
}

class _FirstmediaPageState extends State<FirstmediaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "No media found",
          style: TextStyle(fontSize: 19),
        ),
      ),
    );
  }
}
