import 'dart:io';

void main() {
  print('enter a number of day');
  int numDay = int.parse(stdin.readLineSync() ?? '0');
  switch (numDay) {
    case 1:
      print('Sunday');
    case 2:
      print('Monday');
    case 3:
      print('Tuesday');
    case 4:
      print('Wednesday');
    case 5:
      print('Thursday');
    case 6:
      print('Friday');
    case 7:
      print('Saturday');
    default:
      print('Invalid input');
  }
}
