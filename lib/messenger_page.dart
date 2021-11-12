import 'package:flutter/material.dart';

class MessengerPage extends StatelessWidget {
  const MessengerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black87,
          title: Text('Messenger'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(
                  Icons.mail,
                ),
              ),
              Tab(
                icon: Icon(Icons.favorite_rounded),
              ),
              Tab(
                icon: Icon(Icons.settings),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            allChatsList(),
            Center(
              child: Text(
                "Favorite chats goes here..",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Center(
              child: Text(
                "Messenger Settings",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget allChatsList() => SizedBox(
    height: 500,
    child: ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return chatBar();
      },
    ));

Widget chatBar() => TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(padding: EdgeInsets.zero),
      child: Container(
        height: 85,
        padding: EdgeInsets.all(7),
        decoration: BoxDecoration(border: Border.all(width: 0.1)),
        child: Row(
          children: [
            Container(
              height: 65,
              width: 65,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/fantasy.jpg'))),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 13, 3, 2),
                  child: Text(
                    'Flutter Course',
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 0, 3, 10),
                  child: Row(
                    children: const [
                      Text(
                        'You : ',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                      Text('مرحبا',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87))
                    ],
                  ),
                )
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.lightBlue),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '2',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
