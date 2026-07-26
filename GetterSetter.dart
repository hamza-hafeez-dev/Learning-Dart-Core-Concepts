void main(List<String> arguments) {
  Person person = Person(name: '', age: 2);
  Person person1 = Person(age: 55, name: 'ali');

  // Ya Setter Call Ho raha ha Q ka Value Assign Ho rahi ha
  person.age = 7;
  // Ya Getter Call Ho raha Ha Q ka Value Show Ho rahi Ha
  print(person.age);

  print(''' Person Name Is ${person.name} & Person Age Is ${person.age}
  Person1.Name is ${person1.name} & Person1 Age is ${person1.age}
  ''');
}

class Person {
  String _name = '';
  int _age = 0;

  Person({required String name, required int age}) {
    this.name = name;
    this.age = age;
  }

  // Getter of private Variable :

  String get name => _name;

  // Setter of private Variable :

  set name(String newName) {
    if (newName.isNotEmpty) {
      _name = newName;
    } else {
      print('Name should not be empty');
    }
  }

  // Getter of private Variable :

  int get age => _age;

  // Setter of private Variable :

  set age(int newAge) {
    if (newAge >= 5) {
      _age = newAge;
    } else {
      print('Age should not be lower then 5 years');
    }
  }
}
