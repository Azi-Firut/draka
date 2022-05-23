import 'package:flutter/material.dart';

class FightTimer extends StatefulWidget {
  const FightTimer({Key? key, required this.timer}) : super(key: key);
  final double timer;

  @override
  State<FightTimer> createState() => _FightTimerState();
}

class _FightTimerState extends State<FightTimer> {
  late double widthHealthLine;
  final double heightHealthLine = 15;
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '30',
        textAlign: TextAlign.start,
        textScaleFactor: 5,
        style: TextStyle(
            fontSize: 11,
            color: Colors.black,
            backgroundColor: Color(0x20FFFFFF),
            decoration: TextDecoration.none),
      ),
    );
  }
}
