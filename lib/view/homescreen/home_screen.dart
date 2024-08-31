import 'package:flutter/material.dart';
import 'package:whats_app_task/view/broadcast_screen/broadcast_page.dart';
import 'package:whats_app_task/view/calls_screen/calls_screen.dart';
import 'package:whats_app_task/view/camera_screen/camera_screen.dart';
import 'package:whats_app_task/view/chats_screen/chats_screen.dart';
import 'package:whats_app_task/view/contact_screen/contact_page.dart';
import 'package:whats_app_task/view/group_screen/group_page.dart';
import 'package:whats_app_task/view/settings/settings_page.dart';
import 'package:whats_app_task/view/status_privacy_screen/status_privacy_page.dart';
import 'package:whats_app_task/view/status_screen/status_screen.dart';
import 'package:whats_app_task/view/whatsapp_web/whats_app_webpage.dart';

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
                else if (flotIndex == 2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CameraScreen(),
                    ),
                  );
                }
              },
              child: flotIndex == 1
                  ? Icon(
                      Icons.message,
                      color: Colors.white,
                    )
                  : flotIndex == 2
                      ? Icon(
                          Icons.camera_alt,
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
              itemBuilder: (context) {
                if (flotIndex == 1) {
                  return [
                    PopupMenuItem(
                      child: Text("New group"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GroupPage(),
                          ),
                        );
                      },
                    ),
                    PopupMenuItem(
                      child: Text("New broadcast"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BroadcastPage(),
                          ),
                        );
                      },
                    ),
                    PopupMenuItem(
                      child: Text("WhatsApp Web"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WhatsAppWebpage(),
                          ),
                        );
                      },
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
                  ];
                } else if (flotIndex == 2) {
                  return [
                    PopupMenuItem(
                      child: Text("Status privacy"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StatusPrivacyPage(),
                          ),
                        );
                      },
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
                  ];
                } else {
                  return [
                    PopupMenuItem(
                      child: Text("Clear call log"),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            shape: RoundedRectangleBorder(),
                            title: Text(
                              """Do you want to clear your entire call 
log?""",
                              style: TextStyle(
                                fontSize: 17,
                              ),
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
                      child: Text("Settings"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SettingsPage(),
                          ),
                        );
                      },
                    )
                  ];
                }
              },
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
