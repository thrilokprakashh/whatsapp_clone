import 'package:flutter/material.dart';

class WhatsAppWebpage extends StatefulWidget {
  const WhatsAppWebpage({super.key});

  @override
  State<WhatsAppWebpage> createState() => _WhatsAppWebpageState();
}

class _WhatsAppWebpageState extends State<WhatsAppWebpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 44, 126, 45),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
        ),
        title: Text(
          "WhatsApp Web",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        actions: [
          SizedBox(
            width: 30,
          ),
          SizedBox(
            width: 30,
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Icon(
              Icons.devices,
              size: 150,
            ),
          ),
          Text(
            """Use WhatsApp on other 
                devices""",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 106, vertical: 10),
            color: Color.fromARGB(255, 44, 126, 45),
            child: Text(
              "LINK A DEVICE",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 10,
            color: Colors.grey[10],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 13),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                """DEVICE STATUS
Tap a device to log out.""",
                style: TextStyle(fontSize: 13),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color.fromARGB(255, 44, 126, 45),
                  child: Icon(
                    Icons.window,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Windows",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Text(
                      "Last active today at 7:03 pm",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
