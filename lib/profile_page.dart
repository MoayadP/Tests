import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        centerTitle: true,
        title: Text(
          'Profile Page',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/fantasy.jpg'))),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Flutter Course',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Icon(
                      Icons.verified_rounded,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Text('[ Profile Body ]',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green[400],
                      fontSize: 18))
            ],
          ),
        ),
      ),
    );
  }
}
