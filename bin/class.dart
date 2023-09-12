class Person {
  String name = 'Guest';
  String? address;
  final String country = 'Indonesia';

  void sayHello(String name) {
    print('Hello $name');
  }
}

extension SayGoodByeOnPerson on Person {
  void sayGoodBye(String targetPerson) {
    print('Good Bye $targetPerson, from $name');

  }
}

void main() {
  var person = Person();
  var name = person.name;
  var address = person.address;
  var country = person.country;
  print(person);
  print('Nama : $name');
  print('Address : $address');
  print('Country : $country');

  person.name = 'Wahyu';
  person.address = 'Desa Daun';
  print('Nama Baru: ${person.name}');
  print('Address Baru: ${person.address}');

  person.sayHello('Wahyu The Ninja Hatori');

  person.sayGoodBye('Duril');

}
