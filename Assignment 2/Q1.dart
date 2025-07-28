import 'dart:io';

void main() {
  //Q1:
  double num1 = 5.7;
  int num2 = 8;
  int castedNum1 = num1.toInt();
  int bitwiseNotNum1 = ~castedNum1;
  print('~$castedNum1 = $bitwiseNotNum1');
  bool condition =
      ((castedNum1 % 2 != num2 % 2) || (castedNum1 > 0 && num2 > 0));
  print('Condition (odd/even or both positive): $condition');
  castedNum1++;
  num2--;
    print('After increment/decrement: num1 = $castedNum1, num2 = $num2');
      print(castedNum1 > num2 ? 'True: num1 > num2' : 'False: num1 <= num2');

      

}
