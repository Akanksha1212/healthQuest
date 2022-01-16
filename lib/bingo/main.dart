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
      title: "Drink water",
      // img: "assets/bingo/water-glass.png",
      img:
          "https://cdn-icons.flaticon.com/png/512/2447/premium/2447764.png?token=exp=1642312056~hmac=efd42c07021aecf5b2015ab00abb3103");

  Items item2 = Items(
    title: "Meditate",
    img:
        "https://cdn-icons.flaticon.com/png/512/3546/premium/3546642.png?token=exp=1642311788~hmac=c027d7886aefaa352fab10bb7849ecd1",
  );
  Items item3 = Items(
    title: "Walk around",
    img:
        "https://cdn-icons.flaticon.com/png/512/2000/premium/2000197.png?token=exp=1642311763~hmac=cd71e6c2860769597e05cf319e45db6d",
  );

  Items item4 = Items(
    title: "Read 5 pages",
    img:
        "https://cdn-icons.flaticon.com/png/512/4212/premium/4212485.png?token=exp=1642311846~hmac=27e3ef4c4a1cdba672450db0b7dc2cf6",
  );
  Items item5 = Items(
    title: "Excercise",
    img:
        "https://cdn-icons.flaticon.com/png/512/3065/premium/3065868.png?token=exp=1642312271~hmac=be051c4c1ee55357f2c981f901fca46d",
  );
  Items item6 = Items(
    title: "30 mins Nap",
    img: "https://cdn-icons-png.flaticon.com/512/2737/2737529.png",
  );
  Items item7 = Items(
    title: "Draw something",
    img: "https://cdn-icons-png.flaticon.com/512/3199/3199937.png",
  );
  Items item8 = Items(
    title: "Call your friend",
    img:
        "https://cdn-icons.flaticon.com/png/512/2593/premium/2593518.png?token=exp=1642312001~hmac=267cf4057ddeb5dead60cdf8836f2ae5",
  );
  Items item9 = Items(
    title: "Snack",
    img:
        "https://cdn-icons.flaticon.com/png/512/2681/premium/2681610.png?token=exp=1642312031~hmac=3cbd733135175f22117fcbd9848a5f86",
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
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  myList[index].title,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              // Image.asset(
                              //   myList[index].img,
                              //   width: 50,
                              // ),
                              Image.network(
                                myList[index].img,
                                width: size.width / 20,
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
  String title;
  String img;

  Items({required this.title, required this.img});
}
