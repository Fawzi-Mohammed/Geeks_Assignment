import 'dart:io';

void main() {
  bool isPassword = true;
  while (isPassword) {
    print('Enter password');

    String password = stdin.readLineSync() ?? '';
    if (password.isNotEmpty) {
      if (password.toLowerCase() == 'admin123') {
        print("Access granted.");
        isPassword = false;
      } else {
        print('enter valid password');
      }
    }
  }
}
