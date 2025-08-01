class Student {
  String _name = '';
  double _grade = 0;
  String? _email;
  String? _address;
  String? _phone;
  static int _id = 1;
  int _studentId = 1;
  Student(String name, double grade) {
    this._studentId = _id++;
    this._grade = grade;
    this._name = name;
  }

  String get name => this._name;
  set name(String name) {
    this._name;
  }

  double get grade => this._grade;
  set grade(double grade) {
    _checkGrade(grade);
  }

  String? get email => this._email;
  set email(String? email) {
    _checkEmail(email);
  }

  String? get address => this._address;
  set address(String? address) {
    this._address = address;
  }

  String? get phone => this._phone;
  set phone(String? phone) {
    this._phone = phone;
  }

  bool isPassed() {
    if (_grade >= 60) {
      return true;
    } else {
      return false;
    }
  }

  void _checkGrade(grade) {
    if (_grade > 0 && _grade < 100) {
      this._grade = grade;
    } else {
      print('invalid grade');
    }
  }

  void _checkEmail(String? email) {
    if (email!.isNotEmpty && email.contains('@')) {
      this._email = email;
    } else {
      print('invalid Email');
    }
  }

  @override
  String toString() {
    return ' the student name is: $_name , the student phone is: $_phone, the student id  is: $_studentId ,the student address is : $_address ,the student email is:$_email, the student grade is :$_grade ,is passed ${isPassed() ? 'yes' : 'No'}  ';
  }
}
