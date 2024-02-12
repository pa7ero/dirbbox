import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf2f2f2),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFf2f2f2),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text('My Profile'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.all(25),
            height: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                        width: 63,
                        height: 63,
                        child: Image.asset(
                          './assets/images/Profile.png',
                          fit: BoxFit.cover,
                        )),
                    SizedBox(height: 15),
                    Text(
                      'Neelesh Chaudhary',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text('UI / UX Designer'),
                    SizedBox(height: 1),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 50,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color(0xFFFF317B),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                        child: Text(
                      'PRO',
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Folder',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 85,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.add),
                      Icon(Icons.tune),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  icon1: Icon(
                    Icons.folder,
                    color: Colors.blue,
                    size: 40,
                  ),
                  icon2: Icon(
                    Icons.more_vert,
                    color: Colors.blue,
                    size: 25,
                  ),
                  title: "Mobile Apps",
                  date: "December 20.2020",
                  color: Color(0xFF415EB6),
                ),
                CardFolder(
                  icon1: Icon(
                    Icons.folder,
                    color: Colors.amber,
                    size: 40,
                  ),
                  icon2: Icon(
                    Icons.more_vert,
                    color: Colors.amber,
                    size: 25,
                  ),
                  title: "Mobile Apps",
                  date: "December 20.2020",
                  color: Color(0xFFFFB110),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  icon1: Icon(
                    Icons.folder,
                    color: Colors.redAccent,
                    size: 40,
                  ),
                  icon2: Icon(
                    Icons.more_vert,
                    color: Colors.redAccent,
                    size: 25,
                  ),
                  title: "Mobile Apps",
                  date: "December 20.2020",
                  color: Color(0xFFAC4040),
                ),
                CardFolder(
                  icon1: Icon(
                    Icons.folder,
                    color: Colors.green,
                    size: 40,
                  ),
                  icon2: Icon(
                    Icons.more_vert,
                    color: Colors.green,
                    size: 25,
                  ),
                  title: "Mobile Apps",
                  date: "December 20.2020",
                  color: Color(0xFF23B0B0),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Uploads',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.swap_vert),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ListTile(
            leading: Container(
                width: 60,
                height: 60,
                child: Image.asset(
                  './assets/images/Word Icon.png',
                  fit: BoxFit.cover,
                )),
            title: Text(
              'Projects.docx',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Novemaber 22.2020'),
            trailing: Text('300Kb'),
          )
        ],
      ),
    );
  }
}

class CardFolder extends StatelessWidget {
  CardFolder({
    super.key,
    required this.title,
    required this.date,
    required this.color,
    required this.icon1,
    required this.icon2,
  });
  final String title;
  final String date;
  final Color color;
  final Icon icon1;
  final Icon icon2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: 160,
      height: 100,
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              icon1,
              icon2,
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          Text(
            date,
            style: TextStyle(
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
