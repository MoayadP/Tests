import 'package:flutter/material.dart';
import 'package:ui_test_1/post_page.dart';
import 'package:ui_test_1/profile_page.dart';

import 'messenger_page.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App",
      home: HomePage(),
    ));

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustom(context),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return PostsListState();
        },
      ),
    );
  }
}

// ignore: use_key_in_widget_constructors
class PostsListState extends StatefulWidget {
  @override
  PostsList createState() => PostsList();
}

class PostsList extends State<PostsListState> {
  String text = '+ Follow  ';
  Color textColor = Colors.blue;

  String likeText = 'Like';
  Color likeTextColor = Colors.black87;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 536,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
        child: Card(
          elevation: 20,
          shadowColor: Colors.black,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              postHeader(context, text, stateSetter, textColor),
              postBody(context),
              postReactionsCount(),
              postActionsBar(
                  context, likeButtonStateSetter, likeText, likeTextColor),
            ],
          ),
        ),
      ),
    );
  }

  void stateSetter() {
    setState(() {
      if (text == '+ Follow  ') {
        text = '+ Followed  ';
        textColor = Colors.amber;
      } else {
        text = '+ Follow  ';
        textColor = Colors.blue;
      }
    });
  }

  void likeButtonStateSetter() {
    setState(() {
      if (likeText == 'Like') {
        likeText = 'Liked';
        likeTextColor = Colors.blue;
      } else {
        likeText = 'Like';
        likeTextColor = Colors.black87;
      }
    });
  }
}

PreferredSize appBarCustom(BuildContext context) => PreferredSize(
      preferredSize: Size.fromHeight(46),
      child: AppBar(
        backgroundColor: Colors.white,
        leading: TextButton(
          style: TextButton.styleFrom(padding: EdgeInsets.all(4)),
          onPressed: () {},
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/tree.jpg')),
                shape: BoxShape.circle),
          ),
        ),
        title: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey[200],
          ),
          alignment: Alignment.centerLeft,
          child: TextField(
            decoration: InputDecoration(
                icon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.grey[500],
                  ),
                ),
                border: InputBorder.none,
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.grey[500])),
          ),
        ),
        actions: [
          TextButton(
            style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.blue[200])),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MessengerPage()),
              );
            },
            child: Icon(
              Icons.message,
              color: Colors.black54,
            ),
          )
        ],
      ),
    );

Widget postHeader(BuildContext context, String text, VoidCallback stateSetter,
        Color textColor) =>
    Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
            style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/fantasy.jpg'))),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.fromLTRB(0, 0, 3, 0),
                minimumSize: Size.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: Row(
                children: const [
                  Text(
                    'Flutter Course',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Icon(
                    Icons.verified_rounded,
                    size: 16,
                  )
                ],
              ),
            ),
            Text(
              'Software Developer . 1st',
              style: TextStyle(fontSize: 13, color: Colors.grey[700]),
            ),
            Row(
              children: [
                Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '1w . ',
                      style: TextStyle(fontSize: 13, color: Colors.grey[700]),
                    )),
                Icon(
                  Icons.public,
                  color: Colors.grey[600],
                  size: 16,
                )
              ],
            ),
          ],
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
          child: TextButton(
            onPressed: stateSetter,
            child: Text(
              text,
              style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );

Widget postBody(BuildContext context) => Padding(
      padding: const EdgeInsets.fromLTRB(3, 5, 3, 0),
      child: Card(
          elevation: 10,
          shadowColor: Colors.black,
          child: TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PostPage()));
            },
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
            child: Column(children: [
              SizedBox(
                height: 50,
                child: Align(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'This post is a test post for the layout!',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                  ),
                  alignment: Alignment.topLeft,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                      child: Text(
                        '#Hello',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                      child: Text(
                        '#Test',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                child: SizedBox(
                  height: 250,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/railway.jpg'))),
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              )
            ]),
          )),
    );

Widget postReactionsCount() => SizedBox(
      height: 40,
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.celebration,
              color: Colors.blue,
            ),
            const SizedBox(
              width: 5,
            ),
            Icon(
              Icons.favorite,
              color: Colors.red[400],
            ),
            Icon(
              Icons.bolt,
              color: Colors.amber,
            ),
            Text(
              ' 2.1k',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
            )
          ],
        ),
      ),
    );

Widget postActionsBar(BuildContext context, VoidCallback likeButtonStateSetter,
        String likeText, Color likeTextColor) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        likeButtonPostBottomBar(
            likeText,
            likeTextColor,
            MediaQuery.of(context).size.width * 30 / 100,
            likeTextColor,
            likeTextColor,
            Icons.celebration,
            likeTextColor,
            likeButtonStateSetter),
        postBottomBar(
            'Comment',
            Colors.black,
            MediaQuery.of(context).size.width * 32 / 100,
            Colors.black,
            Colors.black,
            Icons.comment,
            Colors.black),
        postBottomBar(
            'Share',
            Colors.black,
            MediaQuery.of(context).size.width * 30 / 100,
            Colors.black,
            Colors.black,
            Icons.share,
            Colors.black)
      ],
    );

Widget postBottomBar(String title, Color titleColor, double containerWidth,
        Color shadowColor, Color borderColor, IconData icon, Color iconColor) =>
    Container(
      padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
      alignment: Alignment.center,
      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(width: 0.4, color: borderColor))),
            shadowColor: MaterialStateProperty.all(shadowColor),
            overlayColor: MaterialStateProperty.all(Colors.grey[200]),
            backgroundColor: MaterialStateProperty.all(Colors.white)),
        onPressed: () {},
        child: Container(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 16,
                color: iconColor,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                title,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: titleColor),
              ),
            ],
          ),
        ),
      ),
      height: 45,
      width: containerWidth,
    );

Widget likeButtonPostBottomBar(
        String title,
        Color titleColor,
        double containerWidth,
        Color shadowColor,
        Color borderColor,
        IconData icon,
        Color iconColor,
        VoidCallback likeButtonStateSetter) =>
    Container(
      padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
      alignment: Alignment.center,
      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(width: 0.4, color: borderColor))),
            shadowColor: MaterialStateProperty.all(shadowColor),
            overlayColor: MaterialStateProperty.all(Colors.grey[200]),
            backgroundColor: MaterialStateProperty.all(Colors.white)),
        onPressed: likeButtonStateSetter,
        child: Container(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 16,
                color: iconColor,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                title,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: titleColor),
              ),
            ],
          ),
        ),
      ),
      height: 45,
      width: containerWidth,
    );
