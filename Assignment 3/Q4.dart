import 'dart:io';

void main() {
  double mark;

  print('Enter the exam score');
  mark = double.parse(stdin.readLineSync() ?? '0');
  if (mark >= 0 && mark <= 100) {
    if (mark >= 90) {
      print("Excellent! You got an A.");
    } else if (mark >= 80) {
      print("Very Good! You got a B.");
    } else if (mark >= 70) {
      print("Good! You got a C.");
    } else {
      print("You need improvement. You got a D.");
    }
  }
}
