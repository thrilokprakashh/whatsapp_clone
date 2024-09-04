import 'package:flutter/material.dart';
import 'package:whats_app_task/main.dart';
import 'package:whats_app_task/view/medias_screen/docs_page.dart';
import 'package:whats_app_task/view/medias_screen/firstMedia_page.dart';
import 'package:whats_app_task/view/medias_screen/links_page.dart';

class MediaPage extends StatefulWidget {
  const MediaPage({super.key});

  @override
  State<MediaPage> createState() => _MediaPageState();
}

class _MediaPageState extends State<MediaPage> {
  List mediaDataList = [
    {
      "name": "John",
    },
    {
      "name": "Emily",
    },
    {
      "name": "Michael",
    },
    {
      "name": "Sophia",
    },
    {
      "name": "Daniel",
    },
    {
      "name": "Ava",
    },
    {
      "name": "David",
    },
    {
      "name": "Lily",
    },
    {
      "name": "Mia",
    },
    {
      "name": "James",
    },
    {
      "name": "Ella",
    },
    {
      "name": "Lucas",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
          title: Text(
            mediaDataList[dmIndex]["name"],
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          actions: [
            SizedBox(
              width: 30,
            ),
            SizedBox(
              width: 30,
            ),
          ],
          bottom: TabBar(
            onTap: (value) {},
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 3,
            dividerHeight: 0,
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            tabs: [
              Tab(
                text: "MEDIA",
              ),
              Tab(
                text: "DOCS",
              ),
              Tab(
                text: "LINKS",
              ),
            ],
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            FirstmediaPage(),
            DocsPage(),
            LinksPage(),
          ],
        ),
      ),
    );
  }
}
