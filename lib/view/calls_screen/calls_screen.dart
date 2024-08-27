import 'package:flutter/material.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({super.key});

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  List callDataList = [
    {
      "name": "John Doe",
      "time": "5 minutes ago",
      "dp":
          "https://images.pexels.com/photos/27439406/pexels-photo-27439406/free-photo-of-a-cup-of-coffee-sits-on-a-bed-with-pillows.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Emma Smith",
      "time": "10 minutes ago",
      "dp":
          "https://images.pexels.com/photos/27890863/pexels-photo-27890863/free-photo-of-processed-with-vsco-with-m5-preset.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Liam Johnson",
      "time": "2 hours ago",
      "dp":
          "https://images.pexels.com/photos/19774934/pexels-photo-19774934/free-photo-of-cute-girl-on-courtyard-wearing-traditional-dress-with-fan.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Olivia Brown",
      "time": "20 minutes ago",
      "dp":
          "https://images.pexels.com/photos/210182/pexels-photo-210182.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Noah Davis",
      "time": "30 minutes ago",
      "dp":
          "https://images.pexels.com/photos/27945905/pexels-photo-27945905/free-photo-of-a-woman-with-red-hair-and-a-white-coat-standing-by-a-wall.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
    },
    {
      "name": "Sophia Wilson",
      "time": "45 minutes ago",
      "dp":
          "https://images.pexels.com/photos/25037487/pexels-photo-25037487/free-photo-of-man-on-a-walk-with-brown-dog.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "James Martinez",
      "time": "1 hour ago",
      "dp":
          "https://images.pexels.com/photos/247932/pexels-photo-247932.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Ava Taylor",
      "time": "2 hours ago",
      "dp":
          "https://images.pexels.com/photos/1382734/pexels-photo-1382734.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Ethan Thomas",
      "time": "3 hours ago",
      "dp":
          "https://images.pexels.com/photos/27849548/pexels-photo-27849548/free-photo-of-portrait-of-men-in-forest.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Isabella White",
      "time": "4 hours ago",
      "dp":
          "https://images.pexels.com/photos/27815886/pexels-photo-27815886/free-photo-of-a-woman-sitting-on-top-of-a-bookcase.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Mason Lee",
      "time": "5 hours ago",
      "dp":
          "https://images.pexels.com/photos/26792276/pexels-photo-26792276/free-photo-of-a-couple-holding-hands-and-running-on-a-dirt-road.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Mia Harris",
      "time": "6 hours ago",
      "dp":
          "https://images.pexels.com/photos/257360/pexels-photo-257360.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Lucas Walker",
      "time": "Yesterday",
      "dp":
          "https://images.pexels.com/photos/3320908/pexels-photo-3320908.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Charlotte Young",
      "time": "Yesterday",
      "dp":
          "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Aiden King",
      "time": "2 days ago",
      "dp":
          "https://images.pexels.com/photos/457881/pexels-photo-457881.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Amelia Scott",
      "time": "2 days ago",
      "dp":
          "https://images.pexels.com/photos/210182/pexels-photo-210182.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: EdgeInsets.all(5),
        itemCount: 15,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(callDataList[index]["dp"]),
            radius: 30,
          ),
          title: Text(callDataList[index]["name"]),
          subtitle: Text(callDataList[index]["time"]),
          trailing: callDataList[index]["time"] == ("2 hours ago")
              ? Icon(
                  Icons.videocam_rounded,
                  color: Color.fromARGB(255, 44, 126, 45),
                )
              : Icon(
                  Icons.call,
                  color: Color.fromARGB(255, 44, 126, 45),
                ),
        ),
      ),
    );
  }
}
