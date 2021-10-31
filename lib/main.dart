import 'package:flutter/material.dart';
import 'package:ui_test_1/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          child: Text('HI'),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => SecondPage()));
          },
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(13),
                alignment: Alignment.topLeft,
                child: Text(
                  'Gallery',
                  style: TextStyle(
                      color: Colors.cyan.shade900,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                  height: 120,
                  child: Center(
                    child: ListView.builder(
                        padding: EdgeInsets.all(3.0),
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return Center(
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 170,
                                    child: Card(
                                        elevation: 10,
                                        shadowColor: Colors.amber,
                                        child: Stack(
                                          children: [
                                            Center(
                                              child: Image.asset(
                                                'assets/images/tree.jpg',
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Icon(
                                                Icons.linked_camera,
                                                size: 40,
                                                color: Colors.amber,
                                              ),
                                            ),
                                          ],
                                        ))),
                                const SizedBox(
                                  width: 30,
                                )
                              ],
                            ),
                          );
                        }),
                  )),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(13),
                alignment: Alignment.topLeft,
                child: Text(
                  'List',
                  style: TextStyle(
                      color: Colors.cyan.shade900,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    list_cards('First List', context, Colors.black87),
                    list_cards('Second List', context, Colors.red.shade900),
                    list_cards('Third List', context, Colors.amber)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget list_cards(String title, BuildContext context, Color color) => Padding(
        padding: EdgeInsets.all(20),
        child: Card(
          elevation: 20,
          shadowColor: Colors.blue,
          child: Column(
            children: [
              Card(
                elevation: 20,
                shadowColor: Colors.blue,
                child: SizedBox(
                  height: 40,
                  width: 400,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: color),
                    child: Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                  width: 400,
                  height: MediaQuery.of(context).size.height * 50 / 100,
                  child: ListView.builder(
                      itemCount: 20,
                      itemBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 40,
                          child: Container(
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 0.1, color: Colors.grey[900]!)),
                            alignment: Alignment.center,
                            child: Text(
                              'Some Text',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        );
                      })),
            ],
          ),
        ),
      );
}
