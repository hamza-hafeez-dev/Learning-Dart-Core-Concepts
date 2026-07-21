// Question No 1:

class Shape {
  String? type;

  Shape();
  Shape.circle() : type = 'Circle';
  Shape.square() : type = 'Square';
}

// Question No 2:

class Laptop {
  String? brand;
  int? ram;
  num? price;

  Laptop({this.brand, this.price, this.ram});
}

// Question no 3:

class UserProfile {
  String? name;
  String? email;
  String? city;

  UserProfile({this.name, this.city = 'Lahore', this.email});
}

// Question no 5:

class Configuration {
  final String appName;
  final int version;

  const Configuration({required this.appName, required this.version});
}

// Question no 8:

class Person {
  String? name;
  int? age;

  Person(this.name, this.age);
  Person.guest() : this('Guest', 0);
}

// Question no 9:

class Mobile {
  String? brand;
  String? model;

  Mobile(this.brand, this.model);

  Mobile.iPhone(String model) : this('Apple', model);
}

// Question no 10:

class UniversityStudent {
  final String? name;
  final int? rollnumber;
  final String? department;

  const UniversityStudent({
    required this.name,
    required this.rollnumber,
    required this.department,
  });

  const UniversityStudent.cs({required this.name, required this.rollnumber})
    : department = 'Computer Science';
}
