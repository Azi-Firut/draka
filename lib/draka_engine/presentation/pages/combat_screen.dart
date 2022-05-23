import 'package:draka/draka_engine/domain/entities/bot.dart';
import 'package:draka/draka_engine/domain/entities/fighter.dart';
import 'package:draka/draka_engine/presentation/widgets/fight_timer.dart';
import 'package:flutter/material.dart';

import '../widgets/health_row.dart';

class CombatScreen extends StatelessWidget {
  const CombatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(
                flex: 1,
              ),
              Column(
                children: const [
                  Health(
                    fighterHealth: 120.0,
                    fighterMaxHealth: 120,
                  )
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              const FightTimer(timer: 30),
              const Spacer(
                flex: 1,
              ),
              Column(
                children: const [
                  Health(
                    fighterHealth: 80.0,
                    fighterMaxHealth: 160,
                  ),
                ],
              ),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
        Container(
          width: 400,
          height: 400,
          color: Colors.black12,
        )
      ],
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var fighter = Fighter();
  var bot = Bot();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                '${fighter.name}\n${fighter.hpMax}\n${fighter.id}\n${fighter.level}\n${fighter.rightHand.name}'),
            Text(
                '${bot.name}\n${bot.hpMax}\n${bot.id}\n${bot.level}\n${bot.rightHand.name}'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
