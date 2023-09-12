import 'mixin.dart';

class Animal {
  String name = '';
  int age = 0;
  double weight = 0.0;

  Animal(this.name, this.age, this.weight);

  void eat() {
    print('$name is eating.');
    weight = weight + 0.2;
  }

  void sleep() {
    print('$name is sleeping.');
  }

  void poop() {
    print('$name is pooping.');
    weight = weight - 0.1;
  }
}

class Cat extends Animal with Walkable {
  late String furColor;

  Cat(String name, int age, double weight, this.furColor)
      : super(name, age, weight);
}

class Flyable {
  void fly() {}
}

class Bird extends Animal implements Flyable {
  String featherColor = '';

  Bird(String name, int age, double weight, this.featherColor)
      : super(name, age, weight);

  @override
  void fly() {
    print('$name is flying');
  }
}

void main() {
  var badak = Animal('Gogor', 2, 3.1)
    ..name = 'Grenlord'
    ..eat();

  print(badak.name);
  print(badak.age);
  print(badak.weight);

  var cat = Cat('Garfield', 3, 1.0, 'Oren')
    ..walk()
    ..eat()
    ..sleep();

  print(cat.weight);

  var bird = Bird('Rio', 2, 0.3, 'Blue')
    ..fly();

  print('Hi my name is ${bird.name}');
}
