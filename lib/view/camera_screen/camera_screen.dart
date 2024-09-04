import 'package:flutter/material.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/Google Pixel 2 XL - 78.png"),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Spacer(),
            Icon(
              Icons.keyboard_arrow_up,
              color: Colors.white,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.flash_auto,
                    color: Colors.white,
                    size: 30,
                  ),
                  Spacer(),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 5),
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.flip_camera_android_sharp,
                    color: Colors.white,
                    size: 30,
                  )
                ],
              ),
            ),
            Text(
              "Hold for video,tap for photo",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(width: 50),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
