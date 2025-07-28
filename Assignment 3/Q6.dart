import 'dart:io';

void main() {
  print('Enter UserName');
  String userName = stdin.readLineSync() ?? '';
    print('Enter password');

  String passWord = stdin.readLineSync() ?? '';
    print('Enter role');

  String role = stdin.readLineSync() ?? '';
  if (userName.isNotEmpty && passWord.isNotEmpty && role.isNotEmpty) {
    if (role.toLowerCase() == 'admin' || role.toLowerCase() == 'user') {
      if (userName.toLowerCase() == 'admin') {
        if (passWord.toLowerCase() == 'admin@123') {
          print("Welcome Admin Manager! Full access granted.");
        } else {
          print("Access denied: Admin role required.");
        }
      } else if (userName.toLowerCase() == 'gust') {
        if (passWord.toLowerCase() == 'user@123') {
          print("Welcome Guest! Limited access granted.");
        } else {
          print("Incorrect password. Try again.");
        }
      } else {
        print("Unknown user.");
      }
    } else {
      print('Enter a valid role');
    }
  } else {
    print('fill all field');
  }
}
