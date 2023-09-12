import 'cascade_notation.dart';

abstract class Performer {
  void perform();
}

mixin Dancer implements Performer {
  @override
  void perform() {
    print('Dancing');
  }
}

mixin Singer implements Performer {
  @override
  void perform() {
    print('Singing');
  }
}

class Musician extends Performer with Dancer, Singer {
  void showTime() {
    perform();
  }
}

mixin Flyable {
  void fly() {
    print("I'm flying");
  }
}

mixin Walkable {
  void walk() {
    print("I'm walking");
  }
}

mixin Swimmable {
  void swim() {
    print("I'm swimming");
  }
}

class Duck extends Bird with Walkable, Swimmable, Flyable {
  Duck(super.name, super.age, super.weight, super.featherColor);
}

void main() {
  var donald = Duck('Donald', 2, 3.1, 'White');
  var garfield = Cat('Garfield', 3, 3.7, 'Orange');

  donald.swim();
  donald.walk();
  donald.fly();

  garfield.walk();

  var arielNoah = Musician();
  arielNoah.perform();
}
