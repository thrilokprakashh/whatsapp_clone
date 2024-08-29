import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  List stDataList = [
    {
      "title": "Account",
      'icon': Icons.key,
      "subtitle": "Privacy, security, change number"
    },
    {
      "title": "Chats",
      "icon": Icons.chat,
      "subtitle": "Theme, wallpapers, chat history"
    },
    {
      "title": "Notifications",
      "icon": Icons.notifications,
      "subtitle": "Message, group & call tones"
    },
    {
      "title": "Storage and Data",
      "icon": Icons.circle_outlined,
      "subtitle": "Network usage, auto-download"
    },
    {
      "title": "Help",
      "icon": Icons.help_outline,
      "subtitle": "Help centre, contact us, privacy policy"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 44, 126, 45),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          iconSize: 30,
        ),
        title: Text(
          "Settings",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        actions: [
          SizedBox(
            width: 30,
          ),
          SizedBox(
            width: 30,
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, bottom: 10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 45,
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/27911398/pexels-photo-27911398/free-photo-of-a-cowboy-riding-a-horse-in-the-desert-at-sunset.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Programmer",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "Hey there, I am using whatsapp.",
                      style: TextStyle(color: Colors.black54),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 30),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => ListTile(
              onTap: () {
                if (index == 0) {
                  print("Account");
                }
              },
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              leading: Icon(
                stDataList[index]["icon"],
                color: Colors.black54,
              ),
              title: Text(
                stDataList[index]["title"],
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text(
                stDataList[index]["subtitle"],
                style: TextStyle(color: Colors.black54),
              ),
            ),
            itemCount: 5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Row(
              children: [
                Icon(
                  Icons.group,
                  color: Colors.black54,
                  size: 28,
                ),
                SizedBox(
                  width: 14,
                ),
                Text(
                  "Invite a Friend",
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Text("from"),
          Text(
            "Facebook",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )
        ],
      ),
    );
  }
}
