import 'dart:io';

main() {
  print(" Enter your age !");
  int age = int.parse(stdin.readLineSync() ?? '0');
  if (age >= 18) {
    print("You are eligible to vote.");
  } else {
    print("You are not eligible to vote yet.");
  }
  
}
