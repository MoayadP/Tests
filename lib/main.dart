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
      height: 570,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          elevation: 20,
          shadowColor: Colors.black,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/railway.jpg'))),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Mira Moayad',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Software Developer . 1st',
                        style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                      ),
                      Row(
                        children: [
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '1w . ',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey[700]),
                              )),
                          Icon(
                            Icons.public,
                            color: Colors.grey[600],
                            size: 20,
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 70,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'This post is a test post for the layout!',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                  ),
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
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 0.3, color: Colors.grey)),
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(6, 0, 0, 0),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(Icons.beach_access),
                      Icon(Icons.beach_access),
                      Icon(Icons.beach_access),
                      Text(' 1k')
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          overlayColor:
                              MaterialStateProperty.all(Colors.grey[200]),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white)),
                      onPressed: () {},
                      child: Container(
                        alignment: Alignment.center,
                        height: 41,
                        width: 120,
                        child: Text(
                          'Like',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.3, color: Colors.grey)),
                    height: 41,
                    width: 120,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          overlayColor:
                              MaterialStateProperty.all(Colors.grey[200]),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white)),
                      onPressed: () {},
                      child: Container(
                        alignment: Alignment.center,
                        height: 41,
                        width: 120,
                        child: Text(
                          'Comment',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.3, color: Colors.grey)),
                    height: 41,
                    width: 120,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          overlayColor:
                              MaterialStateProperty.all(Colors.grey[200]),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white)),
                      onPressed: () {},
                      child: Container(
                        alignment: Alignment.center,
                        height: 41,
                        width: 120,
                        child: Text(
                          'Share',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.3, color: Colors.grey)),
                    height: 41,
                    width: 124,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
