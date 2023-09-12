class Person {
  String name = 'Guest';
  String? address;
  final String country = 'Indonesia';

  Person(String name, String address) {
    name = name;
    address = address;
  }
}

void main() {
  var person = Person('Wahyu Rahayu', 'Desa Daun');
  print('Name: ${person.name}');
  print('Address: ${person.address}');
  print('Country: ${person.country}');

}