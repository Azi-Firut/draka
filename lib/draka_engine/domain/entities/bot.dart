import 'dart:math';

import 'package:draka/draka_engine/domain/entities/fighter.dart';
import 'package:draka/draka_engine/domain/entities/weapons/weapons_one_hand.dart';

import 'human/human.dart';

class Bot extends Human {
  var random = Random().nextInt(2);
  @override
  var name = 'Ботаник';
  @override
  var id = 999;
  @override
  var rightHand = oneHandWeapons[Fighter().level];
}
