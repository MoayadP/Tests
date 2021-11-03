import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool typing = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(46),
          child: AppBar(
            backgroundColor: Colors.white,
            title: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
              ),
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0.001, 0, 0.001),
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
                      hintText: 'Search'),
                ),
              ),
            ),
            leading: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/tree.jpg')),
                    shape: BoxShape.circle),
              ),
            ),
            actions: [
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                  child: Icon(
                    Icons.message,
                    color: Colors.grey[500],
                  ))
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return posts_lists();
          },
        ),
      ),
    );
  }
}

class posts_lists extends StatelessWidget {
  const posts_lists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/railway.jpg'))),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 70,
              child: Container(
                child: Text('Hii'),
                alignment: Alignment.topLeft,
              ),
            ),
            SizedBox(
              height: 300,
              child: Container(
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/railway.jpg'))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
