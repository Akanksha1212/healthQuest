import 'package:flutter/material.dart';
import 'package:healthquest/style.dart';

class NextBtn extends StatelessWidget {
  final String name;
  final String nextPath;
  const NextBtn({Key? key, required this.name, required this.nextPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.pushNamed(context, nextPath);
        },
        child: Container(
            width: 150,
            height: 70,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: nextBtnColor,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                    blurRadius: 4,
                    color: Colors.black.withOpacity(0.25),
                    offset: Offset(0, 4))
              ],
            ),
            child: strokeText(name, white, 36)));
  }
}
