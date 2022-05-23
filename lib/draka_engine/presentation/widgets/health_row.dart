import 'package:flutter/material.dart';

class Health extends StatefulWidget {
  const Health(
      {Key? key, required this.fighterMaxHealth, required this.fighterHealth})
      : super(key: key);
  final double fighterMaxHealth;
  final double fighterHealth;

  @override
  State<Health> createState() => _HealthState();
}

class _HealthState extends State<Health> {
  late double widthHealthLine;
  final double heightHealthLine = 15;
  @override
  Widget build(BuildContext context) {
    widthHealthLine = MediaQuery.of(context).size.width / 100 * 40;
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: widthHealthLine,
                height: heightHealthLine,
                color: Color(0x20000000),
              ),
              Container(
                width: widthHealthLine /
                    widget.fighterMaxHealth *
                    widget.fighterHealth,
                height: heightHealthLine,
                color: const Color(0xFF218250),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${widget.fighterHealth.toString()} | ${widget.fighterMaxHealth.toString()}',
              style: const TextStyle(
                  fontSize: 11,
                  color: Colors.black,
                  backgroundColor: Color(0x20FFFFFF),
                  decoration: TextDecoration.none),
            ),
          ),
        ],
      ),
    );
  }
}
