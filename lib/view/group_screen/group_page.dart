import 'package:flutter/material.dart';

class GroupPage extends StatefulWidget {
  const GroupPage({super.key});

  @override
  State<GroupPage> createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  List gpListData = [
    {
      "name": "Ava",
      "bio": "Hey there! I am using WhatsApp",
      "dp":
          "https://images.pexels.com/photos/17683947/pexels-photo-17683947/free-photo-of-brunette-woman-in-white-blouse-and-black-maxi-skirt-leaning-on-a-tree.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Ben",
      "bio": "Living life to the fullest!",
      "dp":
          "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Charlie",
      "bio": "Always up for an adventure.",
      "dp":
          "https://images.pexels.com/photos/17683947/pexels-photo-17683947/free-photo-of-brunette-woman-in-white-blouse-and-black-maxi-skirt-leaning-on-a-tree.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "David",
      "bio": "Exploring the world one day at a time.",
      "dp":
          "https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Ella",
      "bio": "Chasing dreams and sunsets.",
      "dp":
          "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Finn",
      "bio": "A journey of a thousand miles begins with a single step.",
      "dp":
          "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Grace",
      "bio": "Spread love and positivity.",
      "dp":
          "https://images.pexels.com/photos/27843966/pexels-photo-27843966/free-photo-of-a-woman-sitting-in-a-field-with-a-mirror.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Henry",
      "bio": "Learning every day.",
      "dp":
          "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Ivy",
      "bio": "Smiling through it all.",
      "dp":
          "https://images.pexels.com/photos/1542085/pexels-photo-1542085.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Jack",
      "bio": "Living in the moment.",
      "dp":
          "https://images.pexels.com/photos/936001/pexels-photo-936001.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Kate",
      "bio": "Creating memories every day.",
      "dp":
          "https://images.pexels.com/photos/20227617/pexels-photo-20227617/free-photo-of-hiker-with-a-backpack-looking-from-the-top-of-the-mountain.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Leo",
      "bio": "Dream big, achieve bigger.",
      "dp":
          "https://images.pexels.com/photos/27425232/pexels-photo-27425232/free-photo-of-feeling-lost.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Mia",
      "bio": "Loving life and all it brings.",
      "dp":
          "https://images.pexels.com/photos/18734694/pexels-photo-18734694/free-photo-of-mother-toughing-baby.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Noah",
      "bio": "Chasing success and happiness.",
      "dp":
          "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Olivia",
      "bio": "Brightening the world with a smile.",
      "dp":
          "https://images.pexels.com/photos/28074114/pexels-photo-28074114/free-photo-of-a-woman-sitting-on-a-white-chair-with-her-legs-crossed.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Parker",
      "bio": "Ready for anything life throws my way.",
      "dp":
          "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Quinn",
      "bio": "Making every moment count.",
      "dp":
          "https://images.pexels.com/photos/27797571/pexels-photo-27797571/free-photo-of-a-woman-in-a-basketball-jersey-is-holding-up-her-hand.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Ruby",
      "bio": "Living life in color.",
      "dp":
          "https://images.pexels.com/photos/27945902/pexels-photo-27945902/free-photo-of-portrait-of-woman-wearing-white-shirt-on-street.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Sam",
      "bio": "Embracing every opportunity.",
      "dp":
          "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Tara",
      "bio": "Finding joy in the little things.",
      "dp":
          "https://images.pexels.com/photos/27052953/pexels-photo-27052953/free-photo-of-woman-sitting-at-a-table.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Uma",
      "bio": "Living with purpose and passion.",
      "dp":
          "https://images.pexels.com/photos/27741894/pexels-photo-27741894/free-photo-of-young-woman-in-a-red-dress.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Vince",
      "bio": "Driven by dreams.",
      "dp":
          "https://images.pexels.com/photos/27521042/pexels-photo-27521042/free-photo-of-portrait-of-a-smiling-man-with-long-hair.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Willow",
      "bio": "Enjoying life's journey.",
      "dp":
          "https://images.pexels.com/photos/27954882/pexels-photo-27954882/free-photo-of-a-woman-in-a-white-dress-and-hat-standing-by-a-door.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Xander",
      "bio": "Making the best out of every situation.",
      "dp":
          "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Yara",
      "bio": "Grateful for the present, excited for the future.",
      "dp":
          "https://images.pexels.com/photos/754313/pexels-photo-754313.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Zane",
      "bio": "Adventurer at heart.",
      "dp":
          "https://images.pexels.com/photos/1278732/pexels-photo-1278732.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    }
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
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New group",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            Text(
              "Add participants",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          itemCount: 26,
          shrinkWrap: true,
          itemBuilder: (context, index) => ListTile(
            contentPadding: EdgeInsets.all(3),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(gpListData[index]["dp"]),
            ),
            title: Text(
              gpListData[index]["name"],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            subtitle: Text(gpListData[index]["bio"]),
          ),
        ),
      ),
    );
  }
}
