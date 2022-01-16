import 'package:flutter/material.dart';

import 'package:healthquest/components.dart';
import 'package:healthquest/style.dart';

class TraitsSelection extends StatelessWidget {
  final int text;
  const TraitsSelection({Key? key, required this.text}) : super(key: key);

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
    return Container(
      width: size.width * 0.8,
      height: size.height * 0.9,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 400,
            child: Image.asset(
              "assets/models/model$text.gif",
              height: 400,
            ),
          ),
          Column(
            children: [
              NextBtn(name: "Next", nextPath: "/bingo", index: 0),
            ],
          )
        ],
      ),
    );
  }
}
