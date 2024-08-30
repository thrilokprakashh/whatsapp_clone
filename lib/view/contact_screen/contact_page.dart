import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  List contDataList = [
    {
      "name": "John Doe",
      "dp":
          "https://images.pexels.com/photos/27976680/pexels-photo-27976680/free-photo-of-nigerian-man-in-traditional-yoruba-attire.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Jane Smith",
      "dp":
          "https://images.pexels.com/photos/27849560/pexels-photo-27849560/free-photo-of-two-people-standing-in-front-of-a-tree.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Michael Johnson",
      "dp":
          "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Emily Davis",
      "dp":
          "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "David Wilson",
      "dp":
          "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Sophia Martinez",
      "dp":
          "https://images.pexels.com/photos/1081677/pexels-photo-1081677.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Daniel Brown",
      "dp":
          "https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Olivia Taylor",
      "dp":
          "https://images.pexels.com/photos/1804512/pexels-photo-1804512.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "James Anderson",
      "dp":
          "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Isabella Thomas",
      "dp":
          "https://images.pexels.com/photos/27944624/pexels-photo-27944624/free-photo-of-a-woman-in-a-skirt-leaning-against-a-wall.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "William Rodriguez",
      "dp":
          "https://images.pexels.com/photos/1231237/pexels-photo-1231237.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Mia Garcia",
      "dp":
          "https://images.pexels.com/photos/1144687/pexels-photo-1144687.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Elijah Martinez",
      "dp":
          "https://images.pexels.com/photos/374822/pexels-photo-374822.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Ava White",
      "dp":
          "https://images.pexels.com/photos/874158/pexels-photo-874158.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Alexander Lewis",
      "dp":
          "https://images.pexels.com/photos/20787/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Charlotte Lee",
      "dp":
          "https://images.pexels.com/photos/1006110/pexels-photo-1006110.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Benjamin Walker",
      "dp":
          "https://images.pexels.com/photos/999267/pexels-photo-999267.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Evelyn Harris",
      "dp":
          "https://images.pexels.com/photos/3184298/pexels-photo-3184298.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Lucas Clark",
      "dp":
          "https://images.pexels.com/photos/27837778/pexels-photo-27837778/free-photo-of-banca-de-jornal.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Amelia Hall",
      "dp":
          "https://images.pexels.com/photos/1586996/pexels-photo-1586996.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
    },
    {
      "name": "Henry Young",
      "dp":
          "https://images.pexels.com/photos/27849553/pexels-photo-27849553/free-photo-of-man-in-shirt-and-sunglasses-lying-down-on-grass.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load"
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
              "Select Contact",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            Text(
              " 110 contacts",
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
                child: Text("Invite a friend"),
                onTap: () {},
              ),
              PopupMenuItem(
                child: Text("Contacts"),
                onTap: () {},
              ),
              PopupMenuItem(
                child: Text("Refresh"),
                onTap: () {},
              ),
              PopupMenuItem(
                child: Text("Help"),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color.fromARGB(255, 44, 126, 45),
                    child: Icon(
                      Icons.group,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "New group",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color.fromARGB(255, 44, 126, 45),
                    child: Icon(
                      Icons.person_add,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "New Contact",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Spacer(),
                  Icon(Icons.qr_code)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color.fromARGB(255, 44, 126, 45),
                    child: Icon(
                      Icons.groups,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "New Community",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Contact on WhatsApp",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 21,
              itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(contDataList[index]["dp"]),
                ),
                title: Text(
                  contDataList[index]["name"],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: SizedBox(
                  height: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
