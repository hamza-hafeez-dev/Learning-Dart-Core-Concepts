void main(List<String> arguments) {
  // Copy Construtor

  Student student = Student(name: 'Hamza', age: 19, city: 'Bahawalpur');
  print(student.name);
  print(student.age);
  print(student.city);

  Student student1 = Student.copy(student);
  Student student2 = Student.copy(student1, age: 21, city: 'Berlin');

  print(student2.name);
  print(student2.age);
  print(student2.city);

  Developer developer = Developer(
    name: 'Hamza Hafeez ',
    empolyeeID: 24,
    role: 'Flutter Developer',
  );
  Developer developer1 = developer.copyWith(name: 'ali', empolyeeID: 33);
  Developer developer2 = developer.copyWith(
    name: 'hussu ',
    role: 'Senior Flutter Developer',
  );

  print(
    'Name is ${developer.name} EmpolyeeId is ${developer.empolyeeID} Role is ${developer.role}',
  );

  print(
    'Name is ${developer1.name} EmpolyeeId is ${developer1.empolyeeID} Role is ${developer1.role}',
  );

  print(
    'Name is ${developer2.name} EmpolyeeId is ${developer2.empolyeeID} Role is ${developer2.role}',
  );
}

class Student {
  String? name;
  int? age;
  String? city;

  // Generlize Construtor

  Student({this.name, this.age, this.city});

  // Copy Construtor

  Student.copy(Student others, {String? name, int? age, String? city})
    : name = name ?? others.name,
      age = age ?? others.age,
      city = city ?? others.city;
}

class Developer {
  String? name;
  int? empolyeeID;
  String? role;

  Developer({required this.name, required this.empolyeeID, required this.role});

  Developer copyWith({String? name, int? empolyeeID, String? role}) {
    return Developer(
      name: name ?? this.name,
      empolyeeID: empolyeeID ?? this.empolyeeID,
      role: role ?? this.role,
    );
  }
}
