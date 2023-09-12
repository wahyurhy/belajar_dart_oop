class Customer {
  String firstName = '';
  String lastName = '';
  String fullName = '';

  Customer(this.fullName)
      : firstName = fullName.split(" ")[0],
        lastName = fullName.split(" ")[1] {
    print('Create new customer');
  }
}

void main() {
  var customer = Customer('Wahyu Rahayu');
  print('Nama Lengkap: ${customer.fullName}');
  print('Nama Depan: ${customer.firstName}');
  print('Nama Belakang: ${customer.lastName}');
}