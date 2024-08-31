import 'package:flutter/material.dart';

class DmPage extends StatefulWidget {
  const DmPage({super.key});

  @override
  State<DmPage> createState() => _DmPageState();
}

class _DmPageState extends State<DmPage> {
  List dmDataList = [
    {
      "name": "John",
      "dp":
          "https://images.pexels.com/photos/27439406/pexels-photo-27439406/free-photo-of-a-cup-of-coffee-sits-on-a-bed-with-pillows.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
    },
    {
      "name": "Emily",
      "dp":
          "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
    },
    {
      "name": "Michael",
      "dp":
          "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
    },
    {
      "name": "Sophia",
      "dp":
          "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
    },
    {
      "name": "Daniel",
      "dp":
          "https://images.pexels.com/photos/150311/pexels-photo-150311.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
    },
    {
      "name": "Ava",
      "dp":
          "https://images.pexels.com/photos/247285/pexels-photo-247285.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
    },
    {
      "name": "David",
      "dp":
          "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
    },
    {
      "name": "Lily",
      "dp":
          "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
    },
    {
      "name": "Mia",
      "dp":
          "https://images.pexels.com/photos/2825577/pexels-photo-2825577.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
    },
    {
      "name": "James",
      "dp":
          "https://images.pexels.com/photos/768053/pexels-photo-768053.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
    },
    {
      "name": "Ella",
      "dp":
          "https://images.pexels.com/photos/1130626/pexels-photo-1130626.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
    },
    {
      "name": "Lucas",
      "dp":
          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
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
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: 23,
              backgroundImage: NetworkImage(dmDataList[0]["dp"]),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              dmDataList[0]["name"],
              style: TextStyle(color: Colors.white, fontSize: 21),
            ),
          ],
        ),
        actions: [
          Icon(
            Icons.videocam_rounded,
            size: 30,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.call_rounded,
            size: 27,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          PopupMenuButton(
            iconColor: Colors.white,
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 30,
            ),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text("View contact"),
                onTap: () {},
              ),
              PopupMenuItem(
                child: Text("Media, links, and docs"),
                onTap: () {},
              ),
              PopupMenuItem(
                child: Text("Mute notifications"),
                onTap: () {},
              ),
              PopupMenuItem(
                child: Text("Wallpaper"),
                onTap: () {},
              ),
              PopupMenuItem(
                child: Text("More"),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
