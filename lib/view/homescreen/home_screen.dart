import 'package:flutter/material.dart';
import 'package:whats_app_task/view/calls_screen/calls_screen.dart';
import 'package:whats_app_task/view/camera_screen/camera_screen.dart';
import 'package:whats_app_task/view/chats_screen/chats_screen.dart';
import 'package:whats_app_task/view/contact_screen/contact_page.dart';
import 'package:whats_app_task/view/settings/settings_page.dart';
import 'package:whats_app_task/view/status_screen/status_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int flotIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        floatingActionButton: Visibility(
          visible: flotIndex != 0,
          child: FloatingActionButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              backgroundColor: Color.fromARGB(255, 44, 126, 45),
              onPressed: () {
                if (flotIndex == 1)
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ContactPage(),
                    ),
                  );
              },
              child: flotIndex == 1
                  ? Icon(
                      Icons.message,
                      color: Colors.white,
                    )
                  : flotIndex == 2
                      ? Icon(
                          Icons.create,
                          color: Colors.white,
                        )
                      : Icon(
                          Icons.add_call,
                          color: Colors.white,
                        )),
        ),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 44, 126, 45),
          title: Text("WhatsApp"),
          titleTextStyle: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          actions: [
            Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
            SizedBox(
              width: 15,
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
                  child: Text("New group"),
                  onTap: () {},
                ),
                PopupMenuItem(
                  child: Text("New broadcast"),
                  onTap: () {},
                ),
                PopupMenuItem(
                  child: Text("WhatsApp Web"),
                  onTap: () {},
                ),
                PopupMenuItem(
                  child: Text("Starred messages"),
                  onTap: () {},
                ),
                PopupMenuItem(
                  child: Text("Settings"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SettingsPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
          bottom: TabBar(
            onTap: (index) {
              setState(() {
                flotIndex = index;
              });
            },
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 3,
            dividerHeight: 0,
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ],
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            CameraScreen(),
            ChatsScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
      ),
    );
  }
}
