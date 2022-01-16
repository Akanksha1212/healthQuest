import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthquest/components.dart';
import 'package:healthquest/style.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'https://flutter.dev';

class BingoPage extends StatefulWidget {
  const BingoPage({Key? key}) : super(key: key);

  @override
  _BingoPageState createState() => _BingoPageState();
}

class _BingoPageState extends State<BingoPage> {
  Items item1 = Items(
      // title: "Drink water",

      img: "assets/bingo/drink.png",
      description:
          "You haven't drunk water in a long time. Why don't you pick up your bottle and take a sip? ",
      descImage:
          "https://media4.giphy.com/media/WvSDwj9IPbHkuAMKuV/giphy.gif?cid=6c09b952v2m4zmisk5g50hk69xqfhbz1bs4p8o36xu6g6u8r&rid=giphy.gif&ct=s",
      route: "");

  Items item2 = Items(
      // title: "Meditate",

      img: "assets/bingo/meditate.png",
      description: "",
      descImage:
          "https://i.pinimg.com/originals/46/18/92/4618922866cc60c025898bd32f769b04.jpg",
      route: "");
  Items item3 = Items(
      // title: "Walk around",

      img: "assets/bingo/walk.png",
      description: "",
      descImage:
          "https://i.pinimg.com/originals/46/18/92/4618922866cc60c025898bd32f769b04.jpg",
      route: "");

  Items item4 = Items(
      // title: "Read 5 pages",

      img: "assets/bingo/read.png",
      description: "",
      descImage:
          "https://i.pinimg.com/originals/46/18/92/4618922866cc60c025898bd32f769b04.jpg",
      route: "");
  Items item5 = Items(
      // title: "Excercise",

      img: "assets/bingo/excercise.png",
      description: "",
      descImage:
          "https://i.pinimg.com/originals/46/18/92/4618922866cc60c025898bd32f769b04.jpg",
      route: "/pose");
  Items item6 = Items(
      // title: "30 mins Nap",

      img: "assets/bingo/nap.png",
      description: "",
      descImage:
          "https://i.pinimg.com/originals/46/18/92/4618922866cc60c025898bd32f769b04.jpg",
      route: "");
  Items item7 = Items(
      // title: "Draw something",

      img: "assets/bingo/draw.png",
      description: "",
      descImage:
          "https://i.pinimg.com/originals/46/18/92/4618922866cc60c025898bd32f769b04.jpg",
      route: "");
  Items item8 = Items(
      // title: "Call your friend",

      img: "assets/bingo/call.png",
      description: "",
      descImage:
          "https://i.pinimg.com/originals/46/18/92/4618922866cc60c025898bd32f769b04.jpg",
      route: "");
  Items item9 = Items(
      // title: "Snack",

      img: "assets/bingo/snack.png",
      description: "",
      descImage:
          "https://i.pinimg.com/originals/46/18/92/4618922866cc60c025898bd32f769b04.jpg",
      route: "");

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: glassmorphismWindow(size),
      ),
    );
  }

  Container glassmorphismWindow(Size size) {
    List<Items> myList = [
      item1,
      item2,
      item3,
      item4,
      item5,
      item6,
      item7,
      item8,
      item9,
    ];
    int temp = 0;
    String desc = "";
    String descIm = "";
    String ro = "";
    return Container(
      width: size.width * 0.8,
      height: size.height * 0.9,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          strokeText("Self Care Bingo", Colors.black, 60),
          Flexible(
            child: Container(
              height: size.width * 0.7,
              width: size.height * 0.7,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                scrollDirection: Axis.vertical,
                itemCount: 9,
                itemBuilder: (_, index) => Transform.rotate(
                  angle:
                      index % 2 == 0 ? -5 * math.pi / 180 : 5 * math.pi / 180,
                  child: Material(
                    elevation: 4.0,
                    borderRadius: BorderRadius.circular(20.0),
                    color: index % 2 == 0 ? Color(0xffdffaff) : Colors.white,
                    child: Center(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GestureDetector(
                              child: Image.network(
                                myList[index].img,
                                width: size.width / 15,
                              ),
                              onTap: () {
                                setState(() {
                                  temp = index;
                                  print(temp);
                                  desc = myList[temp].description;
                                  descIm = myList[temp].descImage;
                                  ro = myList[temp].route;
                                });
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20.0))),
                                      backgroundColor: Color(0xff98b18b),
                                      content: Container(
                                        height: 650,
                                        width: 800,
                                        child: Column(
                                          children: [
                                            Text(
                                              'Quest#$temp',
                                              style:
                                                  GoogleFonts.playfairDisplay(
                                                textStyle: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 32,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              '$desc',
                                              style: GoogleFonts.roboto(
                                                textStyle: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Image(
                                              image: NetworkImage(
                                                descIm,
                                              ),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  6,
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2,
                                              height: 60,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: RaisedButton(
                                                  elevation: 5,
                                                  color: Color(0xff263284),
                                                  child: Text(
                                                    'Next',
                                                    style: GoogleFonts
                                                        .playfairDisplay(
                                                      textStyle: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  onPressed: _launchURL,
                                                ),
                                              ),
                                            ),
                                            // NextBtn(
                                            //     name: 'Done',
                                            //     nextPath: ro,
                                            //     index: 0)
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}

class Items {
  // String title;
  String img;

  String description;
  String descImage;
  String route;
  Items(
      {required this.img,
      required this.description,
      required this.descImage,
      required this.route});
}
