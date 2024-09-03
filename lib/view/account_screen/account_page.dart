import 'package:flutter/material.dart';
import 'package:whats_app_task/main.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  List accDataList = [
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 384,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  accDataList[dmIndex]["dp"],
                ),
              ),
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 50),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 55, vertical: 13),
                    child: Text(
                      accDataList[dmIndex]["name"],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.black12,
            thickness: 16,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 14),
            child: Text(
              "Mute notifications",
              style: TextStyle(fontSize: 19),
            ),
          ),
          Divider(
            color: Colors.black12,
            thickness: 1,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 14),
            child: Text(
              "Custom notifications",
              style: TextStyle(fontSize: 19),
            ),
          ),
          Divider(
            color: Colors.black12,
            thickness: 1,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 14),
            child: Text(
              "Media visibility",
              style: TextStyle(fontSize: 19),
            ),
          ),
          Divider(
            color: Colors.black12,
            thickness: 16,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Disappearing messages",
                  style: TextStyle(fontSize: 19),
                ),
                Text(
                  "off",
                  style: TextStyle(fontSize: 14, color: Colors.black45),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.black12,
            thickness: 1,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 14),
            child: Text(
              "Custom notifications",
              style: TextStyle(fontSize: 19),
            ),
          ),
          Divider(
            color: Colors.black12,
            thickness: 16,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 14),
            child: Row(
              children: [
                Icon(
                  Icons.not_interested_rounded,
                  color: Colors.red,
                  size: 30,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Block",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  accDataList[dmIndex]["name"],
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 14),
            child: Row(
              children: [
                Icon(
                  Icons.thumb_down_alt_outlined,
                  color: Colors.red,
                  size: 30,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Report",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  accDataList[dmIndex]["name"],
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
