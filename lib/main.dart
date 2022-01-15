import 'package:flutter/material.dart';
import 'package:healthquest/screens/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 4),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Home(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: NetworkImage(""), fit: BoxFit.cover)),
          child: Center(
              child: Column(
            children: [
              SizedBox(
                height: 300,
              ),
              Image.asset(''),
            ],
          ))),
    );
  }
}
