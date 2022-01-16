import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:healthquest/style.dart';

class BingoPage extends StatefulWidget {
  const BingoPage({Key? key}) : super(key: key);

  @override
  _BingoPageState createState() => _BingoPageState();
}

class _BingoPageState extends State<BingoPage> {
  Items item1 = Items(
    // title: "Drink water",
    img: "assets/bingo/water-glass.png",
    // img:
    //     "https://cdn-icons.flaticon.com/png/512/2447/premium/2447764.png?token=exp=1642312056~hmac=efd42c07021aecf5b2015ab00abb3103"
  );

  Items item2 = Items(
    // title: "Meditate",
    img: "assets/bingo/meditate.png",
  );
  Items item3 = Items(
    // title: "Walk around",
    img: "assets/bingo/walk.png",
  );

  Items item4 = Items(
    // title: "Read 5 pages",
    img: "assets/bingo/read.png",
  );
  Items item5 = Items(
    // title: "Excercise",
    img: "assets/bingo/excercise.png",
  );
  Items item6 = Items(
    // title: "30 mins Nap",
    img: "assets/bingo/nap.png",
  );
  Items item7 = Items(
    // title: "Draw something",
    img: "assets/bingo/water-glass.png",
  );
  Items item8 = Items(
    // title: "Call your friend",
    img: "assets/bingo/call.png",
  );
  Items item9 = Items(
    // title: "Snack",
    img: "assets/bingo/snack.png",
  );

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
                    child: Container(
                      decoration: BoxDecoration(),
                      padding: EdgeInsets.all(10.0),
                      child: Material(
                        elevation: 4.0,
                        borderRadius: BorderRadius.circular(20.0),
                        color:
                            index % 2 == 0 ? Color(0xffdffaff) : Colors.white,
                        child: Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Image.network(
                                  myList[index].img,
                                  width: size.width / 15,
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
            ),
          ],
        ));
  }
}

class Items {
  // String title;
  String img;

  Items({required this.img});
}
