import 'package:flutter/material.dart';
import 'package:healthquest/style.dart';

class NextBtn extends StatelessWidget {
  final String name;
  final String nextPath;
  NextBtn({Key? key, required this.name, required this.nextPath})
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

class ProgressBar extends StatelessWidget {
  final Color color;
  final String title;
  final double percent;

  const ProgressBar(
      {Key? key,
      required this.title,
      required this.percent,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 100,
          child: Text(title, style: fontRoboto(18.0, Colors.black)),
        ),
        Container(
          width: 200,
          height: 40,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(25),
          ),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            width: percent * 200,
            height: 40,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ),
      ],
    );
  }
}
