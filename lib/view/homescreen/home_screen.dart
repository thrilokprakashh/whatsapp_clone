import 'package:flutter/material.dart';
import 'package:whats_app_task/view/calls_screen/calls_screen.dart';
import 'package:whats_app_task/view/camera_screen/camera_screen.dart';
import 'package:whats_app_task/view/chats_screen/chats_screen.dart';
import 'package:whats_app_task/view/status_screen/status_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          backgroundColor: Color.fromARGB(255, 44, 126, 45),
          onPressed: () {},
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
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
              width: 20,
            ),
            Icon(
              Icons.more_vert,
              size: 30,
              color: Colors.white,
            ),
          ],
          bottom: TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 5,
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
