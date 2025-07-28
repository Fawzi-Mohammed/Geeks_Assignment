void main() {
  registerUser(userName:'fawzi', email: 'fawzi@gmial.com');


}

void registerUser({required String userName, required String email}) {
  print('User $userName registered with email $email');
}
