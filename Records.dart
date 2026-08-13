void main(List<String> arguments) {
  // Record Ak Container Hota han Jahan hum Multiple Value ko Ak sath Store Kiya Jata Ha Bina Class banya !

  (String, int, int) record;
  record = ('Hamza', 42, 344);
  print(record);
  print(record.$1);
  print(record.$3);

  // Named Record :

  ({String name, int age, int id}) namedRecord;
  namedRecord = (name: 'Hamza', age: 19, id: 2233);
  print(namedRecord);
  print(namedRecord.name);
  print(namedRecord.age);

  // Mix Record :

  var mixRecord = ('Hamza', a: 123, b: 786, 'Hafeez');
  print(mixRecord);
  print(mixRecord.a);
  print(mixRecord.$1);
  print(mixRecord.b);

  // Class ka Object Call Kar ka Object ko foo Ka Under lana or Data Print Karna
  StudentID studentID = StudentID();
  var result = foo(studentID);
  print(' ');
  print(result.$1);
  print(result.$2);
}

// Class Bana Kar Es ka Varaibles ko Record ma Add Karna :

class StudentID {
  String name = 'Hussu';
  int rollNumber = 12;
}

(String, int) foo(StudentID s) {
  return (s.name, s.rollNumber);
}
