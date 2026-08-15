void main(List<String> arguments) {
  // Mixins

  // Rules:
  // 1. A class uses a mixin with the `with` keyword.
  // 2. A mixin can restrict which classes use it by using the `on` keyword.The order of mixins matters.
  //    If multiple mixins contain the same method,
  //    the method from the last mixin is used.

  // Example 1: Basic Mixins

  ComputerStudent cs = ComputerStudent();

  cs.run();
  cs.swim();
  cs.name;
  cs.age;
  cs.printing();

  // Example 2: Frontend & Backend

  FrontEnd frontEnd = FrontEnd();
  frontEnd.coding();
  frontEnd.designing();

  BackEnd backEnd = BackEnd();
  backEnd.coding();
  backEnd.testing();

  // Example 3: Mixin Variables

  ArtStudent artStudent = ArtStudent('Hamza');
  artStudent.printName();

  // Example 4: Mixin Methods

  AppService appService = AppService();
  appService.fetchData();

  // Example 5: `on` Keyword

  UserService userService = UserService();
  userService.run();
}

// Student Class
// ====================================================

class Student {
  String name = 'Ali';
  int age = 33;
}

// Basic Mixins
// ====================================================

mixin CanRun {
  void run() {
    print('Running');
  }
}

mixin CanSwim {
  void swim() => print('Swimming');
}

class ComputerStudent extends Student with CanRun, CanSwim {
  void printing() {
    print('Name : $name | Age : $age');
  }
}


// Frontend & Backend Mixins
// ====================================================

mixin CanCode {
  void coding() => print('Can Code');
}

mixin CanDesign {
  void designing() => print('Can Design');
}

mixin CanTest {
  void testing() => print('Can Test');
}

class FrontEnd with CanCode, CanDesign {}

class BackEnd with CanCode, CanTest {}


// Mixin with Variables
// ====================================================

mixin HasName {
  String name = '';

  void printName() {
    print('Name = $name');
  }
}

class ArtStudent with HasName {
  ArtStudent(String n) {
    name = n;
  }
}


// Mixin with Methods
// ====================================================

mixin Logger {
  void log(String message) {
    print('LOG: $message');
  }
}

class AppService with Logger {
  void fetchData() {
    log('Data is being fetched...');
    print('Data Fetched');
  }
}


// Using `on` with Mixins
// ====================================================

class BaseService {
  void serviceStart() {
    print('Service Starting...');
  }
}

mixin CanAuthenticate on BaseService {
  void login(String user) {
    print('$user Login Done');
  }

  void logout(String user) {
    print('$user Logout Done');
  }
}

class UserService extends BaseService with CanAuthenticate {
  void run() {
    serviceStart();

    login('Hamza');
    logout('Hamza');

    print('Task Done');
  }
}
