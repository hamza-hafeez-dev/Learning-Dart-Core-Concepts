import 'dart:mirrors';

int nullSafeInt = 10;
int ? nullableInt ;
List<String> ? nullableStringList;
void main(List<String> arguments) {
  // nullSafeInt = nullableInt!;
  // print(nullSafeInt);
  nullSafeInt = nullableInt ?? 100;
  print(nullSafeInt);

  nullSafeInt.toString();
  nullableInt?.toString();

  var list = [1,2];
  List<int> list2 = [...list,6,7,8,9,10,...list];
  print(list2);

  List<String> names = ['Ali', 'Bilal', 'Ahmed',...?nullableStringList];
  var list3 = [1,2,3,4,5, if(list.length > 3) 6,7,8,9,10];
  print(list3);
  var list4 = [1,2,3,4,5, if(list.length > 3) 6 else 16,7,8,9,10];
  print(list4);
  var list5 = [for(int i =0; i<10000; i++) i];
  print(list5);
}

class Student {
  late int rollNo;
}
