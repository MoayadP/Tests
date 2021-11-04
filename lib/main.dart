import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: appBarCustom(),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return PostsList();
          },
        ),
      ),
    );
  }
}

class PostsList extends StatelessWidget {
  const PostsList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 536,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
        child: Card(
          elevation: 20,
          shadowColor: Colors.grey[700],
          child: Container(
            decoration: BoxDecoration(color: Colors.black87),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                postHeader(),
                postBody(),
                postReactionsCount(),
                postActionsBar(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

PreferredSize appBarCustom() => PreferredSize(
      preferredSize: Size.fromHeight(46),
      child: AppBar(
        backgroundColor: Colors.black54,
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
            onPressed: () {},
            child: Icon(
              Icons.message,
              color: Colors.grey[500],
            ),
          )
        ],
      ),
    );

Widget postHeader() => Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            onPressed: () {},
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
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.fromLTRB(0, 0, 3, 0),
                minimumSize: Size.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: Row(
                children: const [
                  Text(
                    'Mira Moayad',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
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
            onPressed: () {},
            child: Text(
              '+ Follow   ',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );

Widget postBody() => Padding(
      padding: const EdgeInsets.fromLTRB(3, 5, 3, 0),
      child: Card(
          elevation: 10,
          shadowColor: Colors.grey[800],
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
                padding: EdgeInsets.zero, backgroundColor: Colors.black87),
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
                          color: Colors.white),
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
              Icons.verified,
              color: Colors.red[400],
            ),
            Icon(
              Icons.bolt,
              color: Colors.amber,
            ),
            Text(
              ' 2.1k',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            )
          ],
        ),
      ),
    );

Widget postActionsBar(BuildContext context) => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        postBottomBar(
            'Like',
            Colors.blue,
            MediaQuery.of(context).size.width * 30 / 100,
            Colors.blue,
            Colors.blue,
            Icons.celebration,
            Colors.blue),
        postBottomBar(
            'Comment',
            Colors.white,
            MediaQuery.of(context).size.width * 32 / 100,
            Colors.grey,
            Colors.grey,
            Icons.comment,
            Colors.white),
        postBottomBar(
            'Share',
            Colors.white,
            MediaQuery.of(context).size.width * 30 / 100,
            Colors.grey,
            Colors.grey,
            Icons.share,
            Colors.white)
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
                    side: BorderSide(width: 0.5, color: borderColor))),
            shadowColor: MaterialStateProperty.all(shadowColor),
            overlayColor: MaterialStateProperty.all(Colors.grey[200]),
            backgroundColor: MaterialStateProperty.all(Colors.black87)),
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
