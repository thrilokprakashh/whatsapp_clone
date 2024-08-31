import 'package:flutter/material.dart';
import 'package:whats_app_task/view/dm_screen/dm_page.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  List wpDataList = [
    {
      "name": "John",
      "dp":
          "https://images.pexels.com/photos/27439406/pexels-photo-27439406/free-photo-of-a-cup-of-coffee-sits-on-a-bed-with-pillows.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
      "msg": "Hello, how are you?",
      "time": "10:00 AM",
      "count": "1"
    },
    {
      "name": "Emily",
      "dp":
          "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
      "msg": "Are we still on for tonight?",
      "time": "9:30 AM",
      "count": "3"
    },
    {
      "name": "Michael",
      "dp":
          "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
      "msg": "Meeting has been rescheduled",
      "time": "9:20AM",
      "count": "0"
    },
    {
      "name": "Sophia",
      "dp":
          "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
      "msg": "Can you send me the files?",
      "time": "7:00AM",
      "count": "5"
    },
    {
      "name": "Daniel",
      "dp":
          "https://images.pexels.com/photos/150311/pexels-photo-150311.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
      "msg": "Got your message, thanks!",
      "time": "6:30AM",
      "count": "0"
    },
    {
      "name": "Ava",
      "dp":
          "https://images.pexels.com/photos/247285/pexels-photo-247285.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
      "msg": "I'll call you later",
      "time": "5:00AM",
      "count": "2"
    },
    {
      "name": "David",
      "dp":
          "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
      "msg": "Happy birthday!",
      "time": "4:58AM",
      "count": "0"
    },
    {
      "name": "Lily",
      "dp":
          "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
      "msg": "Check your email",
      "time": "4:56AM",
      "count": "1"
    },
    {
      "name": "Mia",
      "dp":
          "https://images.pexels.com/photos/2825577/pexels-photo-2825577.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
      "msg": "Great job on the project!",
      "time": "4.45AM",
      "count": "4"
    },
    {
      "name": "James",
      "dp":
          "https://images.pexels.com/photos/768053/pexels-photo-768053.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
      "msg": "Are you free this weekend?",
      "time": "Yesterday",
      "count": "2"
    },
    {
      "name": "Ella",
      "dp":
          "https://images.pexels.com/photos/1130626/pexels-photo-1130626.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
      "msg": "Got a new recipe to try",
      "time": "3 days ago",
      "count": "6"
    },
    {
      "name": "Lucas",
      "dp":
          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
      "msg": "Just finished the report",
      "time": "2:28AM",
      "count": "0"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            12,
            (index) => ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DmPage(),
                  ),
                );
              },
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(wpDataList[index]["dp"]),
              ),
              title: Text(
                wpDataList[index]["name"],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              subtitle: Text(wpDataList[index]["msg"]),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    wpDataList[index]["time"],
                    style: TextStyle(
                        color: wpDataList[index]["count"] == "0"
                            ? Colors.black54
                            : Colors.green),
                  ),
                  wpDataList[index]["count"] != "0"
                      ? CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.green,
                          child: Text(
                            wpDataList[index]["count"],
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      : SizedBox()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
