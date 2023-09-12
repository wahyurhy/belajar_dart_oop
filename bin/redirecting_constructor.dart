class Person {
  String name = 'Guest';
  String? address;
  final String country = 'Indonesia';

  Person(this.name, String this.address);

  Person.withName(String name) : this(name, "No Address");

  Person.withAddress(String address) : this("No Name", address);

  Person.fromJakarta() : this.withAddress('Jakarta');

  Person.withNoName() : this.withName('No Name');
}

void main() {
  var person = Person('Wahyu Rahayu', 'Desa Daun');
  print('Name: ${person.name}');
  print('Address: ${person.address}');
  print('Country: ${person.country}');

  var person2 = Person.withName('Rio Saputra');
  print('Name: ${person2.name}');
  print('Address: ${person2.address}');
  print('Country: ${person2.country}');

  var person3 = Person.withAddress('New Regency');
  print('Name: ${person3.name}');
  print('Address: ${person3.address}');
  print('Country: ${person3.country}');

  var person4 = Person.fromJakarta();
  print('Nama: ${person4.name}');
  print('Aku orang ${person4.address}');

  var person5 = Person.withNoName();
  print('Aku adalah ${person5.name}');
  print('Aku tinggal di ${person5.address}');

}