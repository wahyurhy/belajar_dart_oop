class Person {
  String name = 'Guest';
  String? address;
  final String country = 'Indonesia';

  Person(this.name, String this.address);
}

void main() {
  var person = Person('Wahyu Rahayu', 'Desa Daun');
  print('Name: ${person.name}');
  print('Address: ${person.address}');
  print('Country: ${person.country}');

}