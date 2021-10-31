import 'package:flutter/material.dart';

/// This is the stateful widget that the main application instantiates.
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: const ThirdPage(),
      ),
    );
  }
}

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key key}) : super(key: key);

  @override
  State<ThirdPage> createState() => Page();
}

/// This is the private State class that goes with MyStatefulWidget.
class Page extends State<ThirdPage> {
  List<int> items = List<int>.generate(100, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      padding: const EdgeInsets.symmetric(vertical: 16),
      itemBuilder: (BuildContext context, int index) {
        return Dismissible(
          child: ListTile(
            title: Text(
              'Item ${items[index]}',
            ),
          ),
          background: Container(
            color: Colors.green,
          ),
          key: ValueKey<int>(items[index]),
          onDismissed: (DismissDirection direction) {
            setState(() {
              items.removeAt(index);
            });
          },
        );
      },
    );
  }
}
