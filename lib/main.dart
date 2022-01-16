import 'package:flutter/material.dart';
import 'package:healthquest/bingo/main.dart';
import 'package:healthquest/chooseCharacter/main.dart';
import 'package:healthquest/chooseCharacter/traits.dart';
import 'package:healthquest/instructions/main.dart';
import 'package:healthquest/login/home.dart';
import 'package:healthquest/meditation/main.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
    title: 'HealthQuest',
    initialRoute: '/',
    onGenerateRoute: (settings) {
      switch (settings.name) {
        case '/':
          return MaterialPageRoute(builder: (context) => MyApp());
        case '/home':
          return MaterialPageRoute(builder: (context) => Home());
        case '/character':
          return MaterialPageRoute(builder: (context) => CharacterPage());
        case '/traits':
          return MaterialPageRoute(builder: (context) => TraitsSelection());
        case '/bingo':
          return MaterialPageRoute(builder: (context) => BingoPage());
        case '/instruction':
          return MaterialPageRoute(builder: (context) => InstructionsPage());
        case '/meditation':
          return MaterialPageRoute(builder: (context) => MeditationPage());
      }
    },
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 4),
      // () => Navigator.pushReplacementNamed(context, '/meditation'),
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
                image: AssetImage("assets/images/logoBackground.png"),
                // opacity: 0.5,
                fit: BoxFit.cover)),
        // child: Image.asset('assets/images/logo.png'),
        height: double.infinity,
      ),
    );
  }
}
