List oneHandWeapons = [Knuckle(), Knife(), LongKnife()];

class Knuckle {
  String name = 'Кастет (обычный)';
  int damage = 4;
  int chanceToCrit = 10;
  int chanceToMist = 10;
  int chanceToCounterAttack = 1;
  int chanceToDodge = 7;
  int armor = 0;
  int chanceToDoubleAttack = 0;
}

class Knife {
  String name = 'Нож (обычный)';
  int damage = 4;
  int chanceToCrit = 30;
  int chanceToMist = 10;
  int chanceToCounterAttack = 2;
  int chanceToDodge = 8;
  int armor = 0;
  int chanceToDoubleAttack = 1;
}

class LongKnife {
  String name = 'Нож (длинный)';
  int damage = 5;
  int chanceToCrit = 30;
  int chanceToMist = 5;
  int chanceToCounterAttack = 2;
  int chanceToDodge = 9;
  int armor = 0;
  int chanceToDoubleAttack = 1;
}

// Map knuckle = {
//   'name': 'Кастет (обычный)',
//   'damage': 4,
//   'chanceToCrit': 10,
//   'chanceToMist ': 10,
//   'chanceToCounterAttack ': 1,
//   'chanceToDodge': 7,
//   'armor ': 0,
//   'chanceToDoubleAttack': 0
// };
