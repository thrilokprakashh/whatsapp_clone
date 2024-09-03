import 'package:flutter/material.dart';

class StatusPrivacyPage extends StatefulWidget {
  const StatusPrivacyPage({super.key});

  @override
  State<StatusPrivacyPage> createState() => _StatusPrivacyPageState();
}

class _StatusPrivacyPageState extends State<StatusPrivacyPage> {
  String? privacy;
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
          "Status privacy",
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 23),
            child: Text(
              "Who can see my status updates",
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 44, 126, 45),
              ),
            ),
          ),
          RadioListTile(
            activeColor: Color.fromARGB(255, 44, 126, 45),
            title: Text(
              "My contacts",
              style: TextStyle(fontSize: 17),
            ),
            value: "my contacts",
            groupValue: privacy,
            onChanged: (value) {
              setState(() {
                privacy = value;
              });
            },
          ),
          RadioListTile(
            activeColor: Color.fromARGB(255, 44, 126, 45),
            title: Text(
              "My contacts except...",
              style: TextStyle(fontSize: 17),
            ),
            value: "my contacts except...",
            groupValue: privacy,
            onChanged: (value) {
              setState(() {
                privacy = value;
              });
            },
          ),
          RadioListTile(
            activeColor: Color.fromARGB(255, 44, 126, 45),
            title: Text(
              "Only share with...",
              style: TextStyle(fontSize: 17),
            ),
            value: "oney share with...",
            groupValue: privacy,
            onChanged: (value) {
              setState(() {
                privacy = value;
              });
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Text(
              """Changes to your privacy settings wont’t affect status  updates that you’ve sent already""",
              style: TextStyle(fontSize: 15, color: Colors.black54),
            ),
          ),
          Spacer(),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                color: Color.fromARGB(255, 44, 126, 45),
                child: Text(
                  "DONE",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
