import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 30 / 100,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'LANDWAYS',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: const Text(
                          'FIND YOUR POINT OF INTEREST',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ]),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 5 / 100,
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 8 / 100,
                  child: Container(
                      alignment: Alignment.topLeft,
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text:
                                    "   We've detected your current location as",
                                style: TextStyle(
                                    fontSize: 19,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: ' \n   Damascus, Syria.',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ))),
              SizedBox(
                width: MediaQuery.of(context).size.width * 90 / 100,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Accept'),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                  ),
                ),
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 10 / 100,
                  child: Container(
                    child: const Text(
                      'OR',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    alignment: Alignment.center,
                  )),
              SizedBox(
                width: MediaQuery.of(context).size.width * 90 / 100,
                height: MediaQuery.of(context).size.height * 6.5 / 100,
                child: const TextField(
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      labelText: 'Type in your location'),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 91 / 100,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('DONE'),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 5 / 100,
                child: Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'You can also change your location from filters',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
