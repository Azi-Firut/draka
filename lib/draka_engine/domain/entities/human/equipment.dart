import 'package:draka/draka_engine/domain/entities/armor/boots.dart';
import 'package:draka/draka_engine/domain/entities/weapons/weapons_one_hand.dart';

class Equipment {
  dynamic head = Empty();
  dynamic rightHand = Knuckle();
  dynamic leftHand = Empty();
  dynamic torso = Empty();
  dynamic legs = Empty();
  dynamic feet = Slippers();
}

class Empty {
  String name = 'Пусто';
  int damage = 3;
  int chanceToCrit = 10;
  int chanceToMist = 10;
  int chanceToCounterAttak = 10;
  int chanceToDodge = 7;
  int armor = 0;
  int chanceToDoubleAttack = 0;
}
