// Ya Extension Ha Ya Buildin Class ma Khud Ka Method create Karna ka liya hoti Ha

extension StringNumaricExtension on String? {
  // ya String Ki Class ma String ko Int Ma Convert Karna Ka Code Ha
  int? toInt() => int.tryParse(this ?? '');

  // ya String Ki Class ma String ko Double Ma Convert Karna Ka Code Ha
  double? toDouble() => double.tryParse(this ?? '');
}

void main(List<String> arguments) {
  var no = '56754';
  var number = ' helo';
  var foo = '32443.33';

  print(no.toInt() ?? 1);
  print(foo.toDouble() ?? 2);
  print(number.toInt() ?? 3);
}
