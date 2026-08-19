// Dart Patterns & Records — Part 1 of 2
// Covers: List Pattern, Map Pattern, Record Pattern (declare/swap),
// Switch Statement Patterns, Record returned from a function,
// Switch Pattern with Logical OR, Switch Expression.
// (See Part 2 for GetProduct class, foo(), and checkBmi())

void main(List<String> arguments) {
  // ============================================================
  // List Pattern
  // ============================================================

  var numList = [1, 2, 3, 4, 5];

  var [a, b, c, d, e] = numList;

  print(a + b + c + d + e);

  // ============================================================
  // Map Pattern
  // ============================================================

  var student = {
    'name': 'Hamza',
    'age': '19',
    'gender': 'Male',
  };

  var {
    'name': studentName,
    'age': studentAge,
  } = student;

  print(studentName);
  print(studentAge);

  // ============================================================
  // Record Pattern (Variable Declaration)
  // ============================================================

  var (g, f, h) = ('Hamza', 4, 7);

  print('$g , $f , $h');

  // ============================================================
  // Record Pattern (Assignment / Swapping Values)
  // ============================================================

  var (y, z) = ('Left', 'Right');

  (z, y) = (y, z);

  print('y = $y , z = $z');

  // ============================================================
  // Pattern Matching with Switch Statement
  // ============================================================

  (int, int) alpha = (22, 23);

  switch (alpha) {
    case (1, _):
      print('One');

    case (>= 500 && <= 1000, _):
      print('Correct Value');

    case (var x, var k):
      print('x = $x , k = $k');

    default:
      print(alpha);
  }

  // ============================================================
  // Record Returned from Function
  // ============================================================

  GetProduct getProduct = GetProduct();

  var result = foo(getProduct);

  print(result.$1);
  print(result.$2);
  print(result.$3);

  // ============================================================
  // Record Pattern with Variable Declaration
  // ============================================================

  var (name, ram, rom) = foo(getProduct);

  print(name);
  print(ram);
  print(rom);

  // ============================================================
  // Switch Pattern with Logical OR
  // ============================================================

  String day = 'sunday';

  switch (day) {
    case 'saturday' || 'sunday':
      print('Weekend');

    case 'monday' ||
        'tuesday' ||
        'wednesday' ||
        'thursday' ||
        'friday':
      print('Working Day');

    default:
      print('Invalid Day');
  }

  // ============================================================
  // Switch Expression
  // ============================================================

  int marks = 70;

  String grade = switch (marks) {
    >= 90 => 'A+',
    >= 70 && < 90 => 'B',
    >= 50 && < 70 => 'Pass',
    _ => 'Fail',
  };

  print(grade);

  // ============================================================
  // BMI Example using Switch Expression
  // ============================================================

  checkBmi(90.6);
  checkBmi(23.4);
  checkBmi(12.5);
}
