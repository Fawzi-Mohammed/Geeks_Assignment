import 'dart:io';

void main() {
  print('Enter number of days');
  int InputDays = int.parse(stdin.readLineSync() ?? "0");
  int years = InputDays ~/ 365;
  int rDays = InputDays % 365;
  int months = rDays ~/ 30;
  int days = rDays % 30;
    print("$InputDays days => Years: $years , Months: $months , Days: $days");

}
