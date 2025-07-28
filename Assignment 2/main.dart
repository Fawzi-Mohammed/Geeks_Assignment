//import 'dart:io';

import 'dart:io';

void main() {
  //   print('enter the number of hours');
  //   int numberOfHours = int.parse(stdin.readLineSync() ?? '0');
  //   int numberOfDays = numberOfHours ~/ 24;
  //   int remainingHours = numberOfHours % 24;
  //   print('in $numberOfHours Hours you have $numberOfDays and $remainingHours');
  for (int i = 0; i < 5; i++) {
    for (int j = i; j < 5;j++) {
      stdout.write('*');
    }
    print('');
  }
}
