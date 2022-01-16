import 'package:flutter/material.dart';
import 'package:healthquest/chooseCharacter/main.dart';
import 'package:healthquest/instructions/main.dart';
import 'package:healthquest/login/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    onGenerateRoute: (settings) {
      switch (settings.name) {
        case '/':
          return MaterialPageRoute(builder: (context) => MyApp());
        case '/home':
          return MaterialPageRoute(builder: (context) => Home());
        case '/character':
          return MaterialPageRoute(builder: (context) => CharacterPage());
        case '/instruction':
          return MaterialPageRoute(builder: (context) => InstructionsPage());
      }
    },
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
      () => Navigator.pushReplacementNamed(context, '/character'),
      // () => Navigator.pushReplacementNamed(context, '/home'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                opacity: 0.5,
                fit: BoxFit.cover)),
        child: Image.asset('assets/images/logo.png'),
        height: double.infinity,
      ),
    );
  }
}
