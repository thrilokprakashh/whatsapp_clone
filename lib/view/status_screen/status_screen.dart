import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  List stDataList = [
    {
      "name": "Sophia",
      "time": "Today, 12:30 am",
      "status":
          "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Alex",
      "time": "Today, 1:40 pm",
      "status":
          "https://images.pexels.com/photos/457881/pexels-photo-457881.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Liam",
      "time": "Yesterday, 10:40 am",
      "status":
          "https://images.pexels.com/photos/210182/pexels-photo-210182.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
  ];
  List viewDataList = [
    {
      "name": "Emma",
      "time": "Today, 9:00 am",
      "status":
          "https://images.pexels.com/photos/1382734/pexels-photo-1382734.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Olivia",
      "time": "Yesterday, 3:15 pm",
      "status":
          "https://images.pexels.com/photos/247932/pexels-photo-247932.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 10, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.only(bottom: 5),
                children: [
                  ListTile(
                    leading: Stack(
                      children: [
                        Container(
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black54, width: 1),
                          ),
                        ),
                        Positioned(
                          left: 5,
                          top: 3,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://images.pexels.com/photos/27245748/pexels-photo-27245748/free-photo-of-fog-over-the-dolomites.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"),
                            radius: 25,
                          ),
                        ),
                      ],
                    ),
                    title: Text(
                      "My Status",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    subtitle: Text("Today, 12:30 am"),
                    trailing: Icon(
                      Icons.more_horiz,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                    ),
                    child: Text(
                      "Recent Updates",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black54),
                    ),
                  ),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) => ListTile(
                  leading: Stack(
                    children: [
                      Container(
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.blue, width: 1),
                        ),
                      ),
                      Positioned(
                        left: 5,
                        top: 3,
                        child: CircleAvatar(
                          backgroundImage:
                              NetworkImage(stDataList[index]["status"]),
                          radius: 25,
                        ),
                      ),
                    ],
                  ),
                  title: Text(
                    stDataList[index]["name"],
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  subtitle: Text(stDataList[index]["time"]),
                ),
                itemCount: 3,
                physics: NeverScrollableScrollPhysics(),
              ),
              Text(
                'Viewed Updates',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black54),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => ListTile(
                    leading: Stack(
                      children: [
                        Container(
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black54, width: 1),
                          ),
                        ),
                        Positioned(
                          left: 5,
                          top: 3,
                          child: CircleAvatar(
                            backgroundImage:
                                NetworkImage(viewDataList[index]["status"]),
                            radius: 25,
                          ),
                        ),
                      ],
                    ),
                    title: Text(
                      viewDataList[index]["name"],
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    subtitle: Text(viewDataList[index]["time"]),
                  ),
                  itemCount: 2,
                  physics: NeverScrollableScrollPhysics(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
