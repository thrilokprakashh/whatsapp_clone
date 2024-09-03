import 'package:flutter/material.dart';
import 'package:whats_app_task/main.dart';
import 'package:whats_app_task/view/camera_screen/camera_screen.dart';

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
  String? mute;
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
              radius: 22,
              backgroundImage: NetworkImage(dmDataList[dmIndex]["dp"]),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              dmDataList[dmIndex]["name"],
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
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      shape: RoundedRectangleBorder(),
                      title: Column(
                        children: [
                          Text(
                            "Mute notifications for...",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          RadioListTile(
                            activeColor: Color.fromARGB(255, 44, 126, 45),
                            title: Text(
                              "8 hours",
                              style: TextStyle(fontSize: 17),
                            ),
                            value: "8 hours",
                            groupValue: mute,
                            onChanged: (value) {
                              mute = value as String?;
                              setState(() {});
                            },
                          ),
                          RadioListTile(
                            activeColor: Color.fromARGB(255, 44, 126, 45),
                            title: Text(
                              "1 week",
                              style: TextStyle(fontSize: 17),
                            ),
                            value: "1 week",
                            groupValue: mute,
                            onChanged: (value) {
                              mute = value as String?;
                              setState(() {});
                            },
                          ),
                          RadioListTile(
                            activeColor: Color.fromARGB(255, 44, 126, 45),
                            title: Text(
                              "Always",
                              style: TextStyle(fontSize: 17),
                            ),
                            value: "always",
                            groupValue: mute,
                            onChanged: (value) {
                              mute = value as String?;
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "CANCEL",
                            style: TextStyle(
                              color: Color.fromARGB(255, 44, 126, 45),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "OK",
                            style: TextStyle(
                              color: Color.fromARGB(255, 44, 126, 45),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
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
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image:
                      AssetImage("assets/8c98994518b575bfd8c949e91d20548b.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12),
            child: Column(
              children: [
                Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6)),
                    child: Text(
                      "TODAY",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                ),
                SizedBox(height: 13),
                Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 243, 199),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.lock,
                              size: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Messages and calls are end-to-end",
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        Text(
                          "encrypted. No one outside of this chat, not",
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          "even WhatsApp, can read or listen to them.",
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Type a message",
                              hintStyle: TextStyle(
                                  color: Colors.black87, fontSize: 20),
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.emoji_emotions,
                                size: 25,
                                color: Colors.black54,
                              ),
                              suffixIcon: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      showModalBottomSheet(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                        ),
                                        context: context,
                                        builder: (context) => Container(
                                          width: double.infinity,
                                        ),
                                      );
                                    },
                                    icon: Icon(
                                      Icons.attachment_rounded,
                                      color: Colors.black54,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => CameraScreen(),
                                        ),
                                      );
                                    },
                                    icon: Icon(Icons.camera_alt_rounded,
                                        color: Colors.black54),
                                  ),
                                ],
                              ),
                            ),
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 44, 126, 45),
                        radius: 30,
                        child: Icon(
                          Icons.keyboard_voice_sharp,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
