import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_course_autumn_2021/second_page.dart';
import 'package:flutter_course_autumn_2021/third_page.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key key}) : super(key: key);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Next'),
        icon: Icon(Icons.arrow_forward),
        backgroundColor: Colors.deepPurple[800],
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => MyApp()));
        },
      ),
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(16),
        child: Form(
            key: formKey,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value.contains('@'))
                        return null;
                      else
                        return 'the value should contains @';
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'email address',
                      hintText: "info@example.com",
                      hintStyle: TextStyle(fontSize: 20),
                      // fillColor: Colors.red,
                      filled: true,
                      // focusColor: Colors.green,
                    ),
                    // enabled: true,
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value.length > 3)
                        return null;
                      else
                        return 'the value should be more than three digits';
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'password',
                      hintText: "P@ssw0rd",
                      hintStyle: TextStyle(fontSize: 20),
                      // fillColor: Colors.red,
                      filled: true,
                      focusColor: Colors.green,
                    ),
                    obscureText: true,
                    enabled: true,
                    keyboardType: TextInputType.emailAddress,
                    controller: passwordController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState.validate()) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => SecondPage(
                              email: emailController.text,
                              password: passwordController.text,
                            ),
                            settings: RouteSettings(
                              name: 'userInfo',
                              arguments: {
                                'email': emailController.text,
                                'password': passwordController.text
                              },
                            ),
                          ),
                        );
                      } else {
                        print('invalid values');
                      }
                    },
                    child: Text(
                      'submit',
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
