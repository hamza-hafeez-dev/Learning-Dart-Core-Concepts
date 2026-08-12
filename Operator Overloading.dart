void main(List<String> arguments) {
  // Operator Overloading

  Student student = Student(name: 'Hamza  ', marks: 78);

  Student student1 = Student(name: 'Ahmad', marks: 73);

  Student student2 = student + student1;

  print(student2.name);
  print(student2.marks);
}

class Student {

  // Operator Overloading with NullSafty :

  String? name;
  int? marks;

  Student({this.name, this.marks});

  // Plus Overloading

  Student operator +(Student otherOject) {
    return Student()
      ..name = name! + otherOject.name!
      ..marks = marks! + otherOject.marks!;
  }

  // Operator Overloading Without NullSafty :
  // Also The Lower code is in Comment Becuase Variable of same name Can't Declare:
  // Minus Overloading

  // String name;
  // int marks;

  // Student operator -(Student otherOject) {
  //   return Student(name: name - name, marks: marks - marks);
  // }
}
