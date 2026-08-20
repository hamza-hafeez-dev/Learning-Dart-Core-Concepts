// Dart Patterns & Records — Part 2 of 2
// Covers: Switch Expression (BMI Checker), If-Case Pattern,
// Type Matching with If-Case Pattern, the GetProduct class,
// and a function returning a Record from class properties.
// (See Part 1 for main() and the earlier pattern examples)

// ============================================================
// Switch Expression Example (BMI Checker)
// ============================================================

void checkBmi(double bmi) {
  String checking = switch (bmi) {
    < 18.5 => 'Underweight',
    >= 18.5 && <= 24.9 => 'Normal',
    >= 25 && <= 29.9 => 'Overweight',
    >= 30 => 'Obese',
    _ => 'Invalid BMI',
  };

  print(checking);

  // ============================================================
  // If-Case Pattern
  // ============================================================

  var data = 'Hamza';

  if (data case var name) {
    print('Name : $name');
  }

  // ============================================================
  // Type Matching with If-Case Pattern
  // ============================================================

  Object value1 = 'Hamza';
  Object value2 = 23;
  Object value3 = 46.5;

  if (value1 case String name1) {
    print('Name => $name1');
  }

  if (value2 case int number) {
    print('Number => $number');
  }

  if (value3 case double dValue) {
    print('Double Value => $dValue');
  }
}

// ============================================================
// Class
// ============================================================

class GetProduct {
  String name = 'Dell';
  int ram = 12;
  int rom = 256;
}

// ============================================================
// Record Returned from Class Properties
// ============================================================

(String, int, int) foo(GetProduct gp) {
  return (gp.name, gp.ram, gp.rom);
}
